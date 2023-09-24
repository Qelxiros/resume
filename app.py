import flask

app = flask.Flask(__name__)

@app.route('/')
def resume():
    return flask.send_file("Jeremy_Smart_fall2023.pdf")

if __name__ == '__main__':
    app.run()
