# Docker Uptimr Worker Node

Contents of `docker-compose.yml`

```
version: "3"
services:
  uptimr:
    image: envoyr/worker
    tty: true
    volumes:
      - /root/froxlor/config.json:/var/lib/uptimr/config.json:ro
```

Also create a new `config.json` with the content given from the dashboard.

Finally start docker:

```
docker compose up -d
```

You node should apear up in the dashboard.
