# Generated by Django 2.2.6 on 2019-12-12 10:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='LoaiTin',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ten', models.CharField(max_length=255)),
                ('tenKhongDau', models.SlugField(blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='TheLoai',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ten', models.CharField(db_index=True, max_length=255)),
                ('tenKhongDau', models.SlugField(max_length=255, unique=True)),
            ],
            options={
                'ordering': ('ten',),
            },
        ),
        migrations.CreateModel(
            name='Tin',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tieuDe', models.CharField(db_index=True, max_length=255)),
                ('tieuDeKhongDau', models.SlugField(max_length=150, unique=True)),
                ('ndTomTat', models.TextField()),
                ('nd', models.TextField()),
                ('anh', models.ImageField(upload_to='images/%y/%m/%d')),
                ('view', models.IntegerField(default=0)),
                ('tacGia', models.CharField(default='admin', max_length=255)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('id_lt', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Tin.LoaiTin')),
                ('id_tl', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Tin.TheLoai')),
            ],
        ),
        migrations.AddField(
            model_name='loaitin',
            name='idTheLoai',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Tin.TheLoai'),
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('gmail', models.CharField(max_length=255)),
                ('nd', models.TextField()),
                ('creat_at', models.DateTimeField(auto_now_add=True)),
                ('update_at', models.DateTimeField(auto_now=True)),
                ('id_Tin', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Tin.Tin')),
            ],
        ),
    ]
