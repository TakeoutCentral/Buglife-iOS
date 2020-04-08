
import os
from flask import Flask, request
import base64
import pymongo

app = Flask(__name__)

uri = 'mongodb://'

# Get report from `Buglife` and store to mongodb 
@app.route('/api/v1/reports', methods=['POST'])
def submit_report():
    data = request.json

    client = pymongo.MongoClient(uri, retryWrites=False)
    db = client.get_default_database()
    collection = db['reports']
    collection.insert_one(data)

    client.close()

    return '{\"success\": true}'

if __name__ == '__main__':
    # Threaded option to enable multiple instances for multiple user access support
    app.run(threaded=True, port=5000)