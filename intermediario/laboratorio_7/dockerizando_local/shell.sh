aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 937852338641.dkr.ecr.us-east-2.amazonaws.com
docker build -t aula-node-2022 .
docker tag aula-node-2022:latest 937852338641.dkr.ecr.us-east-2.amazonaws.com/aula-node-2022:latest
docker push 937852338641.dkr.ecr.us-east-2.amazonaws.com/aula-node-2022:latest