# openweb/lam:0.0.1
FROM osixia/openldap:latest
ENV VERSION 0.0.1

RUN apt-get update && \
	apt-get install -y ldap-account-manager && \
	sed -i 's,DocumentRoot .,DocumentRoot usrshareldap-account-manager,' etcapache2sites-available000-default.conf

EXPOSE 80

ENTRYPOINT  apache2ctl -DFOREGROUND

