FROM flask import Flask
app = Flask(__name__)
    @app.route('/')
        def hello-world():
            return 'Hello,Docker'