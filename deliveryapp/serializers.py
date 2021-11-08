from rest_framework.serializers import ModelSerializer
from .models import *
from django.contrib.auth.models import Group
from rest_framework import serializers

# User Serializer

"""
     trường choice: lựa chọn là shipper(2) hay customer(1)
     lấy choice và is_shipper từ Frontend
     is_shipper: hiển thị trên trang admin là shipper hay customer
"""


class UserSerializer(ModelSerializer):
    #   choice = serializers.IntegerField(max_value=2, min_value=1)

    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'phone', 'email', 'gender', 'is_shipper', 'choice',
                  'is_active', 'avatar', 'username', 'password']
        extra_kwargs = {
            'password': {
                'write_only': True,
                'style': {'input_type': 'password'}
            },
        }

    def create(self, validated_data):
        choice = validated_data.pop("choice", None)
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        #   return user
        return self.add_group_permission(user=user, choice=str(choice))

    def update(self, instance, validated_data):
        for attr, value in validated_data.items():
            if attr == 'password':
                instance.set_password(value)
            else:
                setattr(instance, attr, value)
        instance.save()
        return instance

    def add_group_permission(self, user, choice):
        if choice == '1':
            group = Group.objects.get(name='customer')
        elif choice == '2':
            group = Group.objects.get(name='shipper')
        user.groups.add(group)
        user.save()
        return user


# Shipper Serializer


class ShipperSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'phone', 'email', 'gender', 'avatar']
        read_only_fields = ["date_joined", 'id', 'username']


class SaveShipperSerializer(ModelSerializer):

    class Meta:
        model = Shipper
        fields = ['account', 'id_number', 'id_front_image', 'id_back_image']


# Product Serializer


class ProductCategorySerializer(ModelSerializer):
    class Meta:
        model = ProductCategory
        fields = ['id', 'name']

# Service Serializer


class ServiceSerializer(ModelSerializer):
    class Meta:
        model = Service
        fields = "__all__"

# Order Serializer


class OrderSerializer(ModelSerializer):
    customer = UserSerializer()
    shipper = UserSerializer()
    product_cate = ProductCategorySerializer()
    service_cate = ServiceSerializer()
    """
        0 1 2 Chưa giao - đang giao - đã giao 
        0 1 2 Zalopay -  momo - tiền mặt
    """
    def to_representation(self, instance):
        rep = super().to_representation(instance)
        rep['status'] = Order.STATE[rep.get('status')][1] or None
        rep['pay_method'] = Order.PAY_METHOD[rep.get('pay_method')][1] or None
        return rep

    class Meta:
        model = Order
        fields = ['id', 'customer', 'shipper', 'pickup_address', 'ship_address',
                  'total_price', 'pay_method', 'status', 'product_cate', 'service_cate']


class OrderCreateSerializer(ModelSerializer):
    def to_representation(self, instance):
        rep = super().to_representation(instance)
        rep['status'] = Order.STATE[rep.get('status')][1] or None
        rep['pay_method'] = Order.PAY_METHOD[rep.get('pay_method')][1] or None
        return rep

    class Meta:
        model = Order
        fields = ['id', 'customer', 'shipper', 'pickup_address', 'ship_address',
                  'total_price', 'pay_method', 'status', 'product_cate', 'service_cate']


# Order Detail Serializer
class OrderDetailSerializer(ModelSerializer):
    order = OrderSerializer()

    class Meta:
        model = OrderDetail
        fields = ['order', 'customer_received', 'phone']


class OrderDetailCreateSerializer(ModelSerializer):
    class Meta:
        model = OrderDetail
        fields = ['order', 'customer_received', 'phone']

# Order Post Serializer


class OrderPostSerializer(ModelSerializer):
    creator = UserSerializer()

    class Meta:
        model = OrderPost
        fields = ['id', 'creator', 'pickup_address', 'ship_address',
                  'content', 'service_cate',
                  'product_cate', 'active', 'customer_received', 'phone']
        read_only_fields = ['id', 'creator', 'active', "created_date", 'update_date']


class OrderPostCreateSerializer(ModelSerializer):
    class Meta:
        model = OrderPost
        fields = ['creator', 'pickup_address', 'ship_address',
                  'content', 'service_cate',
                  'product_cate', 'customer_received', 'phone']

# Auction Serializer


class AuctionSerializer(ModelSerializer):
    shipper = UserSerializer()
    post = OrderPostSerializer()

    class Meta:
        model = Auction
        fields = ['ship_cost', 'post', 'shipper', 'is_winner', 'created_date', 'updated_date']


class AuctionCreateSerializer(ModelSerializer):
    class Meta:
        model = Auction
        fields = ['ship_cost', 'post', 'shipper', 'is_winner', 'created_date', 'updated_date']


# Rating Serializer


class RatingCreateSerializer(ModelSerializer):
    class Meta:
        model = Rating
        fields = "__all__"
        read_only_fields = ['id', 'customer', 'shipper']


class RatingSerializer(RatingCreateSerializer):
    customer = UserSerializer()
    shipper = UserSerializer()

    class Meta:
        model = RatingCreateSerializer.Meta.model
        fields = RatingCreateSerializer.Meta.fields
        read_only_fields = ['id', 'customer', 'shipper']



