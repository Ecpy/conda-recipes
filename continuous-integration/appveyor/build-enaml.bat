REM Build and test the package. This appears(?) to sporadically fail due to a
REM bug in conda-build on 32 bit python.
REM https://github.com/conda/conda-build/issues/152

if %BUILD_ENAML% == 0 (
  conda build .\\conda-recipes\\enaml --quiet --keep-old-work
)
