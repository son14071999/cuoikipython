from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.
class TaiKhoan(AbstractUser):
    age = models.IntegerField(default=0)
    diaChi = models.TextField(default='')
    gioiTinh = models.CharField(max_length=255)
