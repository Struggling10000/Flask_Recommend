import mysql
import bean
import random
mysql = mysql.mysql()

li = []
for i in range(1,5):
    tmp = bean.Record()
    random.seed()
    tmp.itemId = random.random()*10000
    random.seed()
    tmp.item_num =  random.random()*10000
    random.seed()
    tmp.user_id = random.random()*10000
    li.append(tmp)
# print(mysql.insertIntoRecord(li))