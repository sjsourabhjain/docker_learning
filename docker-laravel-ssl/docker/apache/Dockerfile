# docker/apache/Dockerfile
FROM httpd:2.4.51

#apache configuration
COPY funeralwishes.conf /usr/local/apache2/conf/funeralwishes.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

#ssl configuration
COPY cert.pem /usr/local/apache2/conf/cert.pem
COPY cert-key.pem /usr/local/apache2/conf/cert-key.pem

RUN echo "ServerName local.laravel.com" >> /usr/local/apache2/conf/httpd.conf
#RUN echo '192.168.9.194:8000 local.laravel.com' >> /etc/hosts

# Add the needed Apache modules
RUN sed -i '/#LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf && \
    sed -i '/#LoadModule ssl_module/s/^#//g' /usr/local/apache2/conf/httpd.conf && \
    sed -i '/#LoadModule socache_shmcb_module/s/^#//g' /usr/local/apache2/conf/httpd.conf && \
    sed -i '/#LoadModule headers_module/s/^#//g' /usr/local/apache2/conf/httpd.conf

RUN echo "Include /usr/local/apache2/conf/funeralwishes.conf" \
    >> /usr/local/apache2/conf/httpd.conf
RUN echo "Include /usr/local/apache2/conf/extra/httpd-ssl.conf" \
    >> /usr/local/apache2/conf/httpd.conf



# Expose ports 80 and 443
EXPOSE 80
EXPOSE 443

CMD ["httpd-foreground"]