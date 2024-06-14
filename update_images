#!/bin/bash
docker-compose pull chamazetu_frontend
docker-compose up -d --no-deps --build chamazetu_frontend

docker-compose pull chamazetu_backend
docker-compose up -d --no-deps --build chamazetu_backend

docker-compose pull celery_worker
docker-compose up -d --no-deps --build celery_worker

docker-compose pull celery_beat_scheduler
docker-compose up -d --no-deps --build celery_beat_scheduler