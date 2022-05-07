# Uptimr Worker Node for Docker

## Run with docker compose

Contents of `docker-compose.yml`

```
version: "3"
services:
  uptimr:
    image: envoyr/uptimr-worker
    volumes:
      - ./config.json:/var/lib/uptimr/config.json:ro
```

Also create a new `config.json` with the content given from the dashboard.

Finally start the worker:

```
docker compose up -d
```

to view the status run following command:

```
docker compose logs
```

You node should appear up in the dashboard.
