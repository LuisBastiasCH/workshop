#!/bin/bash

# Clonar el repositorio desde GitHub
git clone https://github.com/LuisBastiasCH/workshop.git
cd workshop  # Entrar al directorio clonado
cd templates

# Modificar el archivo HTML usando sed

archivo="index.html"

# Verificar si el archivo ya existe
if [ -f "$archivo" ]; then
    echo "El archivo $archivo ya existe. Se reemplazará."
fi

# Contenido HTML
cat << _EOF_ > "$archivo"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Random GIF</title>
    <style type="text/css">
        body {
            background-color: #f5f5f5;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 500px;
            padding: 40px;
            text-align: center;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            font-size: 32px;
            color: #333;
            margin-bottom: 20px;
        }
        img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h4 {
            font-size: 24px;
            color: #333;
            margin-top: 30px;
        }
        p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }
        a {
            color: #FF69B4;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Random GIF</h2>
        <img src="{{url}}" alt="Random GIF" />
        <h4>This app is running on:</h4>
        <p><strong>{{hostname}}</strong></p>
        <p>Author: Hermes Vargas</p>
        <p>Version: 2.0.0</p>
        <p><a href="/status">Check server status</a></p>
    </div>
</body>
</html>
_EOF_

echo "Archivo $archivo creado exitosamente."



echo "Archivo HTML modificado exitosamente"

# Configurar git (establecer las configuraciones de usuario)
git config user.email "luis.bastias@cloudhesive.com"
git config user.name "LuisBastiasCH"

# Añadir cambios, hacer commit y push
git add index.html
git commit -m "Modificación automática del archivo HTML"
git push origin main

