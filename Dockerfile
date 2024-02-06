FROM python:3.12.1-alpine3.19

RUN python -m pip install pipx
RUN mkdir /srv/django && cd /srv/django
RUN pipx install poetry
RUN apk update && apk add apache2 apache2-mod-wsgi
COPY project.toml /srv/django 
WORKDIR /srv/django
RUN /root/.local/bin/poetry init  
