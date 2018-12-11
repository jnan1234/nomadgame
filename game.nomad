job "game" {

  datacenters = ["dc1"]

  type = "service"

  group "cache" {
    count = 1

    task "game" {
      driver = "docker"

      config {
        image = "jnanendra1919/tchard:v1"

        auth {
           username = "jnanendra1919"
           password = "jnanendra99"
        port_map {
           http  = 8080
        }
       }
      }
      resources {
        cpu = 100
        memory = 256 

        network {
          mbits = 20
          port "http" {}
        }
     }
    }
  }
}
