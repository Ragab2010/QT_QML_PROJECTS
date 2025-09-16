# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appprogressbar_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appprogressbar_autogen.dir/ParseCache.txt"
  "appprogressbar_autogen"
  )
endif()
