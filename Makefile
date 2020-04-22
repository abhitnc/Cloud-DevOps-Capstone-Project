install:kub


build:
	eksctl create cluster \
    --name duckhunt \
    --region us-east-1 \
    --nodegroup-name standard-workers \
    --node-type t2.micro \
    --nodes 3 \
    --nodes-min 1 \
    --nodes-max 4 \
    --managed

lint:
	./hadolint Dockerfile



all: install lint test
