#!/bin/bash

/etc/init.d/ssh start

su jshell -c "node /wetty/app.js -p 8080"
