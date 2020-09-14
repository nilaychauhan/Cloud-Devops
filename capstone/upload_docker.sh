  
#!/usr/bin/env bash

# docker path
dockerpath=nilay16/capstone

echo "Docker ID and Image: $dockerpath"

docker tag nilay16/capstone nilay16/capstone:v1

docker push nilay16/capstone:v1