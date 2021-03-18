# IDL or GDL

## IDL

If you have a working installation of IDL no additional setup is needed. Otherwise for $3,500+ you can buy and download IDL from [Harris Geospatial Solutions](https://www.l3harrisgeospatial.com/).

Alternatively you may choose to build GDL (see below).  That is a bit more involved but it is free.

## GDL

GDL (GNU Data Language) is a free / libre open-source program that runs most IDL code. Specifically, GDL claims to be completely IDL 7.x compatible, and has many features from IDL 8. GDL is actively developed on [GitHub](https://github.com/gnudatalanguage/gdl). 

### Installation

#### macOS

Install the Apple Command Line Tools:

```bash
xcode-select --install
```

Install [Homebrew](https://brew.sh/):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install required libraries:

```bash
brew install cmake libffi gdbm mpdecimal sqlite glib libpthread-stubs xorgproto libxau libxdmcp libxcb libx11 libxext libxrender cairo eigen isl libmpc gcc hwloc open-mpi fftw jasper little-cms2 graphicsmagick gsl hdf5 netcdf icu4c harfbuzz pango udunits readline
```

Build and install GDL:

```bash
# clone
git clone https://github.com/gnudatalanguage/gdl
cd gdl

# checkout latest tag
tag="v1.0.0-rc.3"
git checkout tags/$tag -b $tag

# create build dir
mkdir build
cd build

# configure
cmake .. \
  -Wno-dev \
  -DREADLINEDIR=/usr/local/opt/readline \
  -DOPENMP=OFF \
  -DWXWIDGETS=OFF \
  -DGEOTIFF=OFF \
  -DHDF=OFF \
  -DUDUNITS2=OFF \
  -DGRIB=OFF \
  -DGLPK=OFF \
  -DSHAPELIB=OFF \
  -DPYTHON=OFF

# build
make -j 4

# run tests
make check

# install
sudo make install
```

Test your installation:

```bash
gdl
```

You should see promt similar to this:

```bash
  GDL - GNU Data Language, Version 1.0.0-rc.3
- For basic information type HELP,/INFO
- Default library routine search path used (GDL_PATH/IDL_PATH env. var. not set): /usr/local/share/gnudatalanguage/lib
- No startup file read (GDL_STARTUP/IDL_STARTUP env. var. not set). 
- Please report bugs, feature or help requests and patches at: https://github.com/gnudatalanguage/gdl

GDL> 
```

#### Linux (Ubuntu)

```bash
sudo apt install gnudatalanguage
```

