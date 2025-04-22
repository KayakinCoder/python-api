from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def index():
    return "nope!"

@app.route("/hello")
def hello_world():
    return "hello world"

@app.route("/getenv")
def get_env():
    return os.environ['myvar']