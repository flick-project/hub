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

2. Copy `.env.example` to `.env` and fill in your values:

```
   cp .env.example .env
```

3. Start everything:
```
cd project-hub
docker compose up
```

- Client: http://localhost:8080
- Server: http://localhost:3000
- Database: PostgreSQL on port 5432

## Documentation

- **Wiki** — project documentation and decisions
- **Requirements** — Plan → Requirements
- **Issues & Milestones** — Plan → Issues