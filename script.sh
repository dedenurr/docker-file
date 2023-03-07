# FROM instruction
# docker build -t namaimage/tag folder
docker build -t dedenr2912/from from

docker image ls

# RUN instruction
docker build -t dedenr2912/run run

# RUN instruction dengan display output
docker build -t dedenr2912/run run --progress=plain --no-cache

# CMD instruction
docker build -t dedenr2912/command command

docker image inspect dedenr2912/command #cek detail image

docker container create --name command dedenr2912/command #buat container dari image dedenr2912/command

docker container start command #Jalankan containernya

docker container logs command #lihat log dari container command

# LABEL Instruction
docker build -t dedenr2912/label label

docker image inspect dedenr2912/label

# ADD Instruction
docker build -t dedenr2912/add add

docker container create --name add dedenr2912/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t dedenr2912/copy copy

docker container create --name copy dedenr2912/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t dedenr2912/ignore ignore

docker container create --name ignore dedenr2912/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t dedenr2912/expose expose

docker image inspect dedenr2912/expose

docker container create --name expose -p 8080:8080 dedenr2912/expose

docker container start expose

docker container ls

docker container stop expose


# ENV Instruction

docker build -t dedenr2912/env env

docker image inspect dedenr2912/env

docker container create --name env --env APP_PORT=9090 --publish 9090:9090 dedenr2912/env #setting port bagian code ini --env APP_PORT=9090 

docker container start env

docker container logs env

docker container stop env


# VOLUME Instruction

docker build -t dedenr2912/volume volume

docker image inspect dedenr2912/volume

docker container create --name volume --env APP_PORT=8080 --publish 8080:8080 dedenr2912/volume

docker container start volume

docker container logs volume

docker container inspect volume

docker volume ls

# WORKDIR Instruction

docker build -t dedenr2912/workdir workdir #buat image

docker container create --name workdir -p 8080:8080 dedenr2912/workdir #buat container

docker container start workdir #start container

docker container exec -i -t workdir //bin//sh #masuk ke bin sh

# USER Instruction
docker build -t dedenr2912/user user

docker container create --name user -p 8080:8080 dedenr2912/user

docker container start user

docker container exec -i -t user //bin//sh

# ARG Instruction

docker build -t dedenr2912/arg arg --build-arg app=bukabagi

docker container create --name arg -p 8080:8080 dedenr2912/arg

docker container start arg

docker container exec -i -t arg //bin//sh

# HEALTHCHECK Instruction
docker build -t dedenr2912/health health

docker container create --name health -p 8080:8080 dedenr2912/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t dedenr2912/entrypoint entrypoint

docker image inspect dedenr2912/entrypoint

docker container create --name entrypoint -p 8080:8080 dedenr2912/entrypoint

docker container start entrypoint

# Multi Stage build
docker build -t dedenr2912/multi multi

docker image ls

docker container create --name multi -p 8080:8080 dedenr2912/multi

docker container start multi

# token dedenr2912/multy
