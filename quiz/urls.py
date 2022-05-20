from django.urls import path

from quiz import views
from quiz.views import helloAPI

urlpatterns = [
    path("hello/", helloAPI),
    path('<int:id>/', views.randomQuiz),
]