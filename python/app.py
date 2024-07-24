from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def root():
    data = {
        'status': 200,
        'message': 'OK'
    }
    return jsonify(data), 200, {'Content-Type': 'application/json'}

@app.route('/healthz')
def healthz():
    data = {
        'status': 200,
        'message': 'SUCCESS. Healthz status OK'
    }
    return jsonify(data), 200, {'Content-Type': 'application/json'}

@app.route('/test')
def test():
    data = {
        'status': 200,
        'message': 'SUCCESS. Test status OK'
    }
    return jsonify(data), 200, {'Content-Type': 'application/json'}


if __name__ == '__main__':
    app.run(debug=True)