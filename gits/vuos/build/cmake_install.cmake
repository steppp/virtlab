# Install script for directory: /home/stefano/Documents/virtlab/gits/vuos

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/stefano/Documents/virtlab/gits/vuos/build/scripts/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/umvu/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/cmd/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/test_modules/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/libvumod/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vufuse/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vudev/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/include/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vunet/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vufs/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vumisc/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vunet_modules/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vufuse_modules/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/vumisc_modules/cmake_install.cmake")
  include("/home/stefano/Documents/virtlab/gits/vuos/build/man/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/stefano/Documents/virtlab/gits/vuos/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
