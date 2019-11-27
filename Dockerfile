FROM node:10.12.0

EXPOSE 8080

COPY . /home/node/app

VOLUME /home/node/app/config
VOLUME /mnt/zen

ENV ZENCONF /mnt/zen/zen.conf

WORKDIR /home/node/app
RUN npm install

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["node", "app.js"]
