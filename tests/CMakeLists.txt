cmake_minimum_required(VERSION 2.8)
project(6502_tests)

add_executable(6502_tests 
	cpu_tests.h
	cpu_tests.cpp

	adc/adc_tests.cpp
	load/load_tests.cpp
	logical/logical_tests.cpp
	shift/shift_tests.cpp
	jmp/jmp_tests.cpp
	branch/bcc_tests.cpp
	p_register/p_register_tests.cpp
	cmp/cmp_tests.cpp
	dec/dec_tests.cpp
	inc/inc_tests.cpp
	stack/stack_tests.cpp

	${MAINFOLDER}/6502/include/cpu.h
	${MAINFOLDER}/6502/sources/cpu.cpp
	${MAINFOLDER}/6502/sources/memory.cpp
	${MAINFOLDER}/6502/sources/memory.cpp
)

include_directories(${MAINFOLDER}/6502/include)
include_directories(${MAINFOLDER}/tests)
include_directories(${MAINFOLDER}/thirdparty/gtest-1.7.0/include)

set_target_properties(6502_tests PROPERTIES
    COMPILE_DEFINITIONS _VARIADIC_MAX=10
)

target_link_libraries(6502_tests 
						gtest
						gtest_main
						)

#source_group(include FILES include/cpu.h include/debugger.h)
#source_group(sources FILES sources/cpu.cpp sources/debugger.cpp sources/main.cpp)