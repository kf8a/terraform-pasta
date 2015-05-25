# Configure the DigitalOcean Provider
provider "digitalocean" {
    token = "${var.do_token}"
}

# Create a new Web droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
    image = "debian-8-x64"
    name = "pasta-test"
    region = "nyc3"
    size = "512mb"
}

