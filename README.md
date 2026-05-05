# Flick

A swipe-based movie discovery app. Save movies to your watchlist, skip what doesn't interest you, customize your profile, and get personalized recommendations over time.

## Architecture

Flick is split into three repos within this GitLab group:

- **project-hub** (you are here) — Docker setup, CI/CD, documentation
- **flick-client** — React frontend (Vite + Tailwind)
- **flick-server** — Express API + PostgreSQL

## Getting started

1. Clone all three repos into the same parent folder:

```
git clone <project-hub-url>
git clone <flick-client-url>
git clone <flick-server-url>
```

2. Copy `.env.example` to `.env` in project-hub and fill in your values:

```
cp .env.example .env
```

3. Start in development mode:

```
cd project-hub
sh dev.sh
```

- Client: http://localhost:5173
- Server: http://localhost:3001
- Database: PostgreSQL on port 5432

## Production

Deploy to VPS (requires SSH access):

```
eval $(ssh-agent) && ssh-add <your-ssh-key>

DOCKER_HOST=ssh://<user>@<vps-ip> \
DB_PASSWORD="..." \
JWT_SECRET="..." \
JWT_LIFE="24h" \
TMDB_API_KEY="..." \
docker compose -f docker-compose.yml -f docker-compose.production.yml up --build -d
```

## Documentation

- **Wiki** — project documentation
- **Milestones** — Plan > Milestones
- **Requirements** — Plan > Requirements
- **Test cases** — Build > Test cases
- **Issues** — Plan > Issues