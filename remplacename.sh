#!/bin/bash

# URL del archivo HTML en GitHub
github_html_url="https://raw.githubusercontent.com/LuisBastiasCH/workshop/main/remplacename.sh"

# Descargar el archivo HTML desde GitHub
curl -sSL "$github_html_url" -o index.html

# Modificar el archivo HTML usando sed
sed 's|<div id="container">Contenido anterior</div>|<div class="container">
        <h2>Random GIF</h2>
        <img src="{{url}}" alt="Random GIF" />
        <h4>This app is running on:</h4>
        <p><strong>{{hostname}}</strong></p>
        <p>Author: Hermes Vargas</p>
        <p>Version: 2.0.0</p>
        <p><a href="/status">Check server status</a></p>
    </div>|' index.html

echo "Archivo HTML modificado exitosamente"

# Configurar git
git config --global user.email "luis.bastias@cloudhesive.com"
git config --global user.name "Luis Bastias"

# Añadir cambios, hacer commit y push
git add index.html
git commit -m "Modificación automática del archivo HTML"
git push origin master
