 provider "docker"{
  host = "unix:///var.run.docker.sock"
 }
#pulls the image 
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}
resource "docker_container" "webserver" {
  image = "${docker_image.ubuntu.latest}"
  name = "terraform-docker-test"
  must_run = true
  publish_all_ports = true
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}
