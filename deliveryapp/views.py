from django.shortcuts import render
from rest_framework import viewsets, permissions, status, generics
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import *
from .serializers import *
from rest_framework.decorators import action
from rest_framework.parsers import MultiPartParser
from .pagination import BasePaginator
from rest_framework.exceptions import PermissionDenied
from django.conf import settings
# Create your views here.

# UserRegisterView


class UserViewSet(viewsets.ViewSet,
                  generics.CreateAPIView,
                  generics.UpdateAPIView,
                  generics.RetrieveAPIView):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerializer
    parser_classes = [MultiPartParser, ]

    def get_permissions(self):
        if self.action == 'retrieve':
            return [permissions.IsAuthenticated(), ]

        return [permissions.AllowAny(), ]


class ShipperViewSet(viewsets.ViewSet,
                     generics.CreateAPIView,
                     generics.UpdateAPIView,
                     generics.RetrieveAPIView):
    queryset = Shipper.objects.filter(account_id__isnull=False)
    serializer_class = ShipperSerializer
    parser_classes = [MultiPartParser, ]


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
# Order  View


class OrderViewSet(viewsets.ViewSet,
                   generics.ListAPIView,
                   generics.CreateAPIView,
                   generics.RetrieveAPIView,
                   generics.UpdateAPIView):
    queryset = Order.objects.filter(active=True)
    pagination_class = BasePaginator
    serializer_class = OrderSerializer

# OrderPost View


class OrderPostViewSet(viewsets.ModelViewSet):
    queryset = OrderPost.objects.filter(active=True)
    serializer_class = OrderPostSerializer

    @action(methods= ['post', 'get'], detail=True, url_path='auctions', url_name='auctions')
    def add_auction(self, request, pk):
        if request.method == 'POST':
            post = self.get_object()
            if not post.auctions.filter(is_winner=True).exists():
                auc_serializer = AuctionSerializer(
                    data={'shipper': request.user.pk, 'post': post.pk, 'ship_cost': request.data.get('ship_cost')})
                auc_serializer.is_valid(raise_exception=True)

                auc_instance = auc_serializer.save()

              #  post.customer.email_user(subject= "[AbaShip][New Auction]",
               #                          message='bài đấu giá "{description}..." '
                #                                 'có một đấu giá mới'.format(description=post.description[0:50]))
                return Response(AuctionSerializer(auc_instance).data, status=status.HTTP_200_OK)
            raise PermissionDenied()

        if request.method == 'GET':
            if request.user == self.get_object().creator:
                post = self.get_object()
                auctions = post.auctions.filter(active=True)
                return Response(AuctionSerializer(auctions, many=True).data, status=status.HTTP_200_OK)
            return Response(status=status.HTTP_403_FORBIDDEN)

# Auction View


class AuctionViewSet(viewsets.ViewSet,
                     generics.CreateAPIView,
                     generics.ListAPIView,
                     generics.RetrieveAPIView,
                     generics.UpdateAPIView,
                     generics.DestroyAPIView):
    queryset = Auction.objects.filter(active=True)
    serializer_class = AuctionSerializer

# Rating View


class RatingViewSet(viewsets.ViewSet,
                    generics.ListAPIView,
                    generics.CreateAPIView,
                    generics.RetrieveAPIView,
                    generics.UpdateAPIView):
    queryset = Rating.objects.all()
    serializer_class = RatingSerializer


class OauthInfo(APIView):
    def get(self,request):
        return Response(settings.OAUTH2_INFO, status=status.HTTP_200_OK)
# def index(request):
#  return render(request, template_name='index.html', context={
#     'name': 'LUC TUAN KIEN'
# })


