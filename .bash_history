sudo yum update -y
sudo yum install docker
sudo yum start docker
sudo systemctl start docker
sudo systemctl enable docker
docker ps
sudo usermod -aG docker ec2-user
sudo yum install nginx
sudo yum uninstall nginx
sudo yum remove nginx -y
sudo yum install -y docker-compose-plugin
docker compose version
sudo yum install -y docker-compose
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -sL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)  -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
docker compose version
ls
mkdir php-app
cd php-app
mkdir app
cd app
sudo yum install python3-pip -y
sudo pip3 install docker-compose
vi index.html
ls
vi index.php
vi config.php
cd ..
mkdir nginx
cd nginx
vi default.conf
cd ..
Dockerfile
vi Dockerfile
vi docker-compose.yaml
vi .dockerignore
docker-compose up --build -d
docker compose up --build -d
sudo docker compose up --build -d
sudo yum remove docker docker-engine docker.io containerd runc -y
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
docker compose up --build
sudo docker compose up --build
ls
cd .
cd.. 
cd ..
ld
ls
rm -rf phpa-pp
rm -rf php-app
ls
mkdir php-app
cd php-app
docker --version
ls
cd php-app
ls
cd ..
mv php-app app
cd app
mkdir php-app
cd php-app
vi insert.php
vi display.php
vi Dockerfile
cd ..
mkdir mysql
vi crud.sql
ls
mv crud.sql mysql
ls
mkdir nginx
ls
cd nginx
vi default.conf
vi Dockerfile
cd ..
vi docker-compose.yaml
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo reboot
sudo curl -L "https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker images
docker run -dit --name=php -p8080:80 nginx
docker ps
docker rm -rf 6b1f6981389f
docker rm -f 6b1f6981389f
docker run -dit --name=php -p8080:80 nginx:alpine
docker rm -f 
docker rm -f ba314fa9a75871532554a537c02a586cf4d464ee081007753b32426f3f9c6e21
ls
cd app
ls
cd php-app
ls
mv insert.php index.php
ls
vi Dockerfile
vi Dockerfileld
ls
cd ..
ls
cd nginx
ls
cd Dockerfile
vi Dockerfile
rm default.conf
ls
c ..
cd..
cd ..
ls
vi mysql/crud.sql
ls
vi php-app/Dockerfile
ls
cd nginx
ls
cd ..
ls
rm -f *
rm -rf *
ls
cd ..
mv app php-app
cd php-app
ls
mkdir app
cd app
vi index.php
vi index.html
vi display.php
cd ..
vi crud.sql
vi Dockerfile
vi docker-compose.yaml
docker-compose up --build -d
docker ps
sudo yum remove nginx
sudo systemctl restart
sudo systemctl restart docker
docker ps
docker-compose up --build -d
docker logs nginx-server
ls
mkdir nginx
cd nginx
vi default.conf
cd ..
vi docker-compose.yaml
vi d.yam;
vi d.yaml
cat > docker-compose.yaml << 'EOF'
version: '3.8'

services:
  php:
    build: .
    container_name: php-app
    networks:
      - app-network

  nginx:
    image: nginx:alpine
    container_name: nginx-server
    ports:
      - "8080:80"
    volumes:
      - ./app:/var/www/html
      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf
    depends_on:
      - php
      - mysql
    networks:
      - app-network

  mysql:
    image: mysql:8.0
    container_name: mysql-db
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: rootpassword
    ports:
      - "3306:3306"

cat docker-compose.yaml
wq!
docker-compose up --build -d
ls
cd add
cd app
ls
vi index.html
vi insert.php
ls
vi insert.php
rm insert.php 
ls
vi insert.php
rm display.php
vi display.php
docker-compose up --build -d
ls
cat display.php
rm index.php
cat index.html
cd ..
ls
cd crud.sql
cat crud.sql
cat docker-compose.yam;
cat docker-compose.yaml
cat Dockerfile
rm display.php
cd app
rm display.php
vi display.php
cd ..
docker-compose down
docker-compose up --build -d
docker exec -it mysql-db mysql -u root -p
