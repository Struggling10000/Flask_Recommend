#!/usr/bin/python
# -*- coding:utf-8 -*-

import json
import CFAlgorithm
import pymysql
from flask import Flask, jsonify, request
from flask_cors import *

"""webapp"""

app = Flask(__name__)
CORS(app, supports_credentials=True)

db = None
cursor = None
sql = '''SELECT * FROM item;'''

data = []
try:
    db = pymysql.connect("45.78.41.83", "tabzjh", "1234567899",
                         "commodititem", use_unicode=True, charset="utf8")
    cursor = db.cursor()

    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        data.append({
            'itemId': row[0],
            'itemTitle': row[1],
            'itemPrice': row[2],
            'itemImg': row[3]
        })
    db.close()
except Exception as e:
    print(e)


@app.route("/")
def index():
    return "recommend"


@app.route("/data")
def getData():
    return jsonify({
        'code': 200,
        'data': data
    })


if __name__ == "__main__":
    app.debug = True
    app.run(host='0.0.0.0', port=9000)
