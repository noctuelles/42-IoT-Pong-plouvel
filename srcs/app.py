from flask import Flask

app = Flask(__name__)

@app.route("/")
def version():
    return (dict(ver='v1', msg='Pong'))