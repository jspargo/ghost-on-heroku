#!/bin/bash

npm install -g ghost-static-site-generator
npm start > /dev/null & sleep 5 && \
gssg --domain 'http://localhost:2368' --url 'https://www.letssewbelfast.com' --dest static
