from rest_framework import serializers
from .models import Project
from .models import SectionOfferCard
from .models import City
from .models import SectionHotels
from .models import FlightsSectionCard
from .models import BranchOffices
from .models import AssistancePlan



class ProjectSerializer(serializers.ModelSerializer):
  class Meta:
    model = Project
    fields=('id','title','description','technology','created_at')
    read_only_fields = ('created_at',)

class SectionOfferCardSerializer(serializers.ModelSerializer):
  class Meta:
    model = SectionOfferCard
    fields=('__all__')
    read_only_fields = ('created_at',)

class CitySerializer(serializers.ModelSerializer):
  class Meta:
    model = City
    fields=('__all__')
    read_only_fields = ('created_at',)

class SectionHotelsSerializer(serializers.ModelSerializer):
  class Meta:
    model = SectionHotels
    fields=('__all__')
    read_only_fields = ('created_at',)

class FlightsSectionCardSerializer(serializers.ModelSerializer):
  class Meta:
    model = FlightsSectionCard
    fields=('__all__')
    read_only_fields = ('created_at',)

class BranchOfficesSerializer(serializers.ModelSerializer):
  class Meta:
    model = BranchOffices
    fields=('__all__')
    read_only_fields = ('created_at',)

class AssistancePlanSerializer(serializers.ModelSerializer):
  class Meta:
    model = AssistancePlan
    fields=('__all__')
    read_only_fields = ('created_at',)
