from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "nope!"

@app.route("/hello")
def hello_world():
    return "hello world"
