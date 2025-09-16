cmake_minimum_required(VERSION 3.16)

project(applicationWindow VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appapplicationWindow
    main.cpp
)

qt_add_qml_module(appapplicationWindow
    URI applicationWindow
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        images/copyIcon.png
        images/cutIcon.png
        images/info.png
        images/newFileIcon.png
        images/openIcon.png
        images/pasteIcon.png
        images/quitIcon.png
        images/redoIcon.png
        images/saveAsIcon.png
        images/saveIcon.png
        images/undoIcon.png
    RESOURCE_PREFIX /
    QML_FILES Page1.qml
    QML_FILES Page2.qml
    QML_FILES Page3.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appapplicationWindow PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appapplicationWindow
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appapplicationWindow
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appapplicationWindow
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
