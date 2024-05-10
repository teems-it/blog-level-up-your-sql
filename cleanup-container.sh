#!/usr/bin/bash
echo "Stopping levelupyoursql-container"
docker stop levelupyoursql-container
echo "Removing levelupyoursql-container"
docker rm levelupyoursql-container
