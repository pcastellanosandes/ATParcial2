import shutil
import time
import datetime
import os

from cmd import execute_command


def execute_calabash_tests():
    testsPath = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/TestsCalabash"
    pathAPKs = "C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/apks"
    os.chdir(testsPath)
    result_file = open("C:/Users/paula/Documents/PruebasAutomaticas/ATParcial2/result.txt", "w")

    for folderName in os.listdir(pathAPKs):
        print "Init calabash tests for: "+folderName+ " - "+time.strftime("%H:%M:%S")
        result = execute_command(["calabash-android", "run", pathAPKs +"/" +folderName + "/signed-carreport.apk"])
        validate_was_successful(result, folderName, result_file)

        #move images to the apk folder
        for root, dirs, files in os.walk(testsPath):
            for filename in files:
                if filename.lower().endswith('.png'):
                    fromPath = testsPath+ "/" + filename
                    toPath= pathAPKs +"/" +folderName + "/" + filename
                    shutil.move(fromPath, toPath)

        print "End execution tests "+time.strftime("%H:%M:%S")

    result_file.close()

def validate_was_successful(result, folderName, result_file):
    all_scenarios = False
    all_steps = False
    for line in result.output:
        print line
        if "6 scenarios (6 passed)" in line:
            all_scenarios = True
        if "136 steps (136 passed)" in line:
            all_steps = True

    if not all_scenarios or not all_steps:
        print "bad apk: "+folderName
        result_file.write(folderName + "\n")
        result_file.writelines(result.output)
        result_file.write("------------------------------------------------------------------------------------------------------------------------------------------------------\n\n\n\n")




if __name__ == "__main__":
    execute_calabash_tests()
