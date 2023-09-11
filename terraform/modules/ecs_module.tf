resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.cluster_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}


resource "aws_ecs_task_definition" "service" {
  family = "service"
  container_definitions = jsonencode([
    {
      name      = var.service_name
      image     = var.image_name
      cpu       = 2
      memory    = 4096
      essential = true
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
      environment= [
        {
          "name": "APP_ENVIRONMENT",
          "value": "${var.app_environment}"
        },

        {
          "name": "CONFIG_VERSION",
          "value": "${var.congfig_version}"
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}
