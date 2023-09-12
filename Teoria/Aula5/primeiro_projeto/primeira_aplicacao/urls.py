from django.urls import path
from primeira_aplicacao import views

urlpatterns = [
    #host:porta/primeira_aplicacao/
    path('', views.index, name='index')
]