import shutil
import time
import os

from cmd import execute_command


def sign_apks():
    path = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/apks"
    print ()
    print "Init sign process: " + time.strftime("%H:%M:%S")
    for folderName in os.listdir(path):
        os.chdir(path + "/" + folderName)
        print folderName
        print execute_command(["calabash-android", "resign", "signed-carreport.apk"])

    print "end sign process " + time.strftime("%H:%M:%S")


if __name__ == "__main__":
    sign_apks()
