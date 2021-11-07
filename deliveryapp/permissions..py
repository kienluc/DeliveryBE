# from rest_framework.permissions import IsAuthenticated, IsAdminUser, OR
#
#
# class PermissionAddAuctionIntoPost(IsAuthenticated):
#     def has_permission(self, request, view):
#         return super(PermissionAddAuctionIntoPost, self).has_permission(request, view)\
#                 and request.user.has_perms(['abaShip.add_auction_into_post'])
#
#
# class PermissionUpDateStatusOrder(IsAuthenticated):
#     def has_permission(self, request, view):
#         return super().has_permission(request,view)\
#             and request.user.has_perm('abaShip.update_status_order')
