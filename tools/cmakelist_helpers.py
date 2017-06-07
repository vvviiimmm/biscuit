#---------------------------------------------------------------------
# What is this?
# A script that iterates over folders with sources and generates
# CMakeLists.txt file for CMake build system.

# What's it for?
# With this script you can add a source or header file in the source 
# tree, runthis script and it would be added to the build, simple 
# as that

# Author: Alex
# Created: 16 July 2012
#---------------------------------------------------------------------
 
import os
import sys

def get_marked_lines(lines, start_marker, end_marker):
    """
    Returns slice of list 'lines', list of strings betwen two
    markers
    """

    return lines[lines.index(start_marker):lines.index(end_marker)]

def create_sources_dict(path):
    """
    Walks through all subdirs in 'path' and creates a dict:
    { 'include/world' : ['source1.cpp', 'source2.cpp'] }
    """

    sources_dict = dict()
    for root, dirs, files in os.walk(path):
        relative_path = os.path.relpath(root, path)
        sources_dict[relative_path] = map(lambda x: os.path.join(relative_path, x), files)

    # remove root dir from the dict
    del sources_dict['.']
    return sources_dict

def create_sources_id_dict(sources_dict):
    """
    By given sources dict creates another dict wich is a
    folder path id used in cmake as a variable:
    { 
        'include/world' : ['INCLUDE_WORLD'],
        'include/physics': ['INCLUDE_PHYSICS']
    }
    Values are created by removing path separators / and \
    and uppercasing the word
    """

    sources_id_dict = dict()
    for key in sources_dict.iterkeys():
        value = key.replace('/', '_').replace('\\', '').upper()
        sources_id_dict[key] = value
    return sources_id_dict

def create_sources_lines(sources_dict, sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block defining cmake variables. CMake var declaration
    looks like this:

    set (INCLUDE_WORLD
        sources/world/some_source.cpp
        sources/world/other_sources.cpp
    )

    This function generates a cmake variable declaration block
    for each directory containing any files.
    """

    sources_lines = []
    for key in sources_dict.iterkeys():
        header_line = 'set (' + sources_id_dict[key] + '\n'
        sources_lines.append(header_line)
        for filename in sources_dict[key]:
            sources_lines.append('     ' + filename + '\n')
        closing_line = ')\n\n'
        sources_lines.append(closing_line)
    return sources_lines

def create_target_sources_lines(target_header_lines, sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block defining cmake macro defining target properties 
    "e.g. whether it's executable or library, static or dynamic.
    Looks like this:

    add_library(pillow ${PILLOW_LIB_TYPE}
                    ${SOME_VAR}
                    ${ANOTHER_VAR}
                )

    or 

    add_executable(hello
                        ${SOME_VAR}
                        ${ANOTHER_VAR}
                    )

    SOME_VAR and ANOTHER_VAR - cmake vars holding list of source files
    First line we're getting from the 'target_header_lines' arg.
    """

    target_sources_lines = target_header_lines

    for key in sources_id_dict.iterkeys():
        target_sources_lines.append('    ${' + sources_id_dict[key] + '}\n')
    closing_line = ')\n\n'
    target_sources_lines.append(closing_line)
    return target_sources_lines

def create_sources_group_lines(sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block defining cmake macro defining source groups, so
    project in IDE will have the same folder tree structure.
    Looks like this:

    source_group(include\\impl\\game FILES ${INCLUDE_IMPL_GAME})

    Note: paths' forward slashes must be converted to two 
    backslashes
    """

    sources_group_lines = []
    for key in sources_id_dict.iterkeys():
        entry = 'source_group(' +\
                key.replace('/', '\\\\') +\
                ' FILES ' +\
                '${' + sources_id_dict[key] + '}' +\
                ')\n'
        sources_group_lines.append(entry)
    return sources_group_lines

def create_qt_wrap_lines(sources_dict, sources_id_dict):
    """
    Qt uses qmake, uic and urc tools for code gereation for 
    Q_OBJECT macros (signals and slots mechanism),
    user interface and resource compiling respectivly.
    CMake provides useful functions for automatic finding
    and calling this tools: qt4_wrap_cpp, qt4_wrap_ui, 
    qt_wrap_resources. This functions creates lines of code
    for generating calls to this macros.
    """
    # qt_wrap_sources_lines = create_qt_wrap_sources_lines(sources_dict, sources_id_dict)
    qt_wrap_ui_lines = create_qt_wrap_ui_lines(sources_dict, sources_id_dict)
    # qt_wrap_resources_lines = create_qt_wrap_resources_lines(sources_dict, sources_id_dict)

    # qt_wrap_lines = qt_wrap_sources_lines + qt_wrap_ui_lines + qt_wrap_resources_lines
    qt_wrap_lines = qt_wrap_ui_lines
    return qt_wrap_lines

def create_qt_wrap_sources_lines(sources_dict, sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block of cmake macro defining qt4_wrap_cpp macro:
    qt4_wrap_cpp (VAR_NAME 
                      ${HEADERS1} 
                      ${HEADERS2}
    )
    """

    qt_wrap_sources_lines = []

    header_ids_list = []
    for key in sources_dict.iterkeys():
        for path in sources_dict[key]:
            file_name, file_ext = os.path.splitext(path)
            if file_ext == '.h':
                header_ids_list.append(sources_id_dict[key])
            break
    
    qt_wrap_sources_lines.append('qt4_wrap_cpp(MOC_SOURCES \n')
    for header_id in header_ids_list:
        qt_wrap_sources_lines.append('     ${' + header_id +  '}\n')
    qt_wrap_sources_lines.append(')\n\n')

    return qt_wrap_sources_lines

def create_qt_wrap_ui_lines(sources_dict, sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block of cmake macro defining qt4_wrap_ui macro:
    qt4_wrap_ui_ex(VAR_NAME 
                      ${UI_HEADERS1} 
                      ${UI_HEADERS2}
    )
    """

    qt_wrap_ui_lines = []

    ui_ids_list = []
    for key in sources_dict.iterkeys():
        for path in sources_dict[key]:
            file_name, file_ext = os.path.splitext(path)
            if file_ext == '.ui':
                ui_ids_list.append(sources_id_dict[key])
            break

    qt_wrap_ui_lines.append('qt4_wrap_ui_ex(UI_HEADERS \n')
    for ui_id in ui_ids_list:
        qt_wrap_ui_lines.append('     ${' + ui_id +  '}\n')
    qt_wrap_ui_lines.append(')\n\n')

    return qt_wrap_ui_lines

def create_qt_wrap_resources_lines(sources_dict, sources_id_dict):
    """
    Creates and returns a list of strings which are lines of
    text block of cmake macro defining qt4_wrap_resources macro:
    qt4_wrap_resources(VAR_NAME 
                      ${RESOURCES_FILES1} 
                      ${RESOURCES_FILES2}
    )
    """

    qt_wrap_resources_lines = []

    resource_ids_list = []
    for key in sources_dict.iterkeys():
        for path in sources_dict[key]:
            file_name, file_ext = os.path.splitext(path)
            if file_ext == '.qrc':
                resource_ids_list.append(sources_id_dict[key])
            break

    qt_wrap_resources_lines.append('qt4_add_resources(QRC_RESOURCES \n')
    for resource_id in resource_ids_list:
        qt_wrap_resources_lines.append('     ${' + resource_id +  '}\n')
    qt_wrap_resources_lines.append(')\n\n')

    return qt_wrap_resources_lines