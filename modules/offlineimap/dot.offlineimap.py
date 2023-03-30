#!/usr/bin/python
import re, os
from subprocess import check_output

def get_password():
    return check_output("gpg -dq ~/.offlineimap.gpg", shell=True)
