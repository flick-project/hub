# Flick

A swipe-based movie discovery app. Save movies to your watchlist, skip what doesn't interest you, customize your profile, and get personalized recommendations over time.

## Architecture

Flick is split into three repos within this GitLab group:

- **project-hub** (you are here) — infrastructure (database, networking), dev environment, documentation
- **flick-client** — React frontend (Vite + Tailwind)
- **flick-server** — Express API + PostgreSQL

Each repo has its own CI/CD pipeline. Server and client deploy independently on version tags (`v*`). Project-hub deploys the database and Docker network on push to main.

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
- Server: http://localhost:3000
- Database: PostgreSQL on port 5432

## Production

Each repo deploys independently via GitLab CI/CD. Pipelines build and deploy on the VPS via SSH using Docker Context.

### Initial VPS setup

1. Install Docker
2. Start Nginx Proxy Manager and configure domain routing
3. Generate an SSH key for CI/CD and add it to GitLab CI/CD variables
4. Push to main on project-hub (creates the database and network)
5. Tag flick-server and flick-client to deploy them

### Deploying changes

- **Server or client:** merge to main, then tag with a version (`git tag -a v0.3.0 -m "description" && git push origin v0.3.0`)
- **Database/infrastructure:** push to main on project-hub (rarely needed)

### CI/CD variables

Each repo needs `SSH_PRIVATE_KEY` and `PRODUCTION_HOST` in GitLab CI/CD settings. Additionally:

- **project-hub:** `DB_PASSWORD`
- **flick-server:** `DATABASE_URL`, `JWT_SECRET`, `TMDB_API_KEY`
- **flick-client:** no additional secrets

## Documentation

- **Wiki** — project documentation
- **Milestones** — Plan > Milestones
- **Requirements** — Plan > Requirements
- **Test cases** — Build > Test cases
- **Issues** — Plan > Issues