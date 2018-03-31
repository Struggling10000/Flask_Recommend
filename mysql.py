# 配置文件
import contextlib

# 上下文管理
# 数据库操作库
import pymysql

import config
from bean import Record, User


class mysql(object):
    db = None
    # 初始化数据库

    def __init__(self):
        self.open()

    # 打开数据库连接
    def open(self, url=None, user=None, password=None, dbname=None):
        try:
            if url is None:
                url = config.db_host
            if user is None:
                user = config.db_user
            if user is None:
                password = config.db_password
            if user is None:
                dbname = config.db_name
            self.db = pymysql.connect(
                url, user, password, dbname, use_unicode=True, charset="utf8")
        except Exception as e:
            print(e)

    # 获取游标并在操作完成后关闭数据库，使用with方式操作
    @contextlib.contextmanager
    def cs(self):
        if self.db is None:
            self.open()
        cursor = self.db.cursor()
        try:
            yield cursor
        except Exception as e:
            print(e)
        finally:
            try:
                self.db.commit()
            except Exception as e:
                print(e)
                self.db.rollback()
            cursor.close()

    # 关闭数据库连接
    def close(self):
        try:
            self.db.close()
        except Exception as e:
            print(e)

    # 从item表获取数据
    def selectFromItem(self, sql=None):
        data = []
        if sql is None:
            sql = '''SELECT * FROM commodititem.item LIMIT 0, 1000'''
        with self.cs() as cursor:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                data.append({
                    'itemId': row[0],
                    'itemTitle': row[1],
                    'itemPrice': row[2],
                    'itemImg': row[3]
                })
        return data
    # 从user表以登陆名查询用户

    def selectFromUserByUsername(self, name):
        if name is None:
            return
        sql = '''SELECT * FROM commodititem.user WHERE user_name=%s'''
        user = None
        with self.cs() as cursor:
            cursor.execute(sql, name)
            result = cursor.fetchone()
            if result is not None:
                print(result)
                user = User()
                user.userId = result[0]
                user.userName = result[1]
                user.userSex = result[2]
                user.userPassword = result[3]
                user.userlive = result[4]
        return user
    # 插入一个用户记录

    def insertIntoUser(self, user):
        if user is None:
            return
        if not isinstance(user, User):
            return
        sql = "INSERT INTO commodititem.user(user_name,user_password,user_sex,user_live) VALUES(%s,%s,%s,%s)"
        result = None
        with self.cs() as cursor:
            result = cursor.execute(sql, (user.userName, user.userPassword,
                                          user.userSex, user.userlive))
        print(result)
        return result
    # 通过itemId查询购买记录

    def selectFromRecordByitemId(self, itemId, user_id):
        if itemId is None:
            return None
        sql = "SELECT COUNT(*) FROM commodititem.`record` WHERE itemId=%s  AND user_id=%s"
        with self.cs() as cursor:
            result = cursor.execute(sql % (itemId, user_id))
        return result
    # 插入多条购物记录

    def insertIntoRecord(self, records):
        if records is None:
            return
        if len(records) < 1:
            return
        insertsql = "INSERT INTO commodititem.record(user_id,itemId,item_num) VALUES(%s,%s,%s)"
        updatesql = "UPDATE	commodititem.`record` SET item_num= item_num+1 WHERE itemId=%s"
        result = None
        # print(records)
        with self.cs() as cursor:
            for rs in records:
                if not self.selectFromRecordByitemId(rs.itemId, rs.user_id):
                    result = cursor.execute(
                        insertsql % (rs.user_id, rs.itemId, rs.item_num))
                else:
                    result = cursor.execute(updatesql, rs.itemId)
        # print(result)
        return result
    # 查询购物记录

    def selectFromRecord(self):
        sql = "SELECT user_id,itemId,item_num FROM commodititem.`record`"
        data = []
        with self.cs() as cursor:
            cursor.execute(sql)
            results = cursor.fetchall()
            for row in results:
                data.append({
                    'user_id': row[0],
                    'itemId': row[1],
                    'item_num': row[2],
                })
        return data
