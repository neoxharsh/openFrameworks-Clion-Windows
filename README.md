# oF-Clion-Windows
OpenFrameworks Clion Template for Windows 

This is a working template for Open Frameworks for CLion on Windows

This is based on the msys2 port, so download and setup msys2 as shown in the openframework website. Then in Clion configure the toolchain to use the msys2 mingw port. This is necessary as the msys2 port have a package manager that is used to install various dependency. Make sure you follow the steps exactly upto compiling the framework.

Clone or download my repository.

Now once everything is set, open the CMakeLists.txt and on the second line, edit the path of openframwork and point it to the location where you have saved your offramework. Now make sure you copy the folder inside the _copy to of_ folder to the root direcroty of openFramwork. This is necessary as the cario-render is pointing to invalid location. 

Remember the main files that matters the most are 
```
CMakeLists.txt
includelist.cmake
```

```
The source file, as they are specific for making an openFramework applicaion.
The modified cario-render.h file that is present in the _copy to of folder.
```

If something is wrong than try making a new C++ executable project and simply copy the includelist.cmake file to the root directory and paste this below the ""project(#projectname#)"" and remove all the previous content. Set the SOURCES_FILES according to your project.

```
set(OF_MAIN_DIR C:/Users/neo/Downloads/of_v0.9.8_msys2_release/of_v0.9.8_msys2_release/)
include(includelist.cmake)
find_package(PkgConfig REQUIRED)
pkg_search_module(CAIRO REQUIRED cairo)
pkg_search_module(ZLIB REQUIRED zlib)
pkg_search_module(GLEW REQUIRED glew)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
set(SOURCE_FILES src/main.cpp src/ofApp.h src/ofApp.cpp)
add_executable(untitled2 ${SOURCE_FILES})
configure_file(${FMODEX_DIR}/lib/msys2/fmodex.dll ${CMAKE_CURRENT_BINARY_DIR} COPYONLY)
```
