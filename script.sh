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

docker container logs command #lihat log dari container command