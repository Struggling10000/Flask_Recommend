#!/usr/bin/python
# -*- coding:utf-8 -*-

import json
import uuid

import pymysql
from flask import *
from flask_cors import *

# import CFAlgorithm
import mysql
from bean import User
from bean import Record

"""webapp"""

app = Flask(__name__)
app.secret_key = 'flaskapp'

mysql = mysql.mysql()


''' @app.before_request
def direct():
    pass '''


@app.route("/")
def index():
    print(uuid.uuid1())
    return "/"

# 注册


@app.route("/reg", methods=["POST"])
def signUp():
    if request.method == "POST":
        params = json.loads(str(request.get_data().decode("utf-8")))
        print(params)
        name = params.get('user')
        psw = params.get('passwd')
        sex = params.get('sex')
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
        u = mysql.selectFromUserByUsername(user.userName)
        result = None
        if not u.userName:
            result = mysql.insertIntoUser(user)
        else:
            return jsonify({
                'code': 207,
                'data': "user is exits"
            })
        # if not (result is None)
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
        name = params.get('user')
        psw = params.get('passwd')

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
        if psw == user.userPassword:
            # 生成uuid 用做token
            session['token'] = uuid.uuid1()
            # 保存用户名
            session['user'] = user.userName
            return jsonify({
                'code': 200,
                'data': user.toJson(),
                'token': session.get('token')
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

# 提交购买数据


@app.route("/buy", methods=["POST"])
def buy():
    if request.method == "POST":
        params = json.loads(str(request.get_data().decode("utf-8")))
        token = params.get('token')

        # print(token)
        # if token != session.get('token'):
        #     return jsonify({
        #         'code': 201,
        #         'data': 'auth fail'
        #     })
        records = params.get('records')
        if not records or not token:
            return jsonify({
                'code': 203,
                'data': 'params error'
            })

        li = []
        for arr in records:
            tmprecord = Record()
            tmprecord.user_id = arr[0]
            tmprecord.itemId = arr[1]
            tmprecord.item_num = arr[2]
            li.append(tmprecord)
        
        if mysql.insertIntoRecord(li):
            return jsonify({
                'code': 200,
                'data': 'success'
            })
        return jsonify({
            'code': 201,
            'data': 'fail'
        })


if __name__ == "__main__":
    # 设置跨域访问
    CORS(app, supports_credentials=True)
    app.debug = True
    app.run(host='0.0.0.0', port=9000)
