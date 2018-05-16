# Install script for directory: /opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rpc" TYPE FILE FILES
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/des_crypt.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/clnt.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/netdb.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/auth_unix.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/types.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/pmap_clnt.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/rpc_des.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/pmap_rmt.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/svc.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/key_prot.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/compat.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/xdr.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/rpc_msg.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/auth_des.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/auth.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/pmap_prot.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/rpc.h"
    "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/rpc/svc_auth.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/librpc.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librpc.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/opt/rt-n56u_musl/trunk/libs/librpc/librpc-uclibc/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
