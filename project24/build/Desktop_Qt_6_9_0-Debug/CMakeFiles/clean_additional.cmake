# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appfolderdialog_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appfolderdialog_autogen.dir/ParseCache.txt"
  "appfolderdialog_autogen"
  )
endif()
