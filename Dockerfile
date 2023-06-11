FROM ubuntu

RUN apt update && apt upgrade -y
RUN apt install -y mariadb-server
RUN apt install -y nginx
COPY  startserv.sh /root
RUN   chmod 755 /root/startserv.sh

EXPOSE 3306 80

CMD ["/bin/bash","/root/startserv.sh"]
