#!/bin/bash

# Clonar el repositorio desde GitHub
git clone https://github.com/LuisBastiasCH/workshop.git
cd workshop  # Entrar al directorio clonado
cd templates

# Modificar el archivo HTML usando sed
sed -i 's|<div id="container">Contenido anterior</div>|<div class="container">\
        <h2>Random GIF</h2>\
        <img src="{{url}}" alt="Random GIF" />\
        <h4>This app is running on:</h4>\
        <p><strong>{{hostname}}</strong></p>\
        <p>Author: Hermes Vargas</p>\
        <p>Version: 2.0.0</p>\
        <p><a href="/status">Check server status</a></p>\
    </div>|' index.html


echo "Archivo HTML modificado exitosamente"

# Configurar git (establecer las configuraciones de usuario)
git config user.email "luis.bastias@cloudhesive.com"
git config user.name "LuisBastiasCH"

# Añadir cambios, hacer commit y push
git add index.html
git commit -m "Modificación automática del archivo HTML"
git push origin main

