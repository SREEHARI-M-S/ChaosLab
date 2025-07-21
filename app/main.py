import logging
import os
from flask import Flask

app = Flask(__name__)

LOG_FILE = "/var/log/user_app.log"
os.makedirs(os.path.dirname(LOG_FILE), exist_ok=True)

logging.basicConfig(
    filename=LOG_FILE,
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

@app.route('/')
def hello():
    app.logger.info("Hello endpoint was hit.")
    return "Hello from User App!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)