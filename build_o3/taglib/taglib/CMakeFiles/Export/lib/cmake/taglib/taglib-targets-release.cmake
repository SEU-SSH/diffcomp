#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TagLib::tag" for configuration "Release"
set_property(TARGET TagLib::tag APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TagLib::tag PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtag.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS TagLib::tag )
list(APPEND _IMPORT_CHECK_FILES_FOR_TagLib::tag "${_IMPORT_PREFIX}/lib/libtag.a" )

# Import target "TagLib::tag_c" for configuration "Release"
set_property(TARGET TagLib::tag_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TagLib::tag_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libtag_c.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS TagLib::tag_c )
list(APPEND _IMPORT_CHECK_FILES_FOR_TagLib::tag_c "${_IMPORT_PREFIX}/lib/libtag_c.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
