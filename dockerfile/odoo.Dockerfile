FROM odoo:latest
USER root
RUN apt-get update
RUN apt-get install curl python3-pandas nano -y