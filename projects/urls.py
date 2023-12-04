from rest_framework import routers
from .api import ProjectViewSet
from .api import SectionOfferCardViewSet
from .api import CityViewSet
from .api import SectionHotelsViewSet
from .api import FlightsSectionCardViewSet
from .api import BranchOfficesViewSet
from .api import AssistancePlanViewSet




router = routers.DefaultRouter()

router.register('api/projects',ProjectViewSet, 'projects')
router.register('api/sectionoffercard',SectionOfferCardViewSet, 'SectionOfferCard')
router.register('api/city',CityViewSet, 'City')
router.register('api/sectionhotels',SectionHotelsViewSet, 'SectionHotels')
router.register('api/flightssectioncard',FlightsSectionCardViewSet, 'FlightsSectionCard')
router.register('api/branchoffices',BranchOfficesViewSet, 'BranchOffices')
router.register('api/assistanceplan',AssistancePlanViewSet, 'AssistancePlan')


urlpatterns = router.urls