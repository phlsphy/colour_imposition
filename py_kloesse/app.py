from flask import Flask, request, render_template
from model import compute

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/display', methods=['POST', 'GET'])
def display():
    if request.method == 'POST':
        fm = request.form['frontMatter']
        page_extent = request.form['totalPages']

    # Convert from string to integer
    fm = int(fm)
    page_extent = int(page_extent)

    output = compute(fm, page_extent)
    return render_template('display.html', output=output)

if __name__ == '__main__':
    app.run(debug=True)