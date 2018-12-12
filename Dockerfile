FROM intxlog/node

RUN npm --global install pm2

RUN useradd -ms /bin/bash pm2

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

RUN chown root:root /usr/local/bin/*
RUN chmod 755 /usr/local/bin/*
