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
* First, open a terminal session
  - On a PC, press `[CTRL]` `[R]`. Search bar pops up. Type `cmd` and press ENTER.
  - On a Mac, press `[command]` `[spacebar]`. _Spotlight Search_ dialog pops up. Type `terminal` and press ENTER

* Run the following command to start Postgres. It simply pulls the postgres image from _hub.docker.com_, creates a container named _aact_db_, and starts it in the background.

    `docker-compose up`

    NOTE: Let the docker container run in the background; you do not want to stop it or exit the terminal. You have to open a different terminal to run the following commands.

## Import AACT database
* You can find the list of _Downloadable File_ that contains AACT database files by clicking the following link: https://aact.ctti-clinicaltrials.org/snapshots.
* Copy the _link address_ of the zip file you want to import from the above list by right-clicking. Then, run the following command in a separate terminal window:

  `docker exec -it aact_db import <link-address>`

    Example: `docker exec -it aact_db import https://aact.ctti-clinicaltrials.org/static/static_db_copies/daily/20200127_clinical_trials.zip`


## Postgres Connection
* Use the following information to connect to the Postgres database:
  - host: `localhost`
  - port: `6543`
  - POSTGRES_USER: `aact`
  - POSTGRES_PASSWORD: `postgres`
