from django.contrib import admin
from django.urls import path, include, re_path
from . import views
from .admin import admin_site
from rest_framework.routers import DefaultRouter
from drf_yasg import openapi
from drf_yasg.views import get_schema_view
from rest_framework import permissions


router = DefaultRouter()
router.register('ProductCategories', views.ProductCategoryViewSet)
router.register('users', views.UserViewSet)
router.register('shippers_info', views.ShipperViewSet)
router.register('orders', views.OrderViewSet)
router.register('order_posts', views.OrderPostViewSet)
router.register('auctions', views.AuctionViewSet)
router.register('ratings', views.RatingViewSet)


schema_view = get_schema_view(
    openapi.Info(
        title="Delivery app  API",
        default_version='v1',
        description="APIs for Delivery app FE",
        contact=openapi.Contact(email="luckien9a6@gmail.com"),
        license=openapi.License(name="Luc Tuan Kien@2021"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
)

urlpatterns = [
    re_path(r'^swagger(?P<format>\.json|\.yaml)$', schema_view.without_ui(cache_timeout=0), name='schema-json'),
    re_path(r'^swagger/$', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    re_path(r'^redoc/$', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),

    path('', include(router.urls)),
    path('admin/', admin_site.urls),
    path('oauth2-info/', views.OauthInfo.as_view()),
    path('o/', include('oauth2_provider.urls', namespace='oauth2_provider')),
    # path('', views.index, name="index")
]
