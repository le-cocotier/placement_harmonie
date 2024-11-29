#include "lib/data.h"
#include "lib/file_io.h"
#include "lib/sql.h"
#include <sqlite3.h>
#include <stdlib.h>

int main() {

  Orchestre *orchestre = read_bdb("assets/ohcf.bdb");

  write_bdb("test.bdb", orchestre);

  return 0;
}
