from django.urls import path
from . import views

urlpatterns = [
    path('', views.FilmeListCreate.as_view(), name = 'filme-list-create'),
    path('<int:pk>', views.FilmeRetriveDestroy.as_view(), name='filme-retrive-destroy')
]