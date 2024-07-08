#!/bin/bash

# pull the latest images
docker-compose pull

# update each service without stopping other services
docker-compose up -d --no-deps  chamazetu_frontend
docker-compose up -d --no-deps  chamazetu_backend
docker-compose up -d --no-deps  celery_worker
docker-compose up -d --no-deps  celery_beat_scheduler

# remove unused images to free up space
docker image prune -f
