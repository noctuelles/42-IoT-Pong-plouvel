from flask import Flask

app = Flask(__name__)

@app.route("/app")
def version():
    return (dict(ver='v2', msg='Pong'))