packer {
  required_plugins {
  }
}

source "scaleway" "basic" {
  commercial_type = "PRO2-XXS"
  zone = "fr-par-1"
  image = "ubuntu_jammy"
  image_name = "packer-e2e-simple"
  ssh_username = "root"
  remove_volume = true
}

build {
  sources = ["source.scaleway.basic"]
}
