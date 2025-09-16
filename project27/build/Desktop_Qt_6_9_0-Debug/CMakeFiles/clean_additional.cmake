# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appmessagedialog_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appmessagedialog_autogen.dir/ParseCache.txt"
  "appmessagedialog_autogen"
  )
endif()
