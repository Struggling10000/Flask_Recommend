#!/usr/bin/python
# -*- coding:utf-8 -*-

import json

import pymysql
from flask import *
from flask_cors import *
from bean import User
# import CFAlgorithm
import mysql

"""webapp"""

app = Flask(__name__)
CORS(app, supports_credentials=True)

mysql = mysql.mysql()


@app.route("/")
def index():
    return "recommend"

# 注册
@app.route("/reg", methods=["POST"])
def signUp():
    if request.method == "POST":
        params = json.loads(str(request.get_data().decode("utf-8")))
        print(params)
        name = params['user']
        psw = params['passwd']
        sex = params['sex']
        # 默认为0,即False
        if not sex:
            sex = 0
        if not name or not psw:
            return jsonify({
                'code': 201,
                'data': "bad request"
            })
        user = User()
        user.userName = name
        user.userPassword = psw
        user.userSex = sex
        result = mysql.insertIntoUser(user)
        # if not (x is None)
        if not result:
            return jsonify({
                'code': 204,
                'data': "fail"
            })
        if result == 1:
            return jsonify({
                'code': 200,
                'data': "success"
            })
        return jsonify({
                'code': 205,
                'data': "all file"
            })

# 登陆
@app.route("/login", methods=["POST"])
def signIn():

    if request.method == "POST":
        # 参数utf-8编码再转str最后以json字符串方式变成对象
        params = json.loads(str(request.get_data().decode("utf-8")))
        print(params)
        name = params['user']
        psw = params['passwd']

        if not name or not psw:
            return jsonify({
                'code': 201,
                'data': "bad request"
            })
        user = mysql.selectFromUserByUsername(name)
        if user is None:
            return jsonify({
                'code': 203,
                'data': 'no user'
            })
        print(psw)
        print(user.userPassword)
        if psw == user.userPassword:
            # 对象转dict再json字符串化
            return jsonify({
                'code': 200,
                'data': json.dumps(user.__dict__)
            })
        else:
            return jsonify({
                'code': 202,
                'data': 'bad password'
            })

# 主页数据
@app.route("/data")
def getData():
    if request.method == "GET":
        # 查询数据库
        data = mysql.selectFromItem()
        return jsonify({
            'code': 200,
            'data': data
        })


if __name__ == "__main__":
    app.debug = True
    app.run(host='0.0.0.0', port=9000)
