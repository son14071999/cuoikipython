from django.db import models
from django.db.models.signals import pre_save

from TaiKhoan.models import TaiKhoan
from django.utils.text import slugify


# Create your models here.

class TheLoai(models.Model):
    ten = models.CharField(max_length=255)
    tenKhongDau = models.SlugField(max_length=255, null=True, blank=True)

    def __str__(self):
        return self.ten

    def save(self, *args, **kwargs):
        self.tenKhongDau = slugify(self.ten)
        return super(TheLoai, self).save(*args, **kwargs)


class LoaiTin(models.Model):
    ten = models.CharField(max_length=255)
    tenKhongDau = models.SlugField(max_length=255, null=True, blank=True)
    idTheLoai = models.ForeignKey(TheLoai, on_delete=models.CASCADE)

    def __str__(self):
        return self.ten

    def save(self, *args, **kwargs):
        self.tenKhongDau = slugify(self.ten)
        return super(LoaiTin, self).save(*args, **kwargs)


class Tin(models.Model):
    tieuDe = models.TextField()
    tieuDeKhongDau = models.SlugField(max_length=255, null=True, blank=True)
    ndTomTat = models.TextField()
    nd = models.TextField()
    id_tl = models.ForeignKey(TheLoai, on_delete=models.CASCADE)
    id_lt = models.ForeignKey(LoaiTin, on_delete=models.CASCADE)
    anh = models.ImageField(upload_to='images/%y/%m/%d/')
    view = models.IntegerField(default=0)
    tacGia = models.CharField(max_length=255, default='admin')
    create_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.tieuDe

    def save(self, *args, **kwargs):
        self.tieuDeKhongDau = slugify(self.tieuDe)
        return super(Tin, self).save(*args, **kwargs)


class Comment(models.Model):
    id_Tin = models.ForeignKey(Tin, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    gmail = models.EmailField()
    nd = models.TextField()
    creat_at = models.DateTimeField(auto_now_add=True)
    update_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.nd


def slug_generator(sender, instance, *args, **kwargs):
    if not instance.tenKhongDau:
        instance.tenKhongDau = 'SLUG'

    else:
        instance.tieuDeKhongDau = "SLUG"


def tin_slug_generator(sender, instance, *args, **kwargs):
    if not instance.tieuDeKhongDau:
        instance.tieuDeKhongDau = "SLUG"


pre_save.connect(slug_generator, sender=TheLoai)
pre_save.connect(slug_generator, sender=LoaiTin)
pre_save.connect(tin_slug_generator, sender=Tin)
