# -*- coding: utf-8 -*-

import sys
import numpy
import scipy
from sklearn.datasets import load_files
from sklearn.metrics import (auc, classification_report,
                             precision_recall_curve, roc_curve)


class CFAlgorithm:

    # 全部数据矩阵
    data = [[]]
    # 用户ID与商品ID矩阵
    userIDAndItemID = [[]]
    # 每个用户收藏商品数量矩阵
    itemNum = []
    # 用户数
    nUser = 0
    # 商品数
    nItem = 0
    # 相似商品矩阵
    ItemLikeness = [[]]

    # 存储矩阵
    x = [[]]
    y = [[]]

    # input : 商品ID  数据文件路径
    def __init__(self, itemID, path=None):
        if path is None:
            path = sys.path[0] + '\data.txt'
            print(path)
        try:
            self.loadData(path)
        except FileNotFoundError as e:
            print(e)
            print("无法加载数据文件:" + path)
            exit(1)
        self.splitData(self.data)
        self.train(itemID)

    # 计算vector与data中每一个向量数据的相关系数
    def calRelation(self, vector, data):
        return numpy.array(
            [numpy.corrcoef(vector, c)[0, 1] for c in data]
        )

    # 使用luispedro的加速函数(相似度计算)
    def acceCorrelation(self, X, y):
        X = numpy.asanyarray(X, float)
        y = numpy.asanyarray(y, float)
        xy = numpy.dot(X, y)
        y_ = y.mean()
        ys_ = y.std()
        x_ = X.mean(1)
        xs_ = X.std(1)
        n = float(len(y))
        ys_ += 1e-5  # Handle zeros in ys
        xs_ += 1e-5  # Handle zeros in x
        return (xy - x_ * y_ * n) / n / xs_ / ys_

    # 加载数据
    # D:\Project\Python\work_py\data.txt
    # 格式: 用户ID 商品ID 商品数量
    def loadData(self, path):
        self.data = numpy.loadtxt(path)
        # 取前2列 x_p
        # 用户ID与商品ID
        self.userIDAndItemID = self.data[:, :2]
        # 最后1列 y_p
        # 每个用户收藏商品数量
        self.itemNum = self.data[:,  2]
        # 矩阵变换(列压缩矩阵存储)
        self.y = (scipy.sparse.csc_matrix(
            (self.data[:, 2], self.userIDAndItemID.T)).astype(float))[:, :].todense()
        # 用户数量 商品数量
        self.nUser, self.nItem = self.y.shape
        # 初始化存储矩阵
        self.Item_likeness = numpy.zeros((self.nItem, self.nItem))
        # print(Item_likeness)

    # 加载数据集，切分数据集80%训练，20%测试
    def splitData(self, data):
        self.x = (scipy.sparse.csc_matrix((self.itemNum, self.userIDAndItemID.T)).astype(float))[
            :, :].todense()

    # 计算
    def train(self, itemID):
        if itemID == None:
            raise ValueError
            exit(1)
        for i in range(self.nItem):
            self.Item_likeness[i] = self.calRelation(
                self.x[:, i].T, self.x.T)
            self.Item_likeness[i, i] = -1

        for t in range(self.Item_likeness.shape[1]):
            if itemID == t:
                item = self.Item_likeness[t].argsort()[-3:]
                print("Buy Item %d will buy item %d,%d,%d " %
                      (t, item[0], item[1], item[2]))
                break


