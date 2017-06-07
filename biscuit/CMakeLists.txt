# <head>
project(biscuit)
find_package(Qt4 REQUIRED)
set(QT_USE_QTOPENGL TRUE)
include(${QT_USE_FILE}) #contains path to Qt header
add_definitions(${QT_DEFINITIONS})

#set(CMAKE_AUTOMOC TRUE)

# exact same macro as qt4_wrap_ui except in saves generated
# headers into ui/generated/ folder
MACRO (qt4_wrap_ui_ex outfiles )
  QT4_EXTRACT_OPTIONS(ui_files ui_options ${ARGN})

  FOREACH (it ${ui_files})
    GET_FILENAME_COMPONENT(outfile ${it} NAME_WE)
    GET_FILENAME_COMPONENT(infile ${it} ABSOLUTE)
    SET(outfile ${biscuit_INCLUDE_DIR}/ui/generated/ui_${outfile}.h)
    ADD_CUSTOM_COMMAND(OUTPUT ${outfile}
      COMMAND ${QT_UIC_EXECUTABLE}
      ARGS ${ui_options} -o ${outfile} ${infile}
      MAIN_DEPENDENCY ${infile} VERBATIM)
    SET(${outfiles} ${${outfiles}} ${outfile})
  ENDFOREACH (it)

ENDMACRO (qt4_wrap_ui_ex)

# include dirs
include_directories(${biscuit_INCLUDE_DIR})
include_directories(${biscuit_THIRD_PARTY_DIR})
include_directories(${6502_INCLUDE_DIR})

set (SOURCES_GRAPHICS
     sources/graphics/qt_graphics.cpp
)

set (SOURCES
     sources/main.cpp
)

set (INCLUDE_UI
     include/ui/debug_controls.h
     include/ui/main_window.h
)

set (INCLUDE_UI_GENERATED
     include/ui/generated/ui_debug_controls.h
     include/ui/generated/ui_main_window.h
)

set (INCLUDE_APPLICATION
     include/application/application.h
     include/application/message.h
     include/application/messages.h
     include/application/nes_wrapper.h
     include/application/shared_memory.h
)

set (INCLUDE_GRAPHICS
     include/graphics/qt_graphics.h
)

set (SOURCES_UI
     sources/ui/debug_controls.cpp
     sources/ui/main_window.cpp
)

set (SOURCES_APPLICATION
     sources/application/application.cpp
     sources/application/nes_wrapper.cpp
     sources/application/shared_memory.cpp
)

set (UI
     ui/debug_controls.ui
     ui/main_window.ui
)

set (INCLUDE
)

qt4_wrap_ui_ex(UI_HEADERS 
     ${UI}
)

# <target_header>
qt4_wrap_cpp(MOCCED_FILES ${INCLUDE_UI}) # folder dependent thing, carful
add_executable(biscuit
	${MOC_SOURCES} # 
	${UI_HEADERS} # this vars are defined in cmakelists generator script
	${QRC_RESOURCES} #
  ${MOCCED_FILES}

    ${INCLUDE}
    ${SOURCES_APPLICATION}
    ${INCLUDE_UI_GENERATED}
    ${INCLUDE_APPLICATION}
    ${SOURCES}
    ${INCLUDE_GRAPHICS}
    ${SOURCES_UI}
    ${SOURCES_GRAPHICS}
    ${UI}
    ${INCLUDE_UI}
)

# <lib_settings>
set(BISCUIT_COMPILE_DEFINITIONS 
    NOMINMAX;
    _CRT_SECURE_NO_WARNINGS
)

set_target_properties(biscuit PROPERTIES
						FOLDER "biscuit"
						CLEAN_DIRECT_OUTPUT 1
						VERSION 1
						COMPILE_DEFINITIONS "${biscuit_COMPILE_DEFINITIONS}"
					  )

target_link_libraries(biscuit ${QT_LIBRARIES} 6502_static)

# <source_group>
source_group(sources\\moc FILES ${MOCCED_FILES})
source_group(include\\ui\\generated FILES ${UI_HEADERS})
source_group(qt_generated\\rc FILES ${QRC_RESOUCES})
source_group(include FILES ${INCLUDE})
source_group(sources\\application FILES ${SOURCES_APPLICATION})
source_group(include\\ui\\generated FILES ${INCLUDE_UI_GENERATED})
source_group(include\\application FILES ${INCLUDE_APPLICATION})
source_group(sources FILES ${SOURCES})
source_group(include\\graphics FILES ${INCLUDE_GRAPHICS})
source_group(sources\\ui FILES ${SOURCES_UI})
source_group(sources\\graphics FILES ${SOURCES_GRAPHICS})
source_group(ui FILES ${UI})
source_group(include\\ui FILES ${INCLUDE_UI})
