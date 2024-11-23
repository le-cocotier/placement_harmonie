#ifndef SQL_H
#define SQL_H

#include "data.h"
#include <sqlite3.h>
#include <stdio.h>
#include <stdlib.h>

response *sql_select(sqlite3 *db, char *request);

void show_response(response *res);

#endif
