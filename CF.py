# -*- coding: utf-8 -*-

import math
import mysql
import CFAlgorithm

mysql = mysql.mysql()

class CFItem:
    data=None
    cfAlgorithm = None

    # 第一次初始化
    def __init__(self):
        self.loadData()
    
    # 加载数据
    def loadData(self):
        #user_id,itemId,item_num
        # 从数据库加载
        self.data = mysql.selectFromRecord()
        # 第一次加载直接赋值
        if self.cfAlgorithm is None:
            self.cfAlgorithm = CFAlgorithm.CFAlgorithm(self.data)
        # 第二次加载销毁原来对象再赋值
        else:
            del self.cfAlgorithm
            self.cfAlgorithm = CFAlgorithm.CFAlgorithm(self.data)

    # 返回推荐列表
    def recommend(self):
        if self.data is None or self.cfAlgorithm is None:
            self.loadData()
        return self.cfAlgorithm.calculate()
