# openweb/lam:0.0.1
FROM osixia/openldap:latest
ENV VERSION 0.0.1

RUN apt-get update && \
	apt-get install -y ldap-account-manager apache2 && \
	sed -i 's,DocumentRoot .*,DocumentRoot /usr/share/ldap-account-manager,' /etc/apache2/sites-available/000-default.conf

EXPOSE 80

ENTRYPOINT  apache2ctl -DFOREGROUND

