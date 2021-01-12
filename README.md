## Database containers compose

### Getting started

- `$ sudo mkdir -m 777 -p ~/shared/data/mysql`
- `$ docker-compose up -d`
- `$ docker ps -a`

**Sample output**

```shell
CONTAINER ID   IMAGE                  COMMAND                  CREATED          STATUS          PORTS                               NAMES
8cd30fb424b1   mysql:latest           "docker-entrypoint.s…"   19 seconds ago   Up 17 seconds   0.0.0.0:3306->3306/tcp, 33060/tcp   mysql-server
```

- `$ apt-get install mysql-client` - required, before connect mysql host inside container
- `$ ./bin/mysql-cli.sh`
- `$ ./bin/mysql-shell.sh`

#### Troubleshooting

- `$ make permissions` - if bash files give an error, permission is denied