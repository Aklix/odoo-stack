

## install dependency

### Docker and docker compose prerequisites
```sh 
sudo apt-get install curl ca-certificates
sudo apt-get install gnupg
sudo apt-get install 
sudo apt-get install lsb-release 
```

firs remove all old docker

 `for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done`

### install docker
```sh
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

`echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`

`sudo apt-get update`

`sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`

`sudo apt install docker-compose`

## Change Configurations

change the odoo-config/odoo.conf `db_user` and `db_password`.

make copy from [config.example](config.example) and change `config` file acordingly.

`cp configTemplates/config.example config`

`cp configTemplates/odoo.conf.example odoo-config/odoo.conf`

after editing config run [update_configs.sh](update_configs.sh) to update odoo configuration

`./update_configs.sh` 

## Run docker compose.ylm 

use the config file while starting docker.

`sudo docker-compose --env-file config up --build -d`