import flask

app = flask.Flask(__name__)

@app.route('/')
def resume():
    return flask.send_file("Jeremy_Smart_Resume_spring2023_final.pdf")

app.run()
