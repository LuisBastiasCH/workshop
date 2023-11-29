from flask import Flask, render_template, jsonify
import random
import urllib.request
import socket

app = Flask(__name__)
hostname = socket.gethostname()

@app.route('/')
def index():
    return render_template(
        'index.html'
        )

@app.route('/status')
def status():
    code = urllib.request.urlopen("http://127.0.0.1:8082").getcode()
    if code == 200:
        return jsonify(status="OK", version="4.0")
    else:
        return jsonify(status="ERROR", version="4.0")

@app.route('/version')
def version():
    return jsonify(
        version = "4.0",
        hostname = hostname,
        StatusCode = 200
        )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8082)
