from django.db import models

# Create your models here.
class Tag(models.Model):
    nd = models.CharField(max_length=255)
    soLuong = models.IntegerField(default=1)
    create_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.nd