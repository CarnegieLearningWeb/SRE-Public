module "ecs_module"{

    source = "./modules/ecs_module"
    cluster_name = "cl-test-cluster"
    service_name = " cl-test-sevice-01"
 
}