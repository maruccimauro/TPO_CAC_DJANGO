# Generated by Django 4.2.7 on 2023-12-03 07:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0002_sectionoffercard'),
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('country', models.CharField(max_length=50)),
                ('city', models.CharField(max_length=50)),
                ('content', models.TextField()),
                ('hotel_name', models.CharField(max_length=50)),
                ('stars', models.IntegerField()),
                ('punctuation', models.FloatField()),
                ('opinions', models.IntegerField()),
                ('image1', models.ImageField(upload_to='section_hotels_images/')),
                ('image2', models.ImageField(upload_to='section_hotels_images/')),
                ('image3', models.ImageField(upload_to='section_hotels_images/')),
                ('image4', models.ImageField(upload_to='section_hotels_images/')),
            ],
        ),
        migrations.AlterField(
            model_name='sectionoffercard',
            name='city',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='sectionoffercard',
            name='country',
            field=models.CharField(max_length=50),
        ),
    ]