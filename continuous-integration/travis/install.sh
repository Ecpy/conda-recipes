set -e
MINICONDA_URL="http://repo.continuum.io/miniconda"
MINICONDA_FILE="Miniconda"
if [[ $CONDA_PY == '27' ]]; then
  MINICONDA_FILE+="2"
else
  MINICONDA_FILE+="3"
fi
if [[ $TRAVIS_OS_NAME == 'osx' ]]; then
  MINICONDA_FILE+="-latest-MacOSX-x86_64.sh"
else
  MINICONDA_FILE+="-latest-Linux-x86_64.sh"
fi
wget "${MINICONDA_URL}/${MINICONDA_FILE}"
bash $MINICONDA_FILE -b -p ~/miniconda

export PATH=~/miniconda/bin:$PATH

conda install --yes pip conda-build jinja2 anaconda-client
