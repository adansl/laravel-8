## Laravel 8

Bootstrap Laravel 8 application with Php8, nginx, MariaDB, PhpMyAdmin and ngrok.

## Usage

You need Docker and Docker compose.

- Clone repo
- Copy ```.env-example``` to ```.env```
- Specify ```APP_NAME``` inside  ```.env```
- Inside the root folder run ```sh docker.sh```
- Run  ```sh  initial.sh``` to install dependencies, run migrations, etc

## Line-up
- **nginx** - `:8082`
- **MariaDB** - `:3306`
- **PhpMyAdmin** - `:8090`
- **ngrok** - `:4551`
- **php** - `:9000`
- **XDebug Listening Port** - `:9003`


###Makefile

Instead of running certains commands inside containers, there's a Makefile with some basic commands 


###WSL2 and Xdebug

To enable Xdebug in Windows with WSL2 you have to:
- Make sure that PHPStorm is configured with port 9003 and is listening for connections.
- Open Powershell in Windows with admin rights.
- Run this command to forward the port 9003 used by xdebug from WSL2 to Windows:

    ```$ip = wsl hostname -I; netsh interface portproxy add v4tov4 listenport=9003 listenaddress=0.0.0.0 connectport=9003 connectaddress=$ip;netsh interface portproxy show all;```
- Open your WSL2 Bash and run this command to get the Windows IP form WSL2

    ``` ip route | grep default | awk '{print $3}'```
- Modify the IP defined in the field ```xdebug.client_host``` inside ```infrastructure/docker/php/xdebug.ini``` with the given ip in the last command
- Run ```./docker.sh restart```

## License
This work is primarily distributed under the terms of both the [MIT license](LICENSE-MIT) and the [Apache License (Version 2.0)](LICENSE-APACHE).

## Credits:
- [Jose Quintana](https://github.com/joseluisq/alpine-php-fpm) for the php docker image.

