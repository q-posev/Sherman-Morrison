#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
# initialize autoconf
AC_INIT([sherman], [0.0.1], [https://github.com/q-posev/Sherman-Morrison])
# initialize automake
AM_INIT_AUTOMAKE([foreign subdir-objects silent-rules -Wall 1.11])
# initialize libtool
LT_INIT

# set srcdir variable to the location of the file below 
AC_CONFIG_SRCDIR([Makefile.in])
# produce header config with all defined variables like HAS_SMTH 
AC_CONFIG_HEADERS([include/config.h])
AC_CONFIG_MACRO_DIR([m4])

# ================ C++ compiler characteristics ================ #
AC_LANG(C++)
# search for the C++ compiler
AC_PROG_CXX
# check if the C++ compiler accepts -c and -o simultaneously
AC_PROG_CXX_C_O
# add compiler flag to specify C++ standard used
CXXFLAGS="${CXXFLAGS} -std=c++11"

# call the m4 macro to locate HDF5
AX_LIB_HDF5()

# pre-append compiler and linking flags with the one of HDF5
CXXFLAGS="${HDF5_CFLAGS} ${CXXFLAGS}"
CPPFLAGS="${HDF5_CPPFLAGS} ${CPPFLAGS}"
LDFLAGS="${HDF5_LDFLAGS} ${LDFLAGS}"
LIBS="${HDF5_LIBS} ${LIBS} -lhdf5_cpp"

# the name of the output
AC_CONFIG_FILES([Makefile])

AC_OUTPUT

echo \
"-------------------------------------------------

${PACKAGE_NAME} Version ${PACKAGE_VERSION}

Prefix ........:  ${prefix}
CXX ...........:  ${CXX}
CPPFLAGS ......:  ${CPPFLAGS}
CXXFLAGS ......:  ${CXXFLAGS}
LDFLAGS .......:  ${LDFLAGS}
LIBS ..........:  ${LIBS}

Package features:
  Compilation with HDF5 ..:  ${with_hdf5}
  HDF5 version ...........:  ${HDF5_VERSION}

--------------------------------------------------"

