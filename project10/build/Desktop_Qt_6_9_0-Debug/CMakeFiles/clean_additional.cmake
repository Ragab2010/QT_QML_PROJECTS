# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appsend_signal_between_component_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appsend_signal_between_component_autogen.dir/ParseCache.txt"
  "appsend_signal_between_component_autogen"
  )
endif()
