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

void read_bdb(char *filename) {
  FILE *fd = fopen(filename, "r");
  char *line = NULL;
  Personne **liste_musicien = NULL;
  int section = 0;
  int nb_musicien = 0;
  do {
    line = read_line(fd);
    printf("%s\n", line);
    if (strlen(line) > 2 && line[0] == '#' && line[1] == '+') {
      // nouvelle section
      printf("new section \n");
      section++;
    } else if (section == 1 && line[0] == '(') {
      // Nouveau musicien
      ++nb_musicien;
      liste_musicien =
          realloc(liste_musicien, nb_musicien * sizeof(Personne *));
      liste_musicien[nb_musicien - 1] = parse_musicien(line);
      printf("%d, %s\n", liste_musicien[nb_musicien - 1]->id_instrument,
             liste_musicien[nb_musicien - 1]->prenom);
    }
  }

  while (strcmp(line, "#+bdb"));
  fclose(fd);
}
