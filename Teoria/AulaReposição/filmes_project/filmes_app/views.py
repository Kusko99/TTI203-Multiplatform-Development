from django.shortcuts import render
from rest_framework import generics
from .models import Filme
from .serializers import FilmeSerializer

# Create your views here.

#POST /filmes
#GET /filmes
class FilmeListCreate(generics.ListCreateAPIView):
    #SELECT * FROM filmes
    queryset = Filme.objects.all()
    serializer_class = FilmeSerializer

#GET /filmes/id
#DELETE /filmes/id
class FilmeRetriveDestroy(generics.RetrieveDestroyAPIView):
    #SELECT * FROM filmes
    queryset = Filme.objects.all()
    serializer_class = FilmeSerializer