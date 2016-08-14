----------
[![](http://docs.django-cms.org/en/release-3.3.x/_images/django-cms-logo.png)](https://www.django-cms.org/en/)

**Tag list with Dockerfile links:**

- [`:latest`](https://github.com/daimebag/django-cms-docker/tree/master/) [(latest/Dockerfile)](https://github.com/daimebag/django-cms-docker/blob/master/Dockerfile)
- [`:alpine`](https://github.com/daimebag/django-cms-docker/tree/alpine/) [(latest/alpine/Dockerfile)](https://github.com/daimebag/django-cms-docker/blob/alpine/Dockerfile)
- [`:test`](https://github.com/daimebag/django-cms-docker/tree/test/) [(latest/test/Dockerfile)](https://github.com/daimebag/django-cms-docker/blob/test/Dockerfile) 

> The "test" version run "/bin/sh" instead of "python manage.py runserver 0.0.0.0:8000"

----------

Just run:
```
docker run --name [ContainerName] -it -p [HostPort]:8000 daimebag/django-cms[Tag]
```   
    
If you need some help for installation of DjangoCMS, go to [the documentation](https://djangocms-installer.readthedocs.io/en/stable/readme.html) for more information.    

While installation, DjangoCMS asks which language(s) you want to use. All languages available are listed [here](https://github.com/django/django/blob/master/django/conf/global_settings.py#L50).  

After installation, you can stop the container and restart it, the container automatically launch the DjangoCMS server if the installation has already been done.  

> **Note:**
> The variable `DEBUG` has the value `True` by default. Change it if you want to push your site in production.
