class User(dict):
    userId = 0
    userName = None
    userPassword = None
    userSex = False
    userlive = False

    def toJson(self):
        return{
            'userId': self.userId,
            'userName': self.userName,
            # 'userPassword': self.userPassword,
            'userSex': self.userSex,
            'userlive': self.userlive
        }
