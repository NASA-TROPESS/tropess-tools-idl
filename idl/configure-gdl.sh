echo "GDL (GNU Data Language) support is highly experimental at this point."

# Unset IDL_PATH
export IDL_PATH=""

# configure GDL (GNU Data Language) program search path
# prefer Anaconda environment over local environment
export GDL_PATH="$CONDA_PREFIX/share/gnudatalanguage/lib:/usr/local/share/gnudatalanguage/lib"

# add any paths you want to be searched for IDL files
export GDL_SRC="`pwd`/src"
export GDL_PATH="$GDL_PATH:$GDL_SRC"
export GDL_PATH="$GDL_PATH:$GDL_SRC/collection"
export GDL_PATH="$GDL_PATH:$GDL_SRC/options"