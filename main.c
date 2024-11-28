#include "lib/data.h"
#include "lib/file_io.h"
#include "lib/sql.h"
#include <sqlite3.h>
#include <stdlib.h>

int main() {

  read_bdb("assets/ohcf.bdb");

  return 0;
}
