REM Build and test the package. This appears(?) to sporadically fail due to a
REM bug in conda-build on 32 bit python.
REM https://github.com/conda/conda-build/issues/152
REM
REM Once built the conda packages are moved into the current directory, to
REM register them as "artifacts" for Appveyor. cmd.exe does't have good
REM globbing, so we'll use a simple python script.

if %BUILD_ATOM%==0 (
  conda build .\\conda-recipes\\atom --quiet
  conda index %CONDA_BLD_PATH%\win-%PYTHON_ARCH%
)

if %BUILD_KIWISOLVER%==0 (
  conda build .\\conda-recipes\\kiwisolver --quiet
  conda index %CONDA_BLD_PATH%\win-%PYTHON_ARCH%
)

if %BUILD_ENAML%==0 (
  conda build .\\conda-recipes\\enaml --quiet -c file://%CONDA_BLD_PATH%
)