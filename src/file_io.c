#include "../lib/file_io.h"
#include "../lib/data.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *read_line(FILE *fd) {
  int line_len = 0;
  char *line = malloc(sizeof(char));
  char c;
  while ((c = fgetc(fd)) != EOF && c != '\n') {
    if (c != ' ') {
      line[line_len] = c;
      ++line_len;
      line = realloc(line, (line_len + 1) * sizeof(char));
    }
  }
  line[line_len] = '\000';
  return line;
}

Personne *parse_musicien(char *line) {
  Personne *musicien = malloc(sizeof(Personne));
  musicien->prenom = NULL;
  musicien->nom = NULL;
  char *id_buffer = NULL;
  int buffer_len;
  int i, j = 1;
  for (i = 0; i < 3; ++i) {
    buffer_len = 0;
    while (line[j] != ',' && line[j] != ')') {
      switch (i) {
      case 0:
        // id instrument
        id_buffer = (char *)realloc(id_buffer, (buffer_len + 1) * sizeof(char));
        id_buffer[buffer_len] = line[j];
        ++buffer_len;
        break;
      case 1: // Nom
        ++buffer_len;
        musicien->nom = realloc(musicien->nom, buffer_len * sizeof(char));
        musicien->nom[buffer_len - 1] = line[j];
        break;
      case 2: // Prénom
        ++buffer_len;
        musicien->prenom = realloc(musicien->prenom, buffer_len * sizeof(char));
        musicien->prenom[buffer_len - 1] = line[j];
        break;
      }
      ++j;
    }
    switch (i) {
    case 0:
      id_buffer = (char *)realloc(id_buffer, (buffer_len + 1) * sizeof(char));
      id_buffer[buffer_len] = '\000';
      musicien->id_instrument = atoi(id_buffer);
      free(id_buffer);
      break;
    case 1:
      musicien->nom =
          (char *)realloc(musicien->nom, (buffer_len + 1) * sizeof(char));
      musicien->nom[buffer_len] = '\000';
      break;

    case 2:
      musicien->prenom =
          (char *)realloc(musicien->prenom, (buffer_len + 1) * sizeof(char));
      musicien->prenom[buffer_len] = '\000';
      break;
    }
    ++j;
  }

  return musicien;
}

Orchestre *read_bdb(char *filename) {
  FILE *fd = fopen(filename, "r");
  char *line = NULL;
  Orchestre *orchestre = malloc(sizeof(Orchestre));
  orchestre->liste_musiciens = NULL;
  orchestre->nb_musicien = 0;
  int section = 0;
  do {
    line = read_line(fd);
    printf("%s\n", line);
    if (strlen(line) > 2 && line[0] == '#' && line[1] == '+') {
      // nouvelle section
      printf("new section \n");
      section++;
    } else if (section == 1 && line[0] == '(') {
      // Nouveau musicien
      ++orchestre->nb_musicien;
      orchestre->liste_musiciens =
          realloc(orchestre->liste_musiciens,
                  orchestre->nb_musicien * sizeof(Personne *));
      orchestre->liste_musiciens[orchestre->nb_musicien - 1] =
          parse_musicien(line);
      free(line);
      printf(
          "%d, %s\n",
          orchestre->liste_musiciens[orchestre->nb_musicien - 1]->id_instrument,
          orchestre->liste_musiciens[orchestre->nb_musicien - 1]->prenom);
    }
    // TODO read placement
  }

  while (strcmp(line, "#+bdb"));
  printf("%d\n", orchestre->nb_musicien);
  fclose(fd);
  return orchestre;
}

void write_bdb(char *filename, Orchestre *orchestre) {
  int i;
  char c;
  FILE *fd = fopen(filename, "w");
  FILE *bdb = fopen("assets/guillaume.bdb", "r");
  if (bdb == NULL) {
    perror("file not found");
  }

  fprintf(fd, "#+musicien\n");

  for (i = 0; i < orchestre->nb_musicien; ++i) {
    fprintf(fd, "(%d, %s, %s)\n", orchestre->liste_musiciens[i]->id_instrument,
            orchestre->liste_musiciens[i]->nom,
            orchestre->liste_musiciens[i]->prenom);
  }

  fprintf(fd, "#+placement\n");
  // TODO

  i = 0;

  while ((c = fgetc(bdb)) != EOF) {

    fprintf(fd, "%c", c);
  }
  fclose(fd);
  fclose(bdb);
}
