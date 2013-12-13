from django.conf.urls import patterns, url 

from visualization import views

urlpatterns = patterns('',
    url(r'^$', views.index),
    url(r'^collect$', views.collect),
    url(r'^build$', views.build),
    url(r'^visualize$', views.visualize),
    url(r'^findings$', views.findings),
    url(r'^about$', views.about),
    (r'^test_results/$', views.test_ajax),
)