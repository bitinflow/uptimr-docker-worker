# Docker Uptimr Worker Node

## Run with docker compose

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

Finally start the worker:

```
docker compose up
```

to run it in background please use:


```
docker compose up -d
```

You node should appear up in the dashboard.
