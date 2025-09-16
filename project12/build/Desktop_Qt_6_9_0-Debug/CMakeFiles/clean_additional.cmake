# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appdial_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appdial_autogen.dir/ParseCache.txt"
  "appdial_autogen"
  )
endif()
