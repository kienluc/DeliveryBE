from django.contrib import admin
from django.utils.safestring import mark_safe

from .models import *
from django.contrib.auth.models import Permission, Group


class DeliveryAppAdminSite(admin.AdminSite):
    site_header = "HỆ THỐNG QUẢN LÝ GIAO HÀNG"


admin_site = DeliveryAppAdminSite("myapp")


class ServiceAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'created_date', 'active']
    search_fields = ['name', 'created_date']


class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'first_name', 'last_name', 'gender', 'email', 'phone', 'avatar_review', 'date_joined']
    search_fields = ['first_name', 'last_name', 'phone']
    readonly_fields = ['avatar_review']

    def avatar_review(self, user):
        return mark_safe(
            "<img src='/static/{img_url}' width='100px'/>".format(img_url=user.avatar.name))


class ShipperAdmin(admin.ModelAdmin):
    list_display = ['id_number', 'account']
    search_fields = ['id_number', 'account__first_name', 'account__last_name', 'account__email']
    readonly_fields = ['front_id', 'back_id']

    def front_id(self, shipper):
        return mark_safe(
            "<img src='/static/{img_url}' width='100px'/>".format(img_url=shipper.id_front_image.name))

    def back_id(self, shipper):
        return mark_safe(
            "<img src='/static/{img_url}' width='100px'/>".format(img_url=shipper.id_back_image.name))


class AuctionAdmin(admin.ModelAdmin):
    list_display = ['id', 'post', 'shipper', 'ship_cost', 'is_winner', 'active']
    search_fields = ['shipper__fisrt_name', 'shipper__last_name', 'ship_cost', 'active']


class OrderAdmin(admin.ModelAdmin):
    list_display = ['created_date', 'customer', 'shipper', 'ship_address', 'pay_method', 'status']
    search_fields = ['customer__first_name', 'customer__last_name', 'shipper__first_name', 'shipper__last_name',
                     'ship_address', 'status']


class OrderPostAdmin(admin.ModelAdmin):
    list_display = ['id', 'creator', 'content', 'ship_address', 'created_date', 'is_checked']
    search_fields = ['creator', 'ship_address', 'creator__first_name', 'creator__last_name']


class RatingAdmin(admin.ModelAdmin):
    list_display = ['customer', 'shipper', 'content', 'rate']
    search_fields = ['customer__first_name', 'customer__last_name', 'shipper__first_name', 'shipper__last_name',
                     'rate']


# Register your models here.
admin_site.register(User, UserAdmin)
admin_site.register(Group)
admin_site.register(Permission)
admin_site.register(Shipper, ShipperAdmin)
admin_site.register(Service, ServiceAdmin)
admin_site.register(OrderPost, OrderPostAdmin)
admin_site.register(Order, OrderAdmin)
admin_site.register(Rating, RatingAdmin)
admin_site.register(Auction, AuctionAdmin)
