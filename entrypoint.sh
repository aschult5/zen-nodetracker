#!/bin/bash

chown -R node:node /home/node/app
exec runuser -u node "$@"
