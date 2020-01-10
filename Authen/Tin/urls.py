from django.urls import path, include, re_path
from .views import getTrangchu, getTin, getTheloai, getLoaiTin,search
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static

app_name = 'tin'
urlpatterns = [
                  path('', getTrangchu.as_view(), name="getTrangChu"),
                  re_path(r'^theloai/(?P<theloaiPost>.+)/$', getTheloai.as_view(), name="getTheLoai"),
                  re_path(r'^loaitin/(?P<theloaiPost>.+)/(?P<tenloaitin>.+)$', getLoaiTin.as_view(), name="getLoaiTin"),
                  re_path(r'^tin/(?P<tentin>.+)$', getTin.as_view(), name="getTin"),
                  url(r'^search$',search, name='search'),
              ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)