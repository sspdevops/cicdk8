FROM httpd
## COPY index.html /usr/local/apache2/htdocs/
# updated credentials
ADD https://www.free-css.com/assets/files/free-css-templates/download/page119/fruit-art.zip /tmp/fruit-art.zip
RUN apt-get update && apt-get install unzip -y
RUN unzip /tmp/fruit-art.zip
RUN cd /tmp/
RUN cp -r fruit-art/* /usr/local/apache2/htdocs/
RUN rm -rf /tmp/fruit-art.zip 