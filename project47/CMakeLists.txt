cmake_minimum_required(VERSION 3.16)

project(cpp_integration_example VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appcpp_integration_example
    main.cpp
)

qt_add_qml_module(appcpp_integration_example
    URI cpp_integration_example
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES Person.h Person.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appcpp_integration_example PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appcpp_integration_example
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appcpp_integration_example
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appcpp_integration_example
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
