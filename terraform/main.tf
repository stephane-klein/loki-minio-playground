terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
    }
  }
  required_version = ">= 0.13"
}

resource "scaleway_object_bucket" "chunk_loki" {
    name = "chunk.loki.stephane-klein.info"
    tags = {
        service = "loki"
    }
}

data "scaleway_object_bucket" "selected" {
  name = scaleway_object_bucket.chunk_loki.name
}
