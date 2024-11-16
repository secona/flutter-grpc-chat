# Install script for directory: /home/secona/dev/sandbox/flutter-grpc-chat/linux

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/nix/store/qajfjv5lnfys2ykm0ggkr4lnnkvgs10r-clang-wrapper-18.1.8/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/")
  
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat"
         RPATH "$ORIGIN/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle" TYPE EXECUTABLE FILES "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/intermediates_do_not_run/flutter_grpc_chat")
  if(EXISTS "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat"
         OLD_RPATH "/home/secona/dev/sandbox/flutter-grpc-chat/linux/flutter/ephemeral:/nix/store/3xs715zn5mm3isblz1qxa78zwnlhhjgx-gtk+3-3.24.43/lib:/nix/store/10k33rnk8606ig3wbw0pbry0r12pcnv9-pango-1.54.0/lib:/nix/store/rkwmdzjgn1giq1rfgy38r54fynvh56gp-harfbuzz-9.0.0/lib:/nix/store/3jpjspgw046agqz55fkppx8jgx7m6pxg-at-spi2-core-2.54.0/lib:/nix/store/ydh8c59mzliwy6pvjbrmzvgirryn96qh-cairo-1.18.2/lib:/nix/store/fhyych2v4y5p9pm13rwqcayf19gzdkcj-gdk-pixbuf-2.42.12/lib:/nix/store/ipqijizc7rqsxifxc6ky16hr5l0hpls2-glib-2.82.1/lib:"
         NEW_RPATH "$ORIGIN/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/nix/store/qajfjv5lnfys2ykm0ggkr4lnnkvgs10r-clang-wrapper-18.1.8/bin/strip" "$ENV{DESTDIR}/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/flutter_grpc_chat")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/data/icudtl.dat")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/data" TYPE FILE FILES "/home/secona/dev/sandbox/flutter-grpc-chat/linux/flutter/ephemeral/icudtl.dat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/lib/libflutter_linux_gtk.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/lib" TYPE FILE FILES "/home/secona/dev/sandbox/flutter-grpc-chat/linux/flutter/ephemeral/libflutter_linux_gtk.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/lib/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/lib" TYPE DIRECTORY FILES "/home/secona/dev/sandbox/flutter-grpc-chat/build/native_assets/linux/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/data/flutter_assets")
  
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/data/flutter_assets")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/bundle/data" TYPE DIRECTORY FILES "/home/secona/dev/sandbox/flutter-grpc-chat/build//flutter_assets")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/flutter/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/home/secona/dev/sandbox/flutter-grpc-chat/build/linux/x64/debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
