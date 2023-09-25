from rest_framework import serializers
from .models import Filme

class FilmeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Filme
        fields = '__all__'

# POST /filme {'titulo'...}
# 1.Qual é a tabela em que o objeto será armazenado
# 2. Qual é a classe serializadora

# GET /filmes 
# 1. Qual é a tabela onde os dados virão
# 2. Qual é a classe serializadora