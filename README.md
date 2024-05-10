# Level Up you SQL
Get hands-on with SQL examples from our latest blog article. Elevate your database skills with practical code snippets. Let's level up together! 💡

This repository is a quick playground for testing queries from the level up your sql blog series.
It contains a postgres 16 Dockerfile that loads sample data from https://www.kaggle.com/datasets/CooperUnion/cardataset and some
convenience scripts for running and cleaning up the container.

## Usage

Build, start the container with postgres 16 and the sample data cars set and exec into a psql session.
```shell
./start.sh
```

Cleanup the container 
```shell
./cleanup-container.sh
```
