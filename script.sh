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
