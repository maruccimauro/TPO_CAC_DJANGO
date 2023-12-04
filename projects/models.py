from django.db import models

# Create your models here.
class Project(models.Model):
  title = models.CharField(max_length=200)
  description= models.TextField()
  technology = models.CharField(max_length=200)
  created_at = models.DateTimeField(auto_now_add=True)


class SectionOfferCard(models.Model):
    id = models.AutoField(primary_key=True)
    country = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    discount = models.IntegerField()
    image = models.ImageField(upload_to='section_offer_card_images/')

    def __str__(self):
        return f"{self.country} - {self.city}"

class City(models.Model):
    id = models.AutoField(primary_key=True)
    country = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    content = models.TextField()
    hotel_name = models.CharField(max_length=50)
    stars = models.IntegerField()
    punctuation = models.FloatField()
    opinions = models.IntegerField()
    image1 = models.ImageField(upload_to='section_hotels_images/')
    image2 = models.ImageField(upload_to='section_hotels_images/')
    image3 = models.ImageField(upload_to='section_hotels_images/')
    image4 = models.ImageField(upload_to='section_hotels_images/')

    def __str__(self):
        return f"{self.city}, {self.country} - {self.hotel_name}"


class SectionHotels(models.Model):
    id = models.AutoField(primary_key=True)
    country = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    content = models.TextField()
    hotel_name = models.CharField(max_length=50)
    stars = models.IntegerField()
    punctuation = models.FloatField()
    opinions = models.IntegerField()
    image1 = models.ImageField(upload_to='section_hotels_images/')
    image2 = models.ImageField(upload_to='section_hotels_images/')
    image3 = models.ImageField(upload_to='section_hotels_images/')
    image4 = models.ImageField(upload_to='section_hotels_images/')

    def __str__(self):
        return f"{self.city}, {self.country} - {self.hotel_name}"

class FlightsSectionCard(models.Model):
    id = models.AutoField(primary_key=True)
    country = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    next_flight = models.IntegerField()
    image = models.ImageField(upload_to='section_flights_images/')
    content = models.TextField()

    def __str__(self):
        return f"{self.city}, {self.country}"

class BranchOffices(models.Model):
    country = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    phone = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.city}, {self.country}"


class AssistancePlan(models.Model):
    name = models.CharField(max_length=50)
    summary = models.CharField(max_length=50)
    link = models.URLField()
    medal_image = models.ImageField(upload_to='section_assistance_images/')
    time = models.CharField(max_length=50)
    range = models.CharField(max_length=50)
    queries = models.CharField(max_length=50)
    internation = models.CharField(max_length=50)
    reinstatement = models.CharField(max_length=50)
    medicaments = models.CharField(max_length=50)
    zone = models.CharField(max_length=50)

    def __str__(self):
        return self.name