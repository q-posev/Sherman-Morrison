#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

# Initialize autoconf
AC_INIT([sherman-morrison], [0.0.1], [])

# do the tests with C++ flags
AC_LANG(C++)
# search for the C++ compiler
AC_PROG_CXX
# check if the C++ compiler accepts -c and -o simultaneously
AC_PROG_CXX_C_O

# tell Autoconf the name of directory with external M4 macros
AC_CONFIG_MACRO_DIR([m4])
# call the m4 macro to locate the HDF5 library
AX_LIB_HDF5()

# raise an error if HDF5 is missing
if test "x${with_hdf5}" = xno; then
  AC_MSG_ERROR([
    ------------------------------------------
    Configuring with the HDF5 library is
    required to build this project.
    ------------------------------------------])
fi

# prepend compiler and linking flags with that of HDF5
CXXFLAGS="${HDF5_CFLAGS} ${CXXFLAGS} -std=c++11"
CPPFLAGS="${HDF5_CPPFLAGS} ${CPPFLAGS} -I./include/"
LDFLAGS="${HDF5_LDFLAGS} ${LDFLAGS}"
LIBS="${HDF5_LIBS} ${LIBS} -lhdf5_cpp"

# clean the output of AX_LIB_HDF5 macro since the same variables are substitutted by PKG_CHECK_MODULES
HDF5_CFLAGS=""
HDF5_LIBS=""
# locate HDF5 with pkg-config
PKG_CHECK_MODULES([HDF5], [hdf5 >= 1.8], [], [
    AC_MSG_WARN([HDF5 was not detected with pkg-config.])
    ])

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
  .........................
  pkg-config CFLAGS ......:  ${HDF5_CFLAGS}
  pkg-config LIBS ........:  ${HDF5_LIBS}

--------------------------------------------------"
 
