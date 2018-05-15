# -*- coding: utf-8 -*-
import os
import json
from cmd import execute_command


def validate_images():
    pathAPKs = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/apksTested"

    original = ""
    mutant = ""
    resultImage = ""
    count = 0
    for folderName in os.listdir(pathAPKs):
        count = 0
        for root, dirs, files in os.walk(pathAPKs + "/"+ folderName):
            for fileName in files:
                if fileName.lower().endswith('.png'):
                    count = count + 1

            if count != 11:
                print pathAPKs + "/"+ folderName


if __name__ == "__main__":
    validate_images()
