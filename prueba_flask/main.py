from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
@app.route('/home')
def home():
    name = 'user123'
    return render_template('index.html', message=f"Hello {name}")

@app.route('/register')
def register():
    return render_template('register.html', message="Create new user")

@app.route('/signup')
def sign_up():
    return render_template('signUp.html', anotherMessage="Please register")

@app.route('/results')
def show_results():
    return render_template('signUp.html', anotherMessage="Please register")


if __name__ == '__main__':
    app.run(debug=True, port=5000)