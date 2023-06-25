from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def display_version():
    with open('version.txt', 'r') as file:
        version = file.read().strip()

    return render_template('version.html', version=version)

if __name__ == '__main__':
    app.run()
