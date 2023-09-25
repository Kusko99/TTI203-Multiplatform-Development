from django.shortcuts import render
from rest_framework import generics
from .models import Filme
from .serializers import FilmeSerializer

# Create your views here.
class FilmeListCreate(generics.ListCreateAPIView):
    queryset = Filme.objects.all()
    serializer_class = FilmeSerializer