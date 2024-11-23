#include "lib/data.h"
#include "lib/sql.h"
#include <sqlite3.h>
#include <stdio.h>

int main() {
  sqlite3 *db;
  sqlite3_stmt *stmt;
  int i;
  int num_column;

  sqlite3_open("bdd.sqlite", &db);

  response *res = sql_select(db, "select * from Instrument");
  show_response(res);
  free_response(res);
  sqlite3_close(db);

  return 0;
}
