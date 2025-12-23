#!/bin/sh

#exporting the port to start  the web on
PORT=$1
if [ -z "$PORT" ]; then
  PORT=8080
fi

export PORT

#executing the server
npm start


