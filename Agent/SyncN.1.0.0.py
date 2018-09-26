from Lib import Core, UI, Setting, Auth, NoteSql
from PyQt5 import QtCore, QtGui, QtWidgets
import sys
import time
import os
import requests
import json

class SyncN(object):
    def __init__(self):
        super().__init__()
        # init
        self.debug = True
        self.app = QtWidgets.QApplication(sys.argv)
        # init UI
        self.UI = UI.UI()
        if os.path.exists(Setting.syncn().path): self.UI.authStyle()
        #init auth
        self.OTP = Auth.EmailCert(debug=True)
        # init signal
        self.th_signal = Core.signalThread(debug=True)
        # init MQ
        self.th_mqSender = Core.mqSendThread(debug=True)
        # init MQ
        self.th_mqReciver = Core.mqReciveThread(debug=True)
        
        # init func
        self.connectInterface()
        

        # excute others agent disconnect all then only connect me
    
    def connectInterface(self):
        #define UI
        self.UI.tray.accountAction.triggered.connect(self.UI.windowTrigger)
        self.UI.tray.activated.connect(self.UI.openWindow)
        self.UI.tray.exitAction.triggered.connect(self.UI.proExit)
        self.UI.input_info.textChanged.connect(self.UI.checkInput)
        self.UI.btn_close.clicked.connect(self.UI.proExit)
        self.UI.btn_tray.clicked.connect(self.UI.windowTrigger)

        #define here
        self.UI.input_info.returnPressed.connect(self.proAuth)
        self.UI.btn_ok.clicked.connect(self.proAuth)
        self.UI.tray.logoutAction.triggered.connect(self.proLogout)
        if self.debug: print("[+] Registration Interface")

    def setThreadChannel(self):
        self.th_signal.sync.connect(self.th_mqSender.start)
        # self.th_mqSender.msgRemoveSignal.connect(self.th_mqReciver.start)

    def run(self):
        self.th_mqReciver.start()
        self.disconnectCMD()
        self.setThreadChannel()
        if self.UI.auth: self.th_signal.start()
        self.UI.show()
        
        sys.exit(self.app.exec_())
    
    def proAuth(self):
        if self.UI.auth: return self.UI.windowTrigger()
        if not self.OTP.isCreateOTP:
            # need create OTP
            if not self.OTP.build(self.UI.input_info.text(), "syncn.club:9759"):
                self.UI.l_info.setText("Check Email Address")
                self.UI.l_info.setStyleSheet("color:red;\n")
                return
            else:
                if self.OTP.createOTP():
                    self.UI.l_info.setStyleSheet("color:green;\n")
                    self.UI.l_info.setText("We Sended Auth mail")
                else:
                    self.UI.l_info.setStyleSheet("color:red;\n")
                    self.UI.l_info.setText("Failed send Auth email")
        else:
            # need auth OTP
            if self.OTP.authOTP():
                self.UI.authStyle()
            else:
                self.UI.l_info.setStyleSheet("color:red;\n")
                self.UI.l_info.setText("Auth Failed, Check Email")
    
    def proLogout(self):
        try:
            os.remove(self.UI.syncn["config"])
        except Exception as e:
            print("{0} proLogout, check this {0}".format(__file__, e))
        finally:
            sys.exit(0)

    def disconnectCMD(self):
        
        try:
            config = Setting.syncn().config
            consumerInfo = requests.get(url="{0}/info/queue/{1}".format(config["service"], config["q"]))
            if consumerInfo.status_code == 200:
                print("get info", consumerInfo.text)
                rs = json.loads(consumerInfo.text)["res"]["consumer"]
                for x in range(0, rs):
                    self.th_mqSender.msg = "quit" # all client remove
                    self.th_mqSender.start()
                    self.th_mqSender.wait() # all client remove end
                    time.sleep(1)
            else:
                print("check consumers failed")
                if self.debug: print(json.loads(consumerInfo.text)['e'])
        except Exception as e:
            print("{0} disconnectCMD, check this {1}".format(__file__, e))
            pass

if __name__ == '__main__':
    main = SyncN()
    main.run()