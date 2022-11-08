# Loki Minio playground

Inspiration ressource: https://github.com/grafana/loki/tree/main/production/docker

```sh
$ docker compose up -d minio
$ docker compose up -d createbuckets
$ docker compose up -d loki grafana
$ docker compose up -d promtail
```

You can access to Minio server on:

- http://127.0.0.1:9001/
- Login: `minioadmin`
- Password: `minioadmin`

You can access to Grafana on:

- http://127.0.0.1:3000
- Login: `admin`
- Password: `admin`

Inject some data to Loki with:

```
$ docker-compose up log-generator
```
