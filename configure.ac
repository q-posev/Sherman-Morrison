#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([sherman], [0.0.1], [https://github.com/q-posev/Sherman-Morrison])

# ================ C++ compiler characteristics ================ #
AC_LANG(C++)
# search for the C++ compiler
AC_PROG_CXX
# check if the C++ compiler accepts -c and -o simultaneously
AC_PROG_CXX_C_O


# ================ Fortran compiler characteristics ================ #
# search for the Fortran compiler
AC_PROG_FC
# modify FCFLAGS_f90 variable if needed for Fortran compiler to accept f90 files
AC_FC_SRCEXT([f90])
# modify FCFLAGS variable if needed to allow free-format source code
AC_FC_FREEFORM
# check if the Fortran compiler accepts -c and -o simultaneously
AC_PROG_FC_C_O


AC_OUTPUT

echo \
"-------------------------------------------------

${PACKAGE_NAME} Version ${PACKAGE_VERSION}

Prefix ........:  ${prefix}
CXX ...........:  ${CXX}
CPPFLAGS ......:  ${CPPFLAGS}
CXXFLAGS ......:  ${CXXFLAGS}
FC ............:  ${FC}
FCLAGS ........:  ${FCFLAGS}

--------------------------------------------------"

