#include "../lib/data.h"
#include <stdlib.h>

void free_response(response *res) {
  int i, j;

  for (i = 0; i < res->nb_line; ++i) {
    for (j = 0; j < res->nb_column; ++j) {
      if (res->types[j] == 3) {
        free(res->lines[i][j].chaine_char);
      }
    }
    free(res->lines[i]);
  }
  free(res->column_name);
  free(res->lines);
  free(res->types);
  // free(res);
}
