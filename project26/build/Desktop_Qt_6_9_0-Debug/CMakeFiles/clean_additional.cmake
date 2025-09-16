# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/applogin_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/applogin_autogen.dir/ParseCache.txt"
  "applogin_autogen"
  )
endif()
