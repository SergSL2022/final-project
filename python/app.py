from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def root():
    data = {
        'status': 200,
        'message': 'OK'
    }
    return jsonify(data), 200, {'Content-Type': 'application/json'}

@app.route('/test')
def root():
    data = {
        'status': 200,
        'message': 'Ok. Test successful'
    }
    return jsonify(data), 200, {'Content-Type': 'application/json'}


if __name__ == '__main__':
    app.run(debug=True)