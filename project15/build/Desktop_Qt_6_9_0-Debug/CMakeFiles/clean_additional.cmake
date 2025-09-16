# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appDrawer_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appDrawer_autogen.dir/ParseCache.txt"
  "appDrawer_autogen"
  )
endif()
