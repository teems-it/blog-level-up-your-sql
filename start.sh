#!/usr/bin/bash
docker build -t levelupyoursql .
if ! docker container ls --all | grep levelupyoursql-container; then
  docker run -d -p 5432:5432 --name levelupyoursql-container levelupyoursql
else
  echo "Container is already running."
  docker start levelupyoursql-container
fi

# Counter for retries
RETRIES=0
DELAY=1
while [ $RETRIES -lt 10 ]; do
    docker exec -it levelupyoursql-container psql -d levelupsql -U levelup

    if [ $? -eq 0 ]; then
        exit 0
    else
        echo "Command failed. Retrying in $DELAY seconds..."
        sleep $DELAY
        RETRIES=$((RETRIES+1))
    fi
done

echo "Command failed after $RETRIES retries."
exit 1

