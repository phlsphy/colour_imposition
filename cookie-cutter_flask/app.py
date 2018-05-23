from flask import Flask, request, render_template
from models import compute

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/results', methods=['POST', 'GET'])
def display():
    if request.method == 'POST':
        fm = request.form['variable_name']

    output = compute(fm)
    return render_template('results.html', output=output)

if __name__ == '__main__':
    app.run(debug=True)