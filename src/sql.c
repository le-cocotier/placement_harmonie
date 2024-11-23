#include "../lib/sql.h"
#include <stdio.h>
#include <string.h>

response *sql_select(sqlite3 *db, char *request) {
  response *res = malloc(sizeof(response *)); // result of query
  sqlite3_stmt *stmt;
  int i;

  // init
  res->nb_line = 0;
  res->lines = NULL;

  // query
  sqlite3_prepare_v2(db, request, -1, &stmt, 0);

  // first iteration
  if (sqlite3_step(stmt) != SQLITE_DONE) {
    res->nb_column = sqlite3_column_count(stmt);
    res->types = (int *)malloc(res->nb_column * sizeof(int));
    res->column_name = (char **)malloc(res->nb_column * sizeof(char *));
    // Récupère nom des champs
    for (i = 0; i < res->nb_column; ++i) {
      res->column_name[i] = (char *)sqlite3_column_table_name(stmt, i);
      res->types[i] = sqlite3_column_type(stmt, i);
    }
  }

  do {
    res->lines =
        (data **)realloc(res->lines, (res->nb_line + 1) * sizeof(data *));
    res->lines[res->nb_line] = (data *)malloc(res->nb_column * sizeof(data));
    for (i = 0; i < res->nb_column; ++i) {
      // Parcours de la ligne
      switch (sqlite3_column_type(stmt, i)) {
      case (SQLITE3_TEXT):
        res->lines[res->nb_line][i].chaine_char =
            (char *)malloc(50 * sizeof(char));
        strcpy(res->lines[res->nb_line][i].chaine_char,
               (char *)sqlite3_column_text(stmt, i));
        break;
      case (SQLITE_FLOAT):
        res->lines[res->nb_line][i].floatant = sqlite3_column_double(stmt, i);
        break;
      case (SQLITE_INTEGER):
        res->lines[res->nb_line][i].entier = sqlite3_column_int(stmt, i);
        break;
      }
    }
    ++(res->nb_line);
  } while (sqlite3_step(stmt) != SQLITE_DONE);

  return res;
}

void show_response(response *res) {
  int i, j;

  for (j = 0; j < res->nb_column; ++j) {
    printf("%s\t", res->column_name[j]);
  }
  printf("\n\n");

  for (i = 0; i < res->nb_line; ++i) {
    for (j = 0; j < res->nb_column; ++j) {
      switch (res->types[j]) {
      case 1:
        printf("%d\t", res->lines[i][j].entier);
        break;
      case 3:
        printf("%s\t", res->lines[i][j].chaine_char);
        break;
      }
    }
    printf("\n");
  }
}
