Ecpy dependencies packages
==========================

This repository is used to automatically build conda packages for all Ecpy
dependecies for which a conda package does not exist in the main conda channel.

Each time a commit is pushed to this repo, the commit message is analysed and
all packages mentionned between [] in the commit message are rebuilt and
uploaded to the ecpy anaconda channel.

Notes
-----
Universal packages are built only on Travis under python 3.4. The universal
packages are :

- argh
- pathtools
- watchdog


Acknowledgements
----------------

This works is based on https://github.com/rmcgibbo/python-appveyor-conda-example
Enaml/Atom/Kiwisolver recipes were adapted from the ones found at
https://github.com/NSLS-II/auto-build-tagged-recipes/tree/master/enaml-stack
