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

## Instruction to use Scaleway Object Storage

Create your bucket (see Terraform instruction in [`./terraform/`](./terraform)).

In `config/loki/config.yaml`, replace this lines:

```
      endpoint: "minio:9000"
      insecure: true
      bucketnames: loki
      access_key_id: minioadmin
      secret_access_key: minioadmin
      s3forcepathstyle: true
```

By:

```
      endpoint: s3.fr-par.scw.cloud
      region: "fr-par"
      insecure: false
      bucketnames: "???"
      access_key_id: ???
      secret_access_key: ???
      s3forcepathstyle: true
```

Replace `???` by your parameters.
