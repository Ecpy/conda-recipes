REM Build and test the package. This appears(?) to sporadically fail due to a
REM bug in conda-build on 32 bit python.
REM https://github.com/conda/conda-build/issues/152

if %BUILD_ATOM% == 0 (
  conda build .\\conda-recipes\\atom --quiet --keep-old-work
  if %errorlevel% == 0 (conda index %CONDA_BLD_PATH%\win-%PYTHON_ARCH%)
)
