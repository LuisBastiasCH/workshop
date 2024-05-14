#!/bin/bash

# Definir la ruta del archivo HTML
html_file="/templates/index.html"

# Modificar el archivo HTML usando sed
# Por ejemplo, cambiaremos el contenido de un div con id "miDiv"
sed 's|<div id="container">Contenido anterior</div>|<div class="container">
        <h2>Random GIF</h2>
        <img src="{{url}}" alt="Random GIF" />
        <h4>This app is running on:</h4>
        <p><strong>{{hostname}}</strong></p>
        <p>Author: Hermes Vargas</p>
        <p>Version: 2.0.0</p>
        <p><a href="/status">Check server status</a></p>
    </div>|' "$html_file" > "$html_file.tmp"

# Sobrescribir el archivo original con el archivo modificado
mv "$html_file.tmp" "$html_file"

echo "Archivo HTML modificado exitosamente"
