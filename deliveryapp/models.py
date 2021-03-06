from django.contrib.auth.models import AbstractUser
from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models
from rest_framework import serializers
import string


# Create your models here.
def validate_number(num):
    for n in num:
        if n.isalpha():
            raise serializers.ValidationError("Invalid")
    return num


def validate_info(info):
    for n in info:
        if n.isdigit():
            raise serializers.ValidationError("Họ tên không được chứa chữ số")

    return info


def validate_phone(phone):
    if len(phone) != 10:
        raise serializers.ValidationError("Phone number invalid")
    for n in phone:
        if n.isalpha():
            raise serializers.ValidationError("Phone is a numberic")

    return phone


class User(AbstractUser):
    sex = (("Male", 'Male'), ("Female", 'Female'), ("Other", 'Other'))

    first_name = models.CharField(max_length=30, null=True, validators=[validate_info])
    last_name = models.CharField(max_length=30, null=True, validators=[validate_info])
    phone = models.CharField(max_length=10, null=True, validators=[validate_phone])
    gender = models.CharField(max_length=15, choices=sex, default=0)
    avatar = models.ImageField(upload_to='static/avatar/%Y/%m')
    choice = models.PositiveIntegerField(default=0, null=True,
                                         validators=[
                                             MaxValueValidator(
                                                 limit_value=2, message="Chọn 2 nếu bạn là shipper"),
                                             MinValueValidator(
                                                 limit_value=1, message="Chọn 1 nếu bạn là khách hàng")
                                         ])
    is_shipper = models.BooleanField(default=False)

    def __str__(self):
        return "username: {}".format(self.username)


def validate_id(id_number):
    for n in id_number:
        if n.isalpha():
            raise serializers.ValidationError("Id is a numberic")
    return id_number


class Shipper(models.Model):
    account = models.OneToOneField(User, related_name="shipper_account", on_delete=models.CASCADE, primary_key=True)
    id_number = models.CharField(max_length=12, null=False, unique=True, validators=[validate_id])
    id_front_image = models.ImageField(upload_to='static/identity/%Y/%m')
    id_back_image = models.ImageField(upload_to='static/identity/%Y/%m')

    def __str__(self):
        return "Shipper ID: {}".format(self.id_number)


# class HiringShipper(models.Model):
# first_name = models.CharField(max_length=30, null=True, blank=True)
# last_name = models.CharField(max_length=30, null=True, blank=True)
# id_number =

class Service(models.Model):
    name = models.CharField(max_length=250, null=True, blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)
    price = models.DecimalField(max_digits=14, decimal_places=2, null=True)

    # def earning_float(self):
    #   return float(self.price)

    def __str__(self):
        return self.name


class ProductCategory(models.Model):
    name = models.CharField(max_length=100, null=True, blank=True)
    active = models.BooleanField(default=True)

    def __str__(self):
        return self.name


class Order(models.Model):
    NOTSHIP, SHIPPING, CHECKED = range(3)
    STATE = [
        (NOTSHIP, 'CHƯA GIAO HÀNG'),
        (SHIPPING, 'ĐANG GIAO HÀNG'),
        (CHECKED, 'ĐÃ GIAO')
    ]

    ZALO, MOMO, CASH = range(3)
    PAY_METHOD = [
        (ZALO, 'Zalo pay'),
        (MOMO, 'Ví MOMO'),
        (CASH, 'TIỀN MẶT')
    ]
    customer = models.ForeignKey(User, related_name="customer_name", on_delete=models.PROTECT)
    shipper = models.ForeignKey(User, related_name="shipper_name", on_delete=models.PROTECT)
    auction = models.ForeignKey('Auction', on_delete=models.PROTECT, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    pickup_address = models.CharField(max_length=250, null=True, blank=True)
    ship_address = models.CharField(max_length=250, null=True, blank=True)
    active = models.BooleanField(default=True)
    status = models.PositiveSmallIntegerField(choices=STATE, default=NOTSHIP)
    total_price = models.DecimalField(max_digits=14, decimal_places=2, null=True, default=None)
    pay_method = models.PositiveSmallIntegerField(choices=PAY_METHOD, default=CASH)
    product_cate = models.ForeignKey(ProductCategory, on_delete=models.PROTECT, null=True)
    service_cate = models.ForeignKey(Service, on_delete=models.PROTECT, null=True)

    # def earning_float(self):
    #   return float(self.total_price)

    def __str__(self):
        return "Customer: {}\nShipper: {}, \nShip address: {}, \nCreated Date: {}, \nStatus: {},\n" \
               "Total price: {}, \nPay method: {}".format(self.customer.last_name + " " + self.customer.first_name,
                                                          self.shipper.last_name + " " + self.shipper.first_name,
                                                          self.ship_address,
                                                          self.created_date,
                                                          self.status,
                                                          self.total_price,
                                                          self.pay_method
                                                          )


class OrderDetail(models.Model):
    order = models.OneToOneField(Order, related_name="order_detail", on_delete=models.CASCADE, primary_key=True)
    customer_received = models.CharField(max_length=100, null=True, blank=True)
    phone = models.CharField(max_length=10, null=True, validators=[validate_phone])

    def __str__(self):
        return "Order Detail - Order ID {}".format(self.order.id)


class OrderPost(models.Model):
    class Meta:
        ordering = ['created_date']

    creator = models.ForeignKey(User, on_delete=models.CASCADE)
    product_cate = models.ForeignKey(ProductCategory, on_delete=models.PROTECT, null=True)
    service_cate = models.ForeignKey(Service, on_delete=models.PROTECT, null=True)
    active = models.BooleanField(default=True)
    content = models.TextField(null=True)
    pickup_address = models.CharField(max_length=250, null=False, blank=True)
    ship_address = models.CharField(max_length=250, null=False, blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    is_checked = models.BooleanField(default=False)
    customer_received = models.CharField(max_length=100, null=True, blank=True)
    phone = models.CharField(max_length=10, null=True, validators=[validate_phone])

    def __str__(self):
        return "Creator: {}\n Active: {}\nCreated date: {}\n Status: {}".format(
            self.creator.last_name + " " + self.creator.first_name,
            self.active,
            self.created_date,
            self.is_checked
        )


class Auction(models.Model):
    class Meta:
        unique_together = ['post', 'shipper']
        ordering = ['post', 'created_date']

    post = models.ForeignKey(OrderPost, related_name="auctions", on_delete=models.CASCADE)
    shipper = models.ForeignKey(User, related_name="auction_shipper", on_delete=models.CASCADE)
    ship_cost = models.DecimalField(max_digits=14, decimal_places=2, null=False)
    is_winner = models.BooleanField(default=False, null=True)
    active = models.BooleanField(null=True, default=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "Shipper: {}\nCost: {}".format(self.shipper.last_name + " " + self.shipper.first_name,
                                              self.ship_cost)


class Rating(models.Model):
    class Meta:
        unique_together = ['customer', 'shipper']
        ordering = ['created_date', 'updated_date']

    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    customer = models.ForeignKey(User, related_name="customer_rating", on_delete=models.PROTECT, default=None)
    shipper = models.ForeignKey(User, related_name="rating_shipper", on_delete=models.PROTECT, default=None)
    content = models.TextField(null=True)
    rate = models.PositiveIntegerField(default=1, null=False,
                                       validators=[
                                           MaxValueValidator(
                                               limit_value=5, message="Đánh giá 1-5"),
                                           MinValueValidator(
                                               limit_value=1, message="Đánh giá 1-5")
                                       ])

    def __str__(self):
        return "Customer: {},\nshipper: {},\nComment: {},\nrate: {},\n".format(
            self.customer.last_name + " " + self.customer.first_name,
            self.shipper.last_name + " " + self.shipper.first_name,
            self.content,
            self.rate
        )
