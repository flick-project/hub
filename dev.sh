#!/bin/sh
# Runs Flick in development mode.
docker compose -f docker-compose.yml -f docker-compose.dev.yml up --build