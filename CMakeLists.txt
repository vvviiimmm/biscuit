# Alex Avramenko 2013

# Project Properties
CMAKE_MINIMUM_REQUIRED (VERSION 2.6.2)
PROJECT (biscuit)
SET (APPLICATION_NAME "Biscuit Nes Emulator")

# to distinguish between debug and release lib
set(CMAKE_DEBUG_POSTFIX "_d")

# Project Output Paths
SET (MAINFOLDER ${PROJECT_SOURCE_DIR})
SET(biscuit_INCLUDE_DIR ${MAINFOLDER}/biscuit/include)
SET(6502_INCLUDE_DIR ${MAINFOLDER}/6502/include)

# Project Search Paths
LIST (APPEND CMAKE_PREFIX_PATH "${MAINFOLDER}")
LIST (APPEND CMAKE_PREFIX_PATH "${MAINFOLDER}/thirdparty")
SET (CMAKE_MODULE_PATH "${MAINFOLDER}/tools/share/cmake")

ADD_SUBDIRECTORY(6502)
ADD_SUBDIRECTORY(thirdparty)
ADD_SUBDIRECTORY(tests)

#
# Locate Project Prerequisites 
#
#SET (Boost_ADDITIONAL_VERSIONS "1.39" "1.39.0" "1.40" "1.40.0" "1.41" "1.41.0" "1.42" "1.42.0" "1.43" "1.43.0" "1.44" "1.44.0" "1.45" "1.45.0" "1.46" "1.46.0" "1.47" "1.47.0" "1.48" "1.48.0" "1.49" "1.49.0" "1.50" "1.50.0")
#FIND_PACKAGE (Boost 1.37 COMPONENTS "date_time" "filesystem" "graph" "iostreams" "program_options" "regex" "serialization" "signals" "system" "thread" "wserialization" REQUIRED)
#INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
#LINK_DIRECTORIES(${Boost_LIBRARY_DIRS})
FIND_PACKAGE (Qt4 REQUIRED)
INCLUDE(UseQt4)
#FIND_PACKAGE (Log4Cxx REQUIRED)
#INCLUDE_DIRECTORIES(${Log4Cxx_INCLUDE_DIRS})
#LINK_DIRECTORIES(${Log4Cxx_LIBRARY_DIRS})
#FIND_PACKAGE (UnitTestPlusPlus REQUIRED)
#INCLUDE_DIRECTORIES(${UnitTestPlusPlus_INCLUDE_DIRS})
#LINK_DIRECTORIES(${UnitTestPlusPlus_LIBRARY_DIRS})

#
# Special hack for switching to 32-bit mode on Snow
# Leopard if Qt has been compiled for 32-bit, only.
#
IF (APPLE)
   IF(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
      EXECUTE_PROCESS(
		COMMAND file "${QT_QTCORE_LIBRARY}"
		COMMAND grep "x86_64" -c
		OUTPUT_VARIABLE QT4_SUPPORTS_X86_64_OUTPUT
      )
      IF (NOT QT4_SUPPORTS_X86_64_OUTPUT MATCHES "0")
          SET(QT4_SUPPORTS_X86_64 1)
      ELSE (NOT QT4_SUPPORTS_X86_64_OUTPUT MATCHES "0")
          SET(QT4_SUPPORTS_X86_64 0)
      ENDIF (NOT QT4_SUPPORTS_X86_64_OUTPUT MATCHES "0")

      IF (QT4_SUPPORTS_X86_64)
          SET(CMAKE_OSX_ARCHITECTURES x86_64)
      ELSE (QT4_SUPPORTS_X86_64)
          SET(CMAKE_OSX_ARCHITECTURES i386)
      ENDIF (QT4_SUPPORTS_X86_64)
   ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
ENDIF (APPLE)

# Add Build Targets
ADD_SUBDIRECTORY(biscuit)


# Add Install Targets
IF (EXISTS "${MAINFOLDER}/include/${PROJECT_NAME}" AND IS_DIRECTORY "${MAINFOLDER}/include/${PROJECT_NAME}")
    INSTALL(DIRECTORY "${MAINFOLDER}/include/${PROJECT_NAME}" DESTINATION "include")
ENDIF (EXISTS "${MAINFOLDER}/include/${PROJECT_NAME}" AND IS_DIRECTORY "${MAINFOLDER}/include/${PROJECT_NAME}")