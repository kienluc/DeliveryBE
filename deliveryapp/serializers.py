from rest_framework.serializers import ModelSerializer
from .models import *
from rest_framework.fields import ImageField


# User Serializer


class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'phone', 'email', 'gender', 'avatar', 'username', 'password']
        extra_kwargs = {
            'password': {
                'write_only': True,
                'style': {'input_type': 'password'}
            },
        }

    def create(self, validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        return user

    def update(self, instance, validated_data):
        for attr, value in validated_data.items():
            if attr == 'password':
                instance.set_password(value)
            else:
                setattr(instance, attr, value)
        instance.save()
        return instance


# Shipper Serializer

class ShipperSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'phone', 'email', 'gender', 'avatar']
        read_only_fields = ["date_joined", 'id', 'username']


# Product Serializer


class ProductCategorySerializer(ModelSerializer):
    class Meta:
        model = ProductCategory
        fields = ['id', 'name']


# Order Serializer


class OrderSerializer(ModelSerializer):
    class Meta:
        model = Order
        fields = ['customer', 'shipper', 'pickup_address', 'ship_address',
                  'total_price', 'pay_method', 'status', 'product_cate', 'service_cate']


# Order Post Serializer


class OrderPostSerializer(ModelSerializer):
    # creator = UserSerializer(required=True)

    class Meta:
        model = OrderPost
        fields = ['creator', 'pickup_address', 'ship_address',
                  'content', 'service_cate',
                  'product_cate', 'active']
        read_only_fields = ['id', 'customer', 'active', "created_date", 'update_date']


# Auction Serializer


class AuctionSerializer(ModelSerializer):
    #  shipper = UserSerializer(required=True)
    #  post = OrderPostSerializer(required=True)

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
    class Meta:
        model = RatingCreateSerializer.Meta.model
        fields = RatingCreateSerializer.Meta.fields
        read_only_fields = ['id', 'customer', 'shipper']
