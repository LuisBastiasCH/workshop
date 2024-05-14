#!/bin/bash

# Definir la ruta del archivo HTML
html_file="/templates/index.html"

# Modificar el archivo HTML usando sed
# Por ejemplo, cambiaremos el contenido de un div con id "miDiv"
sed -i 's/<div id=""container"">Contenido anterior<\/div>/<div class="container">
        <h2>Random GIF</h2>
        <img src="{{url}}" alt="Random GIF" />
        <h4>This app is running on:</h4>
        <p><strong>{{hostname}}</strong></p>
        <p>Author: Hermes Vargas</p>
        <p>Version: 1.0.0</p>
        <p><a href="/status">Check server status</a></p>
    </div>/' "$html_file"

echo "Archivo HTML modificado exitosamente"
