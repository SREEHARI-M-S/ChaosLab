from flask import flask
import logging
import time
import threading

app = Flask(__name__)

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(message)s')

def log_loop():
    while True:
        app.logger.info('App is running smoothly...')
        time.sleep(1)

@app.route("/health")
def app_health():
    return "OK", 200

if __name__ == "__main__":
    threading.Thread(target = log_loop, daemon = True).start()
    app.run(host = "0.0.0.0", port = 5000)