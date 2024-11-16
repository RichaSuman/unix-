docker ps


docker desktop
systemctl --user start docker-desktop
systemctl --user start docker-desktop

# to create a docker with ubuntu image in -it (interactive mode)
docker run -it --rm ubuntu bash


#to install docker-compose
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.25.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
sudo cp $DOCKER_CONFIG/cli-plugins/docker-compose /usr/local/bin
sudo cp $DOCKER_CONFIG/cli-plugins/docker-compose /usr/bin
sudo usermod -aG docker $USER # add user to docker  group so user can use it as expected

docker-compose pull # to update the image with the latest
docker-compose rm # refresh the lab
docker-compose up


