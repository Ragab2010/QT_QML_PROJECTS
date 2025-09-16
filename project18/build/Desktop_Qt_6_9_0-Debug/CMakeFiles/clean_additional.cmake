# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/apprangslider_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/apprangslider_autogen.dir/ParseCache.txt"
  "apprangslider_autogen"
  )
endif()
