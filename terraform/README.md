# Create Scaleway Object Storage Bucket with terraform

```
$ sudo dnf install terraform
```

```
$ cp .envrc.skel to .envrc
```

Fill `.envrc` with your Scaleway credential.

```
$ source .envrc
```

Modify the `chunk.loki.stephane-klein.info` value.

```
$ terraform plan
```

Check the result plan.

```
$ terraform apply
```
