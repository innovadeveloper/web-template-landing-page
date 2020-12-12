#!/bin/bash

# 1 Configurar los mòdulos de node js
function modulesConfiguration
{
    echo '{
  "name": "HtmlPage",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "test": "node index",
    "build-css": "node-sass --include-path scss scss/main.scss   public/css/main.css",
    "watch-css": "nodemon -e scss -x \"npm run build-css\""
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": ""
}
' >package.json 
    npm install -D node-sass nodemon
    directoriesProject
}

# 2 Crea los directorios y archivos del proyecto web
function directoriesProject
{
    mkdir bin public scss && mkdir public/css && mkdir js vendor
    touch scss/main.scss .gitignore
    showInstructions
}

# 3 imprime solo algunas instrucciones bàsicas..
function showInstructions
{
    echo "=======================Instructions==============================="
    echo "if you want to start the daemon 'node-sass' you just have to run 'npm run watch-css'"

}
 
modulesConfiguration
# configurationServiceWatchdog

# downloadFiles
# installPostgres
# executeScript


