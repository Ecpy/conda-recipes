from __future__ import print_function
import os
import glob
import subprocess
import traceback

token = os.environ['ANACONDA_TOKEN']
cmd = ['anaconda', '-t', token, 'upload', '--force']
packages = []
for anchor in ('noarch', 'linux-64', 'osx-64', 'win-32', 'win-64'):
    packages.extend(glob.glob(anchor + '/*.tar.bz2'))
print('Found packages are :\n', packages)
cmd.extend(packages)
try:
    subprocess.check_call(cmd)
except subprocess.CalledProcessError:
    traceback.print_exc()
