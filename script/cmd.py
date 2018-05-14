import subprocess

class ResultCMD(object):
    """docstring for ResultCMD."""
    def __init__(self, output, error):
        self.output = output
        self.error = error


def execute_command(cmd):
    my_process = subprocess.Popen(cmd,
                                  stdout=subprocess.PIPE,
                                  stderr=subprocess.PIPE, shell=True)
    out, error = my_process.communicate()
    return ResultCMD(out,error)
