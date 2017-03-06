Ecpy dependencies packages
==========================

This repository is used to automatically build conda packages for all Ecpy
dependecies for which a conda package does not exist in the main conda channel.

Each time a commit is pushed to this repo, the commit message is analysed and
all packages mentionned between [] in the commit message are rebuilt and
uploaded to the ecpy anaconda channel.

Appveyor build can be skipped using [skip appveyor]
Travis build can be 'skipped' (no work done) using [skip travis].

Skip both using [ci skip]

Notes
-----
Watchdog has compiled extension only on mac so we do not build under windows

On windows enaml package can be built only if atom and kiwisolver have already
been updated to Anaconda Cloud.

Updating the credentials
------------------------

The api token for Anaconda.org need the following authorizations :
- API operations
- API read operations
- API write operations
- Conda packages operation

The token needs to be properly encrypted using either the travis cmd line tool
or the online appveyor tool and updated in the matching configuration file.


Acknowledgements
----------------

This works is based on https://github.com/rmcgibbo/python-appveyor-conda-example
Enaml/Atom/Kiwisolver recipes were adapted from the ones found at
https://github.com/NSLS-II/auto-build-tagged-recipes/tree/master/enaml-stack
