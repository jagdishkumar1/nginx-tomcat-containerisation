# nginx-tomcat-containerisation

# Steps to run:

  - clone the repo
  - ./start.sh
     - will build the docker images for nginx and tomcat.
     - will deploy the pods for nginx and tomcat.
  - access the nginx at `https://<ip_of_host_vm>:8443`
  - access the tomcat application at `http://<ip_of_host_vm>:8080/hello-world/`

# Scaling:
  - Use the helm config to increase the replicas (currently set to 3), so a particular request can go to any of the 3 pods running for nginx / tomcat.

# What else can be done:
  - We can add liveness and readiness probe to check the health of the services running, expose some API's like /healthz and that can be configured as part of helm configuration.

*Note: For the assignment purpose I have checked in the secrets into Git repo, which is not the ideal scenario, they should be deployed by devops person into the cluster manually.
