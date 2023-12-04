from projects.models import Project
from rest_framework import viewsets, permissions

from .serializers import ProjectSerializer

from .serializers import SectionOfferCardSerializer
from projects.models import SectionOfferCard

from .serializers import CitySerializer
from projects.models import City

from .serializers import SectionHotelsSerializer
from projects.models import SectionHotels

from .serializers import FlightsSectionCardSerializer
from projects.models import FlightsSectionCard

from .serializers import BranchOfficesSerializer
from projects.models import BranchOffices

from .serializers import AssistancePlanSerializer
from projects.models import AssistancePlan


class ProjectViewSet(viewsets.ModelViewSet):
  queryset = Project.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = ProjectSerializer

class SectionOfferCardViewSet(viewsets.ModelViewSet):
  queryset = SectionOfferCard.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = SectionOfferCardSerializer

class CityViewSet(viewsets.ModelViewSet):
  queryset = City.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = CitySerializer
  
class SectionHotelsViewSet(viewsets.ModelViewSet):
  queryset = SectionHotels.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = SectionHotelsSerializer

class FlightsSectionCardViewSet(viewsets.ModelViewSet):
  queryset = FlightsSectionCard.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = FlightsSectionCardSerializer

class BranchOfficesViewSet(viewsets.ModelViewSet):
  queryset = BranchOffices.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = BranchOfficesSerializer


class AssistancePlanViewSet(viewsets.ModelViewSet):
  queryset = AssistancePlan.objects.all()
  permission_classes = [permissions.AllowAny]
  serializer_class = AssistancePlanSerializer
