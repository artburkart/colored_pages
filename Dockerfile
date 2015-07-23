FROM nginx

# Installs git
RUN apt-get update && apt-get install -y git

# Installs 'website'
COPY . /usr/share/nginx

# Installs git script
COPY script /usr/bin/script

RUN chmod 777 /usr/bin/script
RUN git config --global user.email "artburkart@gmail.com"
WORKDIR /usr/share/nginx/html

CMD ["/usr/bin/script"]
