from django.shortcuts import render
from rest_framework import viewsets, permissions, status, generics
from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth.models import Group
from .models import *
from .serializers import *
from rest_framework.decorators import action
from rest_framework.parsers import MultiPartParser
from .pagination import BasePaginator
from rest_framework.exceptions import PermissionDenied
from django.conf import settings
from rest_framework.exceptions import ValidationError
from django.db import IntegrityError


# Create your views here.

# UserRegisterView


class UserViewSet(viewsets.ViewSet,
                  generics.CreateAPIView,
                  generics.UpdateAPIView,
                  generics.ListAPIView):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerializer
    parser_classes = [MultiPartParser, ]

    def get_permissions(self):
        if self.action == 'current-user':
            return [permissions.IsAuthenticated(), ]

        return [permissions.AllowAny(), ]

    @action(methods=['get'], detail=False, url_path='current-user')
    def current_user(self, request):
        return Response(self.get_serializer(request.user).data, status=status.HTTP_200_OK)

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        instance = serializer.save()
        headers = self.get_success_headers(instance)
        return Response(UserSerializer(instance).data, status=status.HTTP_201_CREATED, headers=headers)

    def update(self, request, *args, **kwargs):
        if str(request.user.id) == kwargs.get("pk"):
            return super().update(request, *args, **kwargs)
        raise PermissionDenied()


class ShipperViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.CreateAPIView,
                     generics.RetrieveAPIView):
    queryset = User.objects.filter(is_active=True)

    # permission_classes = [permissions.IsAuthenticated]
    # serializer_class = ShipperSerializer
    # pagination_class = BasePaginator

    def get_permissions(self):
        if self.action in ['create', 'list']:
            return [permissions.AllowAny(), ]

        return [permissions.IsAuthenticated(), ]

    def get_serializer_class(self):
        if self.action == 'create':
            return SaveShipperSerializer

        return ShipperSerializer

    def get_queryset(self):
        group = Group.objects.get(name='shipper')
        shippers = group.user_set.filter(is_active=True)
        return shippers

    def retrieve(self, request, *args, **kwargs):
        shipper = self.get_object()
        if shipper.groups.filter(name='shipper').exists():
            return super().retrieve(self, request, *args, **kwargs)
        return Response(status=status.HTTP_404_NOT_FOUND)

    @action(methods=['get'], detail=True, url_path="average-rate", url_name='average-rate')
    def average_rate(self, request, *args, **kwargs):
        shipper = self.get_object()
        list_rate = shipper.rating_shipper.all()
        average = 0
        if len(list_rate) > 0:

            for i in list_rate:
                average = average + i.rate

            average = round(average / len(list_rate), 1)

        return Response({'average': average}, status=status.HTTP_200_OK)


# ProductCategory View


class ProductCategoryViewSet(viewsets.ViewSet,
                             generics.ListAPIView,
                             generics.CreateAPIView,
                             generics.RetrieveAPIView):
    queryset = ProductCategory.objects.filter(active=True)
    serializer_class = ProductCategorySerializer

    # permission_classes = [permissions.IsAuthenticated]

    # def get_permissions(self):
    #  if self.action == 'list':
    #     return [permissions.AllowAny(), ]

    # return [permissions.IsAuthenticated(), ]


# Service View


class ServiceViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.CreateAPIView,
                     generics.RetrieveAPIView):
    queryset = Service.objects.filter(active=True)
    serializer_class = ServiceSerializer


# Order  View


class OrderViewSet(viewsets.ViewSet,
                   generics.ListAPIView,
                   generics.CreateAPIView,
                   generics.RetrieveAPIView,
                   generics.UpdateAPIView):
    queryset = Order.objects.filter(active=True)

    # pagination_class = BasePaginator
    # serializer_class = OrderSerializer

    # def get_queryset(self):
    #     order = self.queryset
    #     if self.request.user.groups.filter(name='shipper').exists():
    #         return order.filter(auction__shipper_id=self.request.user.pk)
    #     return order.filter(auction__post__creator_id=self.request.user.pk)

    def get_serializer_class(self):
        if self.action == "create":
            return OrderCreateSerializer

        return OrderSerializer

    def get_permissions(self):
        if self.action in ['create', 'update', 'partial_update', 'list']:
            return [permissions.IsAuthenticated(), ]
        # if self.action == "update-status":
        #     return [PermissionUpDateStatusOrder(),]
        return [permissions.AllowAny(), ]

    def list(self, request, *args, **kwargs):
        if request.user.groups.filter(name='customer').exists():
            order = Order.objects.filter(customer_id=request.user.pk)
        elif request.user.groups.filter(name='shipper').exists():
            order = Order.objects.filter(shipper_id=request.user.pk)

        return Response(OrderSerializer(order, many=True).data, status=status.HTTP_200_OK)

    def create(self, request, *args, **kwargs):
        if request.user.groups.filter(name='customer').exists():
            return super().create(request, *args, **kwargs)

        raise PermissionDenied()

    # def retrieve(self, request, *args, **kwargs):
    #     order = self.get_object()
    #     if request.user.pk == order.customer.pk or request.user.pk == order.shipper.pk:
    #         return super().retrieve(request, *args, **kwargs)
    #     raise PermissionDenied()

    def partial_update(self, request, *args, **kwargs):
        order = self.get_object()
        if request.user.groups.filter(name='customer').exists() and request.user.id == order.customer.id:
            return super().partial_update(request, *args, **kwargs)

        raise ValidationError(detail="You are not allowed to change the order")
    """
    0-1-2 chưa giao - đang giao - đã giao
    """
    @action(methods=["PATCH"], detail=True, url_name='update-order', url_path='update-order')
    def update_status(self, request, *args, **kwargs):
        order = self.get_object()
        if request.user.groups.filter(name='shipper').exists() and request.user.id == order.shipper.id:
            ser = OrderSerializer(order, data={'status': request.data.get('status')}, partial=True)
            ser.is_valid(raise_exception=True)
            ser.save()
            header = self.get_success_headers(ser.data)
            if order.status == 2:
                order.customer.email_user(subject="[Delivery][Order ship completely]",
                                          message='Xác nhận đơn hàng mã đơn "{}" của bạn đã được giao').format(order.id)
            return Response(ser.data, status=status.HTTP_200_OK, headers=header)

        raise ValidationError("You are not shipper of this order")

    @action(methods=['post'], detail=True, url_path='hide-order', url_name='hide-order')
    def hide_order(self, request, pk):
        try:
            order = Order.objects.get(pk=pk)
            order.active = False
            order.save()
        except order.DoesNotExits:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=OrderPostSerializer(order, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    @action(methods=['get'], detail=True, url_path='show-order-detail', url_name='show-order-detail')
    def show_order_detail(self, request, pk):
        if request.user == self.get_object().customer or request.user == self.get_object().shipper:
            order_detail = OrderDetail.objects.filter(order__id=pk)
            return Response(OrderDetailSerializer(order_detail, many=True).data, status=status.HTTP_200_OK)
        return Response(status=status.HTTP_403_FORBIDDEN)


# OrderDetail View


class OrderDetailViewSet(viewsets.ViewSet,
                         generics.RetrieveAPIView,
                         generics.CreateAPIView):
    queryset = OrderDetail.objects.all()

    def get_serializer_class(self):
        if self.action == "create":
            return OrderDetailCreateSerializer

        return OrderDetailSerializer

    def get_permissions(self):
        if self.action in ['retrieve']:
            return [permissions.IsAuthenticated(), ]

        return [permissions.AllowAny(), ]


# OrderPost View


class OrderPostViewSet(viewsets.ModelViewSet):
    queryset = OrderPost.objects.filter(active=True)

    # serializer_class = OrderPostSerializer

    def get_serializer_class(self):
        if self.action == "create":
            return OrderPostCreateSerializer

        return OrderPostSerializer

    def get_permissions(self):
        if self.action in ['add-auction', 'create', 'list']:
            return [permissions.IsAuthenticated(), ]
        """
            phân quyền:
                - Shipper vào đấu giá
                - Người tạo bài vào xem tất cả bài đấu giá
                - Shipper chỉ xem ddc đấu giá của mình
                - ....
        """
        return [permissions.AllowAny(), ]

    def create(self, request, *args, **kwargs):
        if request.user.groups.filter(name='customer').exists():
            return super().create(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def retrieve(self, request, *args, **kwargs):
        post = self.get_object()
        if request.user.pk == post.creator.pk or request.user.groups.filter(name='shipper').exists():
            return super().retrieve(request, *args, **kwargs)
        raise PermissionDenied()

    def partial_update(self, request, *args, **kwargs):
        post = self.get_object()
        if request.user.groups.filter(name='customer').exists() and request.user.id == post.creator.id:
            return super().partial_update(request, *args, **kwargs)

        raise ValidationError(detail="You are not allowed to change the post")

    def destroy(self, request, *args, **kwargs):
        """
            chỉ user tạo bài được xóa
        :param request:
        :param args:
        :param kwargs:
        :return:
        """
        post = self.get_object()
        if not post.auctions.filter(is_winner=True).exists() and post.creator.id == request.user.id:
            return super().destroy(request, *args, **kwargs)

        raise PermissionDenied()

    @action(methods=['post'], detail=True, url_path='hide-post',
            url_name='hide-post')
    def hide_post(self, request, pk):
        try:
            post = OrderPost.objects.get(pk=pk)
            post.active = False
            post.save()
        except post.DoesNotExits:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=OrderPostSerializer(post, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    """ 
        All action above and add-auction below has been checked
    """

    @action(methods=['post'], detail=True, url_path='add-auction', url_name='add-auction')
    def add_auction(self, request, pk):
        post = self.get_object()
        if not post.auctions.filter(is_winner=True).exists() and \
                request.user.groups.filter(name='shipper').exists():
            auc = Auction.objects.create(post=self.get_object(),
                                         shipper=request.user,
                                         ship_cost=request.data.get('ship_cost'))
            post.creator.email_user(subject="[Delivery][New Auction]",
                                    message='Bài đăng của bạn có một đấu giá mới')
            return Response(AuctionSerializer(auc).data, status=status.HTTP_201_CREATED)

        raise ValidationError(detail="You are not shipper")

    @action(methods=['get'], detail=True, url_path='show-auction', url_name='show-auction')
    def show_auction(self, request, pk):
        if request.user == self.get_object().creator or request.user.groups.filter(name='shipper').exists():
            post = self.get_object()
            auctions = post.auctions.filter(active=True)
            return Response(AuctionSerializer(auctions, many=True).data, status=status.HTTP_200_OK)
        return Response(status=status.HTTP_403_FORBIDDEN)

    @action(methods=['post'], detail=True, url_path='create-order', url_name='create-order')
    def create_order(self, request, pk):
        if request.user == self.get_object().creator:
            post = self.get_object()
            auc = post.auctions.filter(is_winner=True).first()
            order = Order.objects.create(customer=post.creator,
                                         shipper=auc.shipper,
                                         pickup_address=post.pickup_address,
                                         ship_address=post.ship_address,
                                         total_price=auc.ship_cost,
                                         product_cate=post.product_cate,
                                         service_cate=post.service_cate)
            post.is_checked = True
            post.save()
            auc.shipper.email_user(subject="[Delivery][Auction Success]",
                                   message='Bạn là người đấu giá thắng - hãy truy cập hệ thống để kiểm tra danh sách '
                                           'đơn hàng')
            return Response(OrderSerializer(order).data, status=status.HTTP_201_CREATED)

        raise ValidationError(detail="Invalid")


# Auction View


class AuctionViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.UpdateAPIView,
                     generics.DestroyAPIView,
                     generics.RetrieveAPIView):
    """ checked
    """
    queryset = Auction.objects.filter(active=True)
    serializer_class = AuctionSerializer
    permission_classes = [permissions.IsAuthenticated]

    # def get(self, request, *args, **kwargs):
    #     auction = self.get_object()
    #     if request.user.id == auction.post.creator.id:
    #         return super().list(request, *args, **kwargs)
    #
    #     raise ValidationError(detail="You are not allowed to do this action")

    # def get_permissions(self):
    #     if self.action == "retrieve":
    #         return [PermissionViewDetailAuction(),] #quyền xem chi tiết đấu giá - Người sở hữu bài
    #     if self.action == "list":
    #         return [PermissionViewListAuctionOfShipper(),] #quyền xem danh sách đấu giá - Người sở hữu bài đăng
    #     return [PermissionAuction(),]

    def destroy(self, request, *args, **kwargs):
        auction = self.get_object()
        if not auction.post.auctions.filter(is_winner=True).exists() and request.user.id == auction.shipper.id:
            return super().destroy(request, *args, **kwargs)
        raise PermissionDenied()

    def update(self, request, *args, **kwargs):
        """
            body:
                ship_cost
                post: (id_post) integer
                shipper: (shipper_id) integer
        :param request:
        :param args:
        :param kwargs:
        :return:
        """
        auction = self.get_object()
        if not auction.post.auctions.filter(is_winner=True).exists() \
                and request.user.id == auction.shipper.id:
            return super().update(request, *args, **kwargs)
        raise PermissionDenied()

    def partial_update(self, request, *args, **kwargs):
        auction = self.get_object()
        if not auction.post.auctions.filter(is_winner=True).exists() \
                and request.user.id == auction.shipper.id:
            return super().partial_update(request, *args, **kwargs)

        raise ValidationError(detail="You are not allowed to change the auction")

    def retrieve(self, request, *args, **kwargs):
        auction = self.get_object()
        if not auction.post.auctions.filter(is_winner=True).exists() \
                and request.user.id == auction.shipper.id or request.user.id == auction.post.creator.id:
            return super().retrieve(request, *args, **kwargs)
        raise ValidationError(detail="Your are not allowed to do this action")

    @action(methods=['post'], detail=True, url_path='confirm-auction', url_name='confirm-auction')
    def confirm_auction(self, request, pk):
        try:
            auction = Auction.objects.get(pk=pk)
            auction.is_winner = True
            auction.save()

        except auction.DoesNotExits:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=AuctionSerializer(auction, context={'request': request}).data,
                        status=status.HTTP_200_OK)


# Rating View


class RatingViewSet(viewsets.ViewSet,
                    generics.CreateAPIView,
                    generics.ListAPIView):
    queryset = Rating.objects.all()
    # serializer_class = RatingSerializer
    """ checked
    """

    def get_permissions(self):
        if self.action in ['create', 'update', 'partial_update']:
            return [permissions.IsAuthenticated(), ]

        return [permissions.AllowAny(), ]

    def get_serializer_class(self):
        if self.action in ['list', 'retrieve']:
            return RatingSerializer

        return RatingCreateSerializer

    def get_queryset(self):
        rate = self.queryset.order_by('-created_date')
        shipper = self.request.query_params.get('shipper')
        if shipper is not None:
            try:
                rate = rate.filter(shipper=shipper)
            except ValueError:
                raise ValidationError(detail="shipper id invalid")
        return rate

    def create(self, request, *args, **kwargs):
        """
        Body: rate, content, order_id

        """

        try:
            order_id = request.data.get('order_id')
            order = Order.objects.filter(pk=order_id)
        except:
            raise ValidationError(detail='order_id input invalid')

        if order.exists():
            if order.first().customer == request.user:
                ser = RatingCreateSerializer(data=request.data)
                ser.is_valid(raise_exception=True)
                try:
                    ser.save(**{'customer': request.user,
                                'shipper': order.first().shipper})
                except IntegrityError:
                    raise ValidationError(detail="you already rate this shipper!")
                headers = self.get_success_headers(ser.data)
                return Response(ser.data, status=status.HTTP_201_CREATED, headers=headers)

        return Response(status=status.HTTP_404_NOT_FOUND)
    """
        đánh giá 1 lần - không sửa
    """
    # def update(self, request, *args, **kwargs):
    #     rate = self.get_object()
    #     if request.user.pk == rate.customer.pk:
    #         partial = kwargs.pop('partial', False)
    #         instance = self.get_object()
    #         serializer = self.get_serializer(instance, data=request.data, partial=partial)
    #         serializer.is_valid(raise_exception=True)
    #         self.perform_update(serializer)
    #
    #         if getattr(instance, '_prefetched_objects_cache', None):
    #             # If 'prefetch_related' has been applied to a queryset, we need to
    #             # forcibly invalidate the prefetch cache on the instance.
    #             instance._prefetched_objects_cache = {}
    #
    #         return Response(serializer.data)
    #     raise PermissionDenied()
    #
    # def perform_update(self, serializer):
    #     serializer.save()
    #
    # def partial_update(self, request, *args, **kwargs):
    #     rate = self.get_object()
    #     if request.user.pk == rate.customer.pk:
    #         kwargs['partial'] = True
    #         return self.update(request, *args, **kwargs)
    #     raise PermissionDenied()


class OauthInfo(APIView):
    def get(self, request):
        return Response(settings.OAUTH2_INFO, status=status.HTTP_200_OK)

# def index(request):
#  return render(request, template_name='index.html', context={
#     'name': 'LUC TUAN KIEN'
# })
