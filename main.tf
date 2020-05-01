resource "docker_image" "nginx" {
name = "nginx:alpine"
}
resource "docker_container" "nginx" {
image = "nginx:alpine"
name = "nginx-tf"
ports {
internal = 80
external = 80
}
}
