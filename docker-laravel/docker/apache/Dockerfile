# docker/apache/Dockerfile
FROM httpd:2.4.51

COPY funeralwishes.conf /usr/local/apache2/conf/funeralwishes.conf

RUN echo "Include /usr/local/apache2/conf/funeralwishes.conf" \
    >> /usr/local/apache2/conf/httpd.conf