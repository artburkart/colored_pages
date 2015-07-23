FROM nginx
COPY static /usr/share/nginx/html

# Installs git
RUN apt-get update && apt-get install -y git

# Installs 'website'
COPY . /usr/share/nginx

# Installs git script
COPY script /usr/bin/script

RUN chmod 777 /usr/bin/script

WORKDIR /usr/share/nginx/html

CMD ["/usr/bin/script"]
