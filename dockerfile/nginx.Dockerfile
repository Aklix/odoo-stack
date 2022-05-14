FROM nginx:latest
USER root
RUN apt update
RUN apt install nano apt-utils cerbot python-cerbot-nginx -y