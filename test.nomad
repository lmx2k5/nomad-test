job "test" {

  datacenters = ["dc1"]

  type = "service"

  group "testGroup" {
    count = 1
    task "testTask" {
      driver = "docker"
      config {
        image = "registry:5000/test"
        force_pull = true
        port_map {
          db = 8080
        }
      }

      resources {
        memory = 512
        network {
          port "db" {}
        }
      }
    }
  }
}