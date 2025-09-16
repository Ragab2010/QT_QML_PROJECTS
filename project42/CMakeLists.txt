cmake_minimum_required(VERSION 3.16)

project(States_with_Gradients VERSION 0.1 LANGUAGES CXX)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appStates_with_Gradients
    main.cpp
)

qt_add_qml_module(appStates_with_Gradients
    URI States_with_Gradients
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES source.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appStates_with_Gradients PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appStates_with_Gradients
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appStates_with_Gradients
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appStates_with_Gradients
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
