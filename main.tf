terraform {
  cloud {
    organization = "cloud-lab-2021073563"

    workspaces {
      name = "cloud-lab"
    }
  }

  required_providers {
    docker = {
      source = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "lab" {
  length = 2
}

output "pet_name" {
  value = random_pet.lab.id
}
