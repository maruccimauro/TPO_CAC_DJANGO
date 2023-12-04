from django.apps import AppConfig


class ProjectsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'projects'

class SectionOfferCardConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'SectionOfferCard'

class CityConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'City'

class SectionHotelsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'SectionHotels'

class FlightsSectionCardConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'FlightsSectionCard'

class BranchOfficesConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'BranchOffices'

class AssistancePlanConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'AssistancePlan'
