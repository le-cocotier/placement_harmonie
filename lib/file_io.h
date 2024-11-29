#ifndef FILE_IO_H_
#define FILE_IO_H_

#include "data.h"

Orchestre *read_bdb(char *filename);

void write_bdb(char *filename, Orchestre *orchestre);

#endif
