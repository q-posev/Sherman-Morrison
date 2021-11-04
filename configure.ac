#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

# Initialize autoconf
AC_INIT([sherman-morrison], [0.0.1], [])

# Initialize automake (foreign needed to ignore missing NEW, AUTHORS etc.) 
AM_INIT_AUTOMAKE([foreign subdir-objects silent-rules -Wall 1.11])

# do the tests with C++ flags
AC_LANG(C++)
# search for the C++ compiler
AC_PROG_CXX
# check if the C++ compiler accepts -c and -o simultaneously
AC_PROG_CXX_C_O

AC_CONFIG_FILES([Makefile])

AC_OUTPUT

echo \
"-------------------------------------------------

${PACKAGE_NAME} Version ${PACKAGE_VERSION}

CXX ...........:  ${CXX}
CXXFLAGS ......:  ${CXXFLAGS}
CPPFLAGS ......:  ${CPPFLAGS}
LDFLAGS .......:  ${LDFLAGS}
LIBS ..........:  ${LIBS}

Package features:
  Compilation with HDF5 ..:  ${with_hdf5}
  HDF5 version ...........:  ${HDF5_VERSION}

--------------------------------------------------"
 
