from django.contrib import admin
from django.db.models import Sum
from django.template.response import TemplateResponse
from django.utils.safestring import mark_safe
from django.urls import path
from django.views.generic import TemplateView

from .models import *
from django.contrib.auth.models import Permission, Group


class DeliveryAppAdminSite(admin.AdminSite):
    site_header = "HỆ THỐNG QUẢN LÝ GIAO HÀNG"

    def get_urls(self):
        return [
                   path('delivery-stats/', self.delivery_stats),
                   path('delivery-stats/order-stats/', self.order_stats),
                   path('delivery-stats/rating-stats/', self.rating_stats)
               ] + super().get_urls()

    def delivery_stats(self, request):
        order_count = Order.objects.count()
        shipper_count = Shipper.objects.count()
        customer_count = User.objects.filter(is_shipper=False).count()
        post_count = OrderPost.objects.filter(is_checked=False).count()
        auction_count = Auction.objects.count()
        rate_count = Rating.objects.count()
        total = Order.objects.raw('''
        SELECT SUM(deliveryapp_order.total_price) as total, deliveryapp_order.id from deliveryapp_order''')
        return TemplateResponse(request, 'admin/delivery-stats.html', {
            'order_count': order_count,
            'shipper_count': shipper_count,
            'customer_count': customer_count,
            'post_count': post_count,
            'auction_count': auction_count,
            'rate_count': rate_count,
            'total': total
        })

    def order_stats(self, request):
        products = ProductCategory.objects.raw('''
                                        SELECT deliveryapp_productcategory.id,name, COUNT(deliveryapp_order.id) as quantity, 
                                        SUM(deliveryapp_order.total_price) as total
                                         from  deliveryapp_order inner join deliveryapp_productcategory
                                        where deliveryapp_productcategory.id = deliveryapp_order.product_cate_id

                                        group by name
                        ''')
        services = Service.objects.raw('''
                SELECT deliveryapp_service.id,name, COUNT(deliveryapp_order.id) as quantity, 
                  SUM(deliveryapp_order.total_price) as total
                 from  deliveryapp_order inner join deliveryapp_service
                  where deliveryapp_service.id = deliveryapp_order.service_cate_id

                    group by name
        ''')
        payments = Order.objects.raw('''
                    SELECT deliveryapp_order.id, deliveryapp_order.pay_method as method, COUNT(deliveryapp_order.id) as quantity, 
                          SUM(deliveryapp_order.total_price) as total
                          from  deliveryapp_order
                        group by deliveryapp_order.pay_method
        ''')
        return TemplateResponse(request, 'admin/order-stats.html', {
            'orders_products': products,
            'payments': payments,
            'services': services
        })

    def rating_stats(self, request):
        order_count = Order.objects.count()
        shipper_count = Shipper.objects.count()
        rate_count = Rating.objects.count()
        rates = Rating.objects.raw('''
                         SELECT deliveryapp_rating.id, rate, COUNT(deliveryapp_rating.id) as quantity
                            from  deliveryapp_rating
                            group by rate
        ''')
        return TemplateResponse(request, 'admin/rating-stats.html', {
            'order_count': order_count,
            'shipper_count': shipper_count,
            'rate_count': rate_count,
            'rates': rates
        })

    # class EditorChartView(TemplateView):
    #     template_name = 'admin/delivery-stats.html'
    #
    #     def get_context_data(self, **kwargs):
    #         context = super().get_context_data(**kwargs)
    #         context["qs"] = Order.objects.count()
    #         return context


admin_site = DeliveryAppAdminSite("myapp")


class ServiceAdmin(admin.ModelAdmin):
    list_display = ['id', 'created_date', 'name', 'price', 'active']
    search_fields = ['name', 'created_date', 'price']


class ProductAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'active']
    search_fields = ['name', 'active']


class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'username', 'first_name', 'last_name', 'gender', 'email', 'phone', 'avatar_review',
                    'date_joined', 'is_shipper']
    search_fields = ['first_name', 'last_name', 'phone', 'username', 'gender', 'email']
   # list_per_page = 5
    readonly_fields = ['avatar_review']
    list_filter = ['is_shipper']

    def avatar_review(self, user):
        return mark_safe(
            "<img src='/{img_url}' width='100px'/>".format(img_url=user.avatar.name))


class ShipperAdmin(admin.ModelAdmin):
    list_display = [ 'shipper_name', 'id_number', 'gender', 'email', 'shipper_phone', 'date_joined', 'account']
    search_fields = ['id_number', 'account__first_name', 'account__last_name', 'account__email',
                     'account__phone']
    readonly_fields = ['front_id', 'back_id']

    def shipper_name(self, shipper):
        return "%s %s" % (shipper.account.first_name, shipper.account.last_name)

    def gender(self, shipper):
        return "%s " % shipper.account.gender

    def email(self, shipper):
        return "%s " % shipper.account.email

    def shipper_phone(self, shipper):
        return "%s " % shipper.account.phone

    def date_joined(self, shipper):
        return "%s " % shipper.account.date_joined

    def front_id(self, shipper):
        return mark_safe(
            "<img src='/{img_url}' width='100px'/>".format(img_url=shipper.id_front_image.name))

    def back_id(self, shipper):
        return mark_safe(
            "<img src='/{img_url}' width='100px'/>".format(img_url=shipper.id_back_image.name))


class AuctionAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_id', 'shipper_name', 'ship_cost', 'is_winner', 'active', 'created_date', 'updated_date']
    search_fields = ['shipper__fisrt_name', 'shipper__last_name', 'ship_cost', 'active']
    list_filter = ['is_winner', 'post']

    def post_id(self, auction):
        return "%s " % auction.post.id

    def shipper_name(self, auction):
        return "%s %s" % (auction.shipper.first_name, auction.shipper.last_name)


class OrderAdmin(admin.ModelAdmin):
    list_display = ['id', 'created_date', 'customer_name', 'shipper_name', 'pickup_address', 'ship_address',
                    'product_cate', 'service_cate', 'total_price', 'pay_method', 'status']
    search_fields = ['customer__first_name', 'customer__last_name', 'shipper__first_name', 'shipper__last_name',
                     'ship_address', 'status']
    # list_per_page = 5
    list_filter = ['pay_method', 'status', 'service_cate', 'product_cate']

    def product_cate(self, order):
        return "%s " % order.product_cate.name

    def customer_name(self, order):
        return "%s %s" % (order.customer.first_name, order.customer.last_name)

    def shipper_name(self, order):
        return "%s %s" % (order.shipper.first_name, order.shipper.last_name)


class OrderDetailAdmin(admin.ModelAdmin):
    list_display = ['order_id', 'order', 'customer_received', 'phone']
    search_fields = ['order__id', 'order__pay_method', 'order__product_cate']

    def order_id(self, orderdetail):
        return "%s " % orderdetail.order.id


class OrderPostAdmin(admin.ModelAdmin):
    list_display = ['id', 'creator_name', 'content', 'pickup_address', 'ship_address',
                    'product_cate', 'service_cate', 'created_date', 'is_checked']
    search_fields = ['creator', 'ship_address', 'creator__first_name', 'creator__last_name']
    list_filter = ['is_checked']

    def creator_name(self, orderpost):
        return "%s %s" % (orderpost.creator.first_name, orderpost.creator.last_name)


class RatingAdmin(admin.ModelAdmin):
    list_display = ['id', 'customer_name', 'shipper_name', 'content', 'rate']
    search_fields = ['customer__first_name', 'customer__last_name', 'shipper__first_name', 'shipper__last_name',
                     'rate']

    def customer_name(self, rating):
        return "%s %s" % (rating.customer.first_name, rating.customer.last_name)

    def shipper_name(self, rating):
        return "%s %s" % (rating.shipper.first_name, rating.shipper.last_name)


# Register your models here.
admin_site.register(User, UserAdmin)
admin_site.register(Group)
admin_site.register(Permission)
admin_site.register(Shipper, ShipperAdmin)
admin_site.register(Service, ServiceAdmin)
admin_site.register(OrderPost, OrderPostAdmin)
admin_site.register(Order, OrderAdmin)
admin_site.register(ProductCategory, ProductAdmin)
admin_site.register(Rating, RatingAdmin)
admin_site.register(Auction, AuctionAdmin)
admin_site.register(OrderDetail, OrderDetailAdmin)
