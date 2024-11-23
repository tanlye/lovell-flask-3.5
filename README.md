# lovell-flask-3.5
## Steps to create docker image and deploy to AWS ECR
1. Create Terraform resource to deploy private ECR Repository. Change Directory to folder containing terraform files. Run the following commands one after another:
```
   terraform init
   terraform plan
   terraform apply
```
   This will create the private ECR Repository in AWS. Check console. 
   
2. Create a folder to contain dockerfile. Run the following commands one after another:
```
    docker build -t <my-node-app> .
    docker images
    docker run -dp 8080:8080 <my-node-app>
    docker ps
    curl localhost:8080
   This will create the docker image.
```

3. To dockerfile into AWS ECR, go into the private repo in AWS. Follow the instructions stated in 'View push commands':
```
  Retrieve an authentication token and authenticate your Docker client to your registry. Use the AWS CLI:
  
  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 255945442255.dkr.ecr.us-east-1.amazonaws.com
  Note: If you receive an error using the AWS CLI, make sure that you have the latest version of the AWS CLI and Docker installed.
  Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here . You can skip this step if your image is already built:
  
  docker build -t lovell-flask-private-repository .
  After the build completes, tag your image so you can push the image to this repository:
  
  docker tag lovell-flask-private-repository:latest 255945442255.dkr.ecr.us-east-1.amazonaws.com/lovell-flask-private-repository:latest
  Run the following command to push this image to your newly created AWS repository:
  
  docker push 255945442255.dkr.ecr.us-east-1.amazonaws.com/lovell-flask-private-repository:latest
```

4. Check that your docker image has been deployed into the AWS ECR repository

Created with reference from https://github.com/tcwong2024/CE7-M3-TF-Docker-Private-ECR.git
