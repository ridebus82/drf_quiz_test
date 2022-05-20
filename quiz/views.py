import random

from django.shortcuts import render

# Create your views here.
from rest_framework.decorators import api_view
from rest_framework.response import Response

from quiz.models import Quiz
from quiz.serializers import QuizSerializer


@api_view(['GET'])
def helloAPI(request):
    return Response("hello world!!")

@api_view(['GET'])
def randomQuiz(request,id):
    totalQuizs = Quiz.objects.all()
    randomQuize = random.sample(list(totalQuizs), id)
    serializer = QuizSerializer(randomQuize, many=True)
    return Response(serializer.data)