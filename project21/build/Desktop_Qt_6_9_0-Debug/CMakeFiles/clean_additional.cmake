# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appcolorDialog_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appcolorDialog_autogen.dir/ParseCache.txt"
  "appcolorDialog_autogen"
  )
endif()
