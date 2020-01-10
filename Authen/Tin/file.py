import os
import django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Authen.settings");
django.setup()

from Tin.models import Tin
from TheLoai.models import TheLoai
from LoaiTin.models import LoaiTin

theloai = TheLoai.objects.all()
lt = dict()
for tl in theloai:
    lt[tl.ten] = LoaiTin.objects.filter(idTheLoai=tl.pk)

for key, value in lt.items():
    for v in value:
        print(v)
    print(key, value)