set -e
if [ $BUILD_ARGH ]; then
  conda build conda-recipes/argh --quiet
  export BUILD_ARGH=$?
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $BUILD_PATHTOOLS ]; then
  conda build conda-recipes/pathtools --quiet
  export BUILD_PATHTOOLS=$?
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $BUILD_WATCHDOG ]; then
  conda build conda-recipes/watchdog --quiet -c file://$CONDA_BLD_PATH
  export BUILD_WATCHDOG=$?
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
  PACK=&(conda build conda-recipes/watchdog --output)
  conda convert $PACK -p win-32 win-64 --quiet
fi

if [ $BUILD_ATOM ]; then
  conda build conda-recipes/atom --quiet
  export BUILD_ATOM=$?
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi

if [ $BUILD_KIWISOLVER ]; then
  conda build conda-recipes/kiwisolver --quiet
  export BUILD_KIWISOLVER=$?
  conda index $CONDA_BLD_PATH/$TRAVIS_OS_NAME-64
fi
if [ $BUILD_ENAML ]; then
  conda build conda-recipes/enaml --quiet  -c file://$CONDA_BLD_PATH
  export BUILD_ENAML=$?
fi
