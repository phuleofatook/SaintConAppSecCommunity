# Vulnerable Task Manager

from django.urls import include, path, re_path
from django.contrib import admin
from django.http import HttpResponseRedirect
from django.conf import settings
from django.views.defaults import page_not_found

from taskManager.views import index

urlpatterns = [
    path('', index, name='index'),
    path('taskManager/', include(('taskManager.taskManager_urls','taskManager'), namespace="taskManager")),
    re_path(r'^admin/', admin.site.urls ),
    path('ht/', include('health_check.urls'))
   ]
