# SRE-Public
Used for interview/coding challenges
Assume an Internet Gateway, VPC, route table, subnet & security group is already available:

The following resources should be created through code:

•	
	Create a new ECS Fargate cluster called cl-test-cluster.  
	Create a new service called cl-test-sevice-01.  The container which the cl-test-service-01 runs in should be called cl-container. The task definition for this service should have 2 vCPU and 4 gigs memory.   
        4 tasks should be running. 
•	Add two environment variables (you can assume they were already defined for this service) with the values as following:  

Key            Value        

APP_ENVIRONMENT   (dev)

CONFIG_VERSION   (1.0.01)

Your service should be available publicly running on port 443. 


