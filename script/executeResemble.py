# -*- coding: utf-8 -*-
import os
import json
from cmd import execute_command


def validate_images():
    pathAPKs = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/apksTested"
    pathOrginal = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/OriginalAPK"

    original = ""
    mutant = ""
    resultImage = ""
    for folderName in os.listdir(pathAPKs):
        for root, dirs, files in os.walk(pathOrginal):
            for fileName in files:
                if fileName.lower().endswith('.png'):
                    original = pathOrginal + "/"+fileName
                    mutant = pathAPKs + "/"+ folderName+ "/"+fileName
                    resultImage = pathAPKs + "/"+ folderName+ "/comp_"+fileName
                    print original
                    print mutant
                    print resultImage
                    resultResemble = execute_command(["node", "../Resemble/index.js", original, mutant, resultImage])

                    for line in resultResemble.output:
                        print line
                        data = json.loads(line);
                        print data.get("rawMisMatchPercentage")
                        if data.get("rawMisMatchPercentage") > 0.5:
                            result_file = open("C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/resultResemble.txt", "a")
                            result_file.write(folderName + "\n")
                            result_file.write("Image: "+mutant + "\n")
                            result_file.write(line + "\n")
                            result_file.write("------------------------------------------------------------------------------------------------------------------------------------------------------\n\n\n\n")
                            result_file.close()
                            print "bad apk: "+folderName


if __name__ == "__main__":
    validate_images()
