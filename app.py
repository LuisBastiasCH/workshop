from flask import Flask, render_template, jsonify
import random
import urllib.request
import socket

app = Flask(__name__)
hostname = socket.gethostname()

# list of images:
images = [
    "https://media.giphy.com/media/BemKqR9RDK4V2/giphy.gif",
    "https://media.giphy.com/media/ZebTmyvw85gnm/giphy.gif",
    "https://media.giphy.com/media/4no7ul3pa571e/giphy.gif",
    "https://media.giphy.com/media/ktcUyw6mBlMVa/giphy.gif",
    "https://media.giphy.com/media/NmerZ36iBkmKk/giphy.gif",
    "https://media.giphy.com/media/o7OChVtT1oqmk/giphy.gif",
    "https://media.giphy.com/media/NzQSHl01OBLkk/giphy.gif"
]

@app.route('/')
def index():
    url = random.choice(images)
    return render_template(
        'index.html',
        url=url,
        hostname=hostname,
        )

@app.route('/status')
def status():
    code = urllib.request.urlopen("http://127.0.0.1:8082").getcode()
    if code == 200:
        return jsonify(status="OK", version="1.0")
    else:
        return jsonify(status="ERROR", version="1.0")

@app.route('/version')
def version():
    return jsonify(
        version = "1.0",
        hostname = hostname,
        StatusCode = 200
        )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8082)
