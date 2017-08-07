#push to Amazon ECR (EC2 Container Registry)

Invoke-Expression -Command (aws ecr get-login --no-include-email --region ap-northeast-1)
docker build -t ebdemo .
docker tag ebdemo:latest 915527427225.dkr.ecr.ap-northeast-1.amazonaws.com/ebdemo:latest
docker push 915527427225.dkr.ecr.ap-northeast-1.amazonaws.com/ebdemo:latest