# AACT DOCKER DATABASE


## Install Docker Compose

#### `Prerequisites`
Docker Compose relies on Docker Engine for any meaningful work, so make sure you have Docker Engine installed either locally or remote, depending on your setup.

* On desktop systems like Docker Desktop for Mac and Windows, Docker Compose is included as part of those desktop installs.

* On Linux systems, first install the <a href="https://docs.docker.com/install/#server" target="_blank_">Docker</a> for your OS as described on the Get Docker page, then come back here for instructions on installing Compose on Linux systems.

* To run Compose as a non-root user, see <a href="https://docs.docker.com/install/linux/linux-postinstall/" target="_blank_">Manage Docker as a non-root user</a>.

#### `Install Compose`
* __Mac Users:__ Click the following link to download and install docker compose on your machine.
https://docs.docker.com/docker-for-mac/install/

* __Windows Users:__ Click the following link to download and install docker compose on your machine.
https://docs.docker.com/docker-for-windows/install/

* __Linux Users:__ Click the following link and select _Linux_ from _Install Compose_ section. Then, follow the instructions to install docker compose on your machine.
https://docs.docker.com/compose/install/


## Start Postgres
* Pull the postgres image from hub.docker.com, create a container named _aact_db_, and start it in the background by using following command.

    `docker-compose up`


## Import AACT database
* You can find the list of _Downloadable File_ that contains AACT database files by clicking the following link: https://aact.ctti-clinicaltrials.org/snapshots. Copy the _link address_ of the zip file you want to import from the list (by right-clicking). Then, run -

  `docker exec -it aact_db import <link address>`

    Example: `docker exec -it aact_db import https://aact.ctti-clinicaltrials.org/static/static_db_copies/daily/20200127_clinical_trials.zip`


## Login to PgAdmin
* Open _pgAdmin_ tool on your browser by entering the following url in the address bar:
  - http://localhost:8000
* Login to the pgAdmin tool using the following credentials:
  - email: test@gmail.com
  - password: 1234567
