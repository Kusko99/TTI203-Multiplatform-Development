from django.db import models

# Create your models here.

class Filme(models.Model):
    titulo = models.CharField(max_length=100)
    descricao = models.TextField()
    diretor = models.CharField(max_length=100)
    
#equivalente ao toString do Java
    def __str__(self):
        return f'{self.titulo}'