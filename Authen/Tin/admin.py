from django.contrib import admin
from .models import Tin, Comment, TheLoai, LoaiTin

# Register your models here.
admin.site.register(Tin)
admin.site.register(Comment)
admin.site.register(TheLoai)
admin.site.register(LoaiTin)