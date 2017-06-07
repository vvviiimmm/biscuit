from cmakelist_helpers import *

def main():
    """
    Script takes folder path as a command line param. This folder
    has to contain 'target_cfg.txt'
    """
    
    if len(sys.argv) < 2:
        print('no path specified')
        return

    root = sys.argv[1]
    config_file_name = 'target_cfg.txt'
    config_file = open(os.path.join(root, config_file_name), 'r')
    config_lines = config_file.readlines()
    config_file.close()

    config_header_lines = get_marked_lines( config_lines, 
                                            '# <head>\n',
                                            '# </head>\n'
                                            )

    target_header_lines = get_marked_lines( config_lines,
                                            '# <target_header>\n',
                                            '# </target_header>\n'
                                            )

    config_lib_lines = get_marked_lines(config_lines,
                                        '# <lib_settings>\n',
                                        '# </lib_settings>\n')

    sources_group_lines = get_marked_lines(config_lines,
                                        '# <source_group>\n',
                                        '# </source_group>\n')

    sources_dict = create_sources_dict(root)
    sources_id_dict  = create_sources_id_dict(sources_dict)

    sources_lines = create_sources_lines(sources_dict, sources_id_dict)
    target_sources_lines = create_target_sources_lines( target_header_lines, 
                                                        sources_id_dict)

    sources_group_lines = sources_group_lines + create_sources_group_lines(sources_id_dict)
    qt_wrap_lines = create_qt_wrap_lines(sources_dict, sources_id_dict)

    cmake_file_name = 'CMakeLists.txt'
    cmake_file = open(os.path.join(root, cmake_file_name), 'w')

    for line in config_header_lines:
        cmake_file.write(line)

    for line in sources_lines:
        cmake_file.write(line)

    for line in qt_wrap_lines:
        cmake_file.write(line)

    for line in target_sources_lines:
        cmake_file.write(line)

    for line in config_lib_lines:
        cmake_file.write(line)

    for line in sources_group_lines:
        cmake_file.write(line)

    cmake_file.close()


if __name__ == '__main__':
    main()
