set -e
if [ $CONDA_PY = 34 ] && [ $BUILD_ARGH ]; then
  export BUILD_ARGH=conda build conda-recipes/argh --quiet
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $CONDA_PY = 34 ] && [ $BUILD_PATHTOOLS ]; then
  export BUILD_PATHTOOLS=conda build conda-recipes/pathtools --quiet
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $CONDA_PY = 34 ] && [ $BUILD_WATCHDOG ]; then
  export BUILD_WATCHDOG=conda build conda-recipes/watchdog --quiet -c file://$CONDA_BLD_PATH
fi

if [ $BUILD_ATOM ]; then
  export BUILD_ATOM=conda build conda-recipes/atom --quiet
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $BUILD_KIWISOLVER ]; then
  export BUILD_KIWISOLVER=conda build conda-recipes/kiwisolver --quiet
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi
if [ $BUILD_ENAML ]; then
  export BUILD_ENAML=conda build conda-recipes/enaml --quiet  -c file://$CONDA_BLD_PATH
fi
