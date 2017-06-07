#include <iostream>
#include <fstream> 
#include <string>
#include <vector>

#include "nes.h"
#include "debugger.h"

using namespace std;

bool has_argument(int argc, char** argv, char* arg_to_find)
{
	for (int i = 1; i < argc; ++i)
		if (strcmp(argv[i], arg_to_find) == 0)
			return true;
	return false;
};

u8* get_file_image(char* filename)
{
	char* buffer = NULL;
	ifstream ifs (filename, ifstream::binary);
	if (ifs.good())
	{
		// get pointer to associated buffer object
		filebuf* pbuf = ifs.rdbuf();

		// get file size using buffer's members
		size_t size = pbuf->pubseekoff (0,ifs.end,ifs.in);
		pbuf->pubseekpos (0,ifs.in);

		// allocate memory to contain file data
		buffer=new char[size];

		// get file data
		pbuf->sgetn (buffer,size);

		ifs.close();
	}
	return (u8*)buffer;
}

int main(int argc, char** argv)
{
	if (argc < 2)
	{
		cout << "No input files." << endl;
		cout << "Example: 6502 somefile [-debug]" << endl; 
		cout << "    -debug 	Enables debugger" << endl;
		return -1;
	}

	u8* file_image = get_file_image(argv[1]);
	if (NULL == file_image)
	{
		cout << "No such file" << endl;
		return -1;
	}

	/*bool debugging = has_argument(argc, argv, "-debug");
	if (debugging)
	{
		Emulation::Debugger debugger(file_image);
		debugger.start();
	}
	else
	{
	*/
		Emulation::NES nes;

		if (nes.init(file_image))
			nes.start();
		else
			cout << "Not valid nes file." << endl;
	//}

	delete file_image;
}

// int main(int argc, char** argv)
// {
// 	if (argc < 2)
// 	{
// 		cout << "No input files." << endl;
// 		cout << "Example: 6502 somefile [-debug]" << endl; 
// 		cout << "    -debug 	Enables debugger" << endl;
// 		return -1;
// 	}

// 	bool debugging = has_argument(argc, argv, "-debug");
// 	Emulation::Cartridge cartridge;
// 	Emulation::CPU cpu;

// 	// iterate over all test files, 01 for now
// 	ifstream ifs (argv[1], ifstream::binary);
// 	if (ifs.good())
// 	{
// 		// get pointer to associated buffer object
// 		filebuf* pbuf = ifs.rdbuf();

// 		// get file size using buffer's members
// 		size_t size = pbuf->pubseekoff (0,ifs.end,ifs.in);
// 		pbuf->pubseekpos (0,ifs.in);

// 		// allocate memory to contain file data
// 		char* buffer=new char[size];

// 		// get file data
// 		pbuf->sgetn (buffer,size);

// 		ifs.close();

// 		if (cartridge.init((u8*)buffer))
// 		{
// 			cartridge.print_info();
// 			cpu.reset();
// 			cpu.load_program((u8*)buffer, size);
// 			if (debugging)
// 			{
// 				Emulation::Debugger debugger(&cpu);
// 				debugger.start();
// 			}
// 			else
// 				cpu.start();

// 			delete[] buffer;
// 		}
// 		else
// 			cout << "Not valid nes file." << endl;
// 	} 
// 	else
// 	{
// 		cout << "No such file: " << argv[1] << endl;
// 	}
// }