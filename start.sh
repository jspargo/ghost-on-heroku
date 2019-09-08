#!/bin/bash

echo "Remove 'static' directory (not for Netlify, only needed for local dev)"
rm -rf static

echo "Globally install 'ghost-static-site-generator'"
npm install -g ghost-static-site-generator

echo "Start Ghost local server (and wait)"
npm run dev

echo "Run 'ghost-static-site-generator' 🚀"
gssg --url 'https://www.letssewbelfast.com'

echo "Kill Ghost local server"
npm run stop
