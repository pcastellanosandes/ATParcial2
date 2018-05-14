import subprocess

class ResultCMD(object):
    """docstring for ResultCMD."""
    def __init__(self, output):
        self.output = output


def execute_command(cmd):
    my_process = subprocess.Popen(cmd,
                                  stdout=subprocess.PIPE,
                                  stderr=subprocess.PIPE, shell=True)

    return ResultCMD(my_process.stdout)
