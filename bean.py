class User(dict):
    userId = 0
    userName = None
    userPassword = None
    userSex = False
    userlive = False

    def toJson(self):
        return {
            'userId': self.userId,
            'userName': self.userName,
            # 'userPassword': self.userPassword,
            'userSex': self.userSex,
            'userlive': self.userlive
        }


class Record(dict):
    record_id = 0
    user_id = 0
    itemId = 0
    item_num = 1

    def toJson(self):
        return {
            'user_id': self.user_id,
            'itemId': self.itemId,
            'item_num': self.item_num
        }
