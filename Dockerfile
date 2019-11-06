FROM node:10.12.0

EXPOSE 8080

COPY . /home/node/app
RUN mkdir -p /home/node/app/config
RUN chown -R node:node /home/node/app

VOLUME /home/node/app/config
VOLUME /mnt/zen

ENV ZENCONF /mnt/zen/zen.conf

WORKDIR /home/node/app
RUN npm install
CMD ["node", "app.js"]

USER node
