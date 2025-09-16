# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/apppage_tabBar_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/apppage_tabBar_autogen.dir/ParseCache.txt"
  "apppage_tabBar_autogen"
  )
endif()
