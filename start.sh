#!/bin/bash

echo "Remove 'static' directory (not for Netlify, only needed for local dev)"
rm -rf static

echo "Globally install 'ghost-static-site-generator'"
# npm install -g ghost-static-site-generator

echo "Start Ghost local server (and wait)"
npm start > /dev/null & sleep 5

echo "Run 'ghost-static-site-generator' 🚀"
gssg --domain 'http://127.0.0.1:2368' --url 'https://www.letssewbelfast.com' --dest static

echo "Kill Ghost local server"
lsof -ti tcp:2368 | xargs kill
