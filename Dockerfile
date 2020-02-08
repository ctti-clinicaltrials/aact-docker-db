FROM postgres
RUN apt-get update -qq && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip && \
   apt-get clean
