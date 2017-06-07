project(6502)

set(6502_include_files
	include/cpu.h 
	include/ppu.h 
	include/debugger.h 
	include/cartridge.h 
	include/types.h 
	include/nes.h 
	include/memory.h
	include/constants.h
	include/helpers.h
	include/interrupts.h
	include/palette.h
	include/joypad.h

	sources/cpu.cpp
	sources/ppu.cpp
	sources/debugger.cpp
	sources/cartridge.cpp
	sources/nes.cpp
	sources/memory.cpp
	sources/joypad.cpp
)

add_executable(6502 
	${6502_include_files}
	sources/main.cpp)

add_library(6502_static ${6502_include_files})

include_directories(${MAINFOLDER}/6502/include)

source_group(include FILES 
	include/cpu.h 
	include/ppu.h 
	include/debugger.h 
	include/cartridge.h 
	include/types.h
	include/nes.h
	include/memory.h
	include/constants.h
	include/helpers.h
	include/interrupts.h
	include/palette.h
	include/graphics.h
	include/joypad.h
)

source_group(sources FILES 
	sources/cpu.cpp 
	sources/ppu.cpp 
	sources/debugger.cpp 
	sources/main.cpp 
	sources/cartridge.cpp
	sources/nes.cpp
	sources/memory.cpp
	sources/joypad.cpp
)