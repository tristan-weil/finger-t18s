job "finger-t18s" {
  datacenters = [
    "bi-sbg"]

  group "backend" {
    count = 1

    shutdown_delay = "20s"

    reschedule {
      attempts = 5
      interval = "1h"
      delay = "30s"
      delay_function = "constant"
      unlimited = false
    }

    restart {
      attempts = 3
      interval = "5m"
      delay = "30s"
      mode = "fail"
    }

    update {
      max_parallel     = 1
      canary = 1
      auto_revert      = true
      auto_promote     = false
      health_check     = "checks"
      min_healthy_time = "10s"
      healthy_deadline = "2m"
      progress_deadline = "10m"
      stagger = "15s"
    }

    migrate {
      max_parallel     = 1
      health_check     = "checks"
      min_healthy_time = "10s"
      healthy_deadline = "2m"
    }

    constraint {
      attribute = "${meta.client_type}"
      value = "node"
    }

    constraint {
      distinct_hosts = true
    }

    task "docker-image" {
      driver = "docker"

      shutdown_delay = "20s"

      env {
          TTSERVER_LISTENER_ADDRESS="0.0.0.0:${NOMAD_PORT_tcp}"
      }

      config {
        image = "ghcr.io/tristan-weil/finger-t18s:v1.0.3"
      }

      resources {
        network {
          mode = "host"
          port "tcp" {}
        }
      }

      service {
        name = "finger-t18s"
        port = "tcp"

        tags = [
          "traefik.enable=true",
          "traefik.tcp.routers.fingersecure-t18s.rule=HostSNI(`*`)",
          "traefik.tcp.routers.fingersecure-t18s.entrypoints=finger,fingersecure",
          "traefik.tcp.routers.fingersecure-t18s.service=finger-t18s@consulcatalog",
          "traefik.tcp.routers.fingersecure-t18s.tls=true",
          "traefik.tcp.routers.fingersecure-t18s.tls.certResolver=letsencrypt",
          "traefik.tcp.routers.fingersecure-t18s.tls.domains[0].main=finger.t18s.fr",

          "traefik.tcp.routers.finger-t18s.rule=HostSNI(`*`)",
          "traefik.tcp.routers.finger-t18s.entrypoints=finger,fingersecure",
          "traefik.tcp.routers.finger-t18s.service=finger-t18s@consulcatalog",

          "traefik.tcp.services.finger-t18s.loadbalancer.server.port=${NOMAD_HOST_PORT_tcp}",
        ]

        check {
          type = "tcp"
          port = "tcp"
          interval = "15s"
          timeout = "2s"
        }
      }
    }
  }
}
