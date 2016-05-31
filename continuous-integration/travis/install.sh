set -e
MINICONDA_URL="http://repo.continuum.io/miniconda"
if [ $TRAVIS_OS_NAME == 'osx' ]; then
  MINICONDA_FILE="Miniconda-latest-MacOSX-x86_64.sh"
else
  MINICONDA_FILE="Miniconda-latest-Linux-x86_64.sh"
fi
wget "${MINICONDA_URL}/${MINICONDA_FILE}"
bash $MINICONDA_FILE -b -p ~/miniconda

export PATH=~/miniconda/bin:$PATH

conda update --yes conda
conda install --yes pip conda-build jinja2 anaconda-client
