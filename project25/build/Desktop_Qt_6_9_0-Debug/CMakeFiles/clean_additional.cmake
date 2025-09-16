# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appfontdialog_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appfontdialog_autogen.dir/ParseCache.txt"
  "appfontdialog_autogen"
  )
endif()
