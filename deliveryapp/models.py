from django.contrib.auth.models import AbstractUser
from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models


# Create your models here.


class User(AbstractUser):
    sex = (("Male", 'Male'), ("Female", 'Female'), ("Other", 'Other'))

    first_name = models.CharField(max_length=30, null=True, blank=True)
    last_name = models.CharField(max_length=30, null=True, blank=True)
    phone = models.CharField(max_length=10, null=True)
    gender = models.CharField(max_length=15, choices=sex, default=0)
    avatar = models.ImageField(upload_to='avatar/%Y/%m')

    def __str__(self):
        return "username: {}".format(self.username)


class Shipper(models.Model):
    account = models.OneToOneField(User, related_name="shipper_account", on_delete=models.CASCADE, primary_key=True)
    id_number = models.CharField(max_length=12, null=False, unique=True)
    id_front_image = models.ImageField(upload_to='identity/%Y/%m')
    id_back_image = models.ImageField(upload_to='identity/%Y/%m')

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
    shipper = models.OneToOneField(User, related_name="shipper_name", on_delete=models.PROTECT, primary_key=True)
    auction = models.ForeignKey('Auction', on_delete=models.PROTECT)
    created_date = models.DateTimeField(auto_now_add=True)
    ship_address = models.CharField(max_length=250, null=True, blank=True)
    active = models.BooleanField(default=True)
    status = models.PositiveSmallIntegerField(choices=STATE, default=NOTSHIP)
    pay_method = models.PositiveSmallIntegerField(choices=PAY_METHOD, default=CASH)
    service_cate = models.ForeignKey(Service, on_delete=models.PROTECT, null=True)

    def __str__(self):
        return "Customer: {}\nShipper: {}, \nShip address: {}, \nCreated Date: {}, \nStatus: {}, \nPay method: {}" \
            .format(self.customer.first_name + " " + self.customer.last_name,
                    self.shipper.first_name + " " + self.shipper.last_name,
                    self.ship_address,
                    self.created_date,
                    self.status,
                    self.pay_method
                    )


class OrderPost(models.Model):
    creator = models.ForeignKey(User, on_delete=models.CASCADE)
    active = models.BooleanField(default=True)
    content = models.TextField(null=True)
    ship_address = models.CharField(max_length=250, null=False, blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    is_checked = models.BooleanField(default=False)

    def __str__(self):
        return "Creator: {}\n Active: {}\nCreated date: {}\n Status: {}".format(
            self.creator.first_name + " " + self.creator.last_name,
            self.active,
            self.created_date,
            self.is_checked
        )


class Auction(models.Model):
    class Meta:
        unique_together = ['post', 'shipper']
        ordering = ['post']

    post = models.ForeignKey(OrderPost, related_name="auctions", on_delete=models.CASCADE)
    shipper = models.ForeignKey(User, related_name="shipper_info", on_delete=models.CASCADE)
    ship_cost = models.DecimalField(max_digits=14, decimal_places=2, null=False)
    is_winner = models.BooleanField(null=False)
    active = models.BooleanField(null=True)

    def __str__(self):
        return "Shipper: {}\nCost: {}".format(self.shipper.first_name + " " + self.shipper.last_name,
                                              self.ship_cost)


class Rating(models.Model):
    class Meta:
        unique_together = ['customer', 'shipper']

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
            self.customer.first_name + " " + self.customer.last_name,
            self.shipper.first_name + " " + self.shipper.last_name,
            self.content,
            self.rate
        )
