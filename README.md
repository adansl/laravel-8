## Laravel 8

Bootstrap Laravel 8 application with   

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Usage

You need Docker and Docker compose.

- Clone repo
- Copy ```.env-example``` to ```.env```
- Specify ```APP_NAME``` inside  ```.env```
- Inside the root folder run ```sh docker.sh```
- Run  ```sh  initial.sh```


###Makefile

Instead of running certains commands inside containers, there's a Makefile with some basic commands 


Obtain IP from WSL2:
``` ip route | grep default | awk '{print $3}'```

Forward Port from WSL2 to Windows
```netsh interface portproxy add v4tov4 listenport=9003 listenaddress=0.0.0.0 connectport=9003 connectaddress=WSLIP```

Get WSL2 IP:
```wsl hostname -I```
