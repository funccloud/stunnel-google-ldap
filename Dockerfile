FROM alpine
WORKDIR /ldap
COPY conf-stunnel.sh /usr/local/bin/conf-stunnel
COPY stunnel.conf .
RUN apk add --no-cache stunnel
CMD conf-stunnel /ldap/certs /ldap/stunnel.conf /etc/stunnel/stunnel.conf && stunnel
