if(NOT LIBFREESRP_FOUND)
  pkg_check_modules (LIBFREESRP_PKG libfreesrp)
  find_path(LIBFREESRP_INCLUDE_DIRS NAMES freesrp.hpp
    PATHS
    ${LIBFREESRP_PKG_INCLUDE_DIRS}
    /usr/include
    /usr/local/include
  )

  find_library(LIBFREESRP_LIBRARIES NAMES freesrp
    PATHS
    ${LIBFREESRP_PKG_LIBRARY_DIRS}
    /usr/lib
    /usr/local/lib
  )

if(LIBFREESRP_INCLUDE_DIRS AND LIBFREESRP_LIBRARIES)
  set(LIBFREESRP_FOUND TRUE CACHE INTERNAL "libfreesrp found")
  message(STATUS "Found libfreesrp: ${LIBFREESRP_INCLUDE_DIRS}, ${LIBFREESRP_LIBRARIES}")
else(LIBFREESRP_INCLUDE_DIRS AND LIBFREESRP_LIBRARIES)
  set(LIBFREESRP_FOUND FALSE CACHE INTERNAL "libfreesrp found")
  message(STATUS "libfreesrp not found.")
endif(LIBFREESRP_INCLUDE_DIRS AND LIBFREESRP_LIBRARIES)

mark_as_advanced(LIBFREESRP_LIBRARIES LIBFREESRP_INCLUDE_DIRS)

endif(NOT LIBFREESRP_FOUND)
