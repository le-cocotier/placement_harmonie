#ifndef DATA_H_
#define DATA_H_

typedef union data_ {
  int entier;
  float floatant;
  char *chaine_char;
} data;

typedef struct response_ {
  data **lines;
  int *types; // type de chaque colonne | 1: entier; 2: flotant; 3: string
  char **column_name; // nom de chaque colonne
  int nb_column;
  int nb_line;
} response;

typedef struct personne_ {
  int id;
  char *nom_instrument;
} Personne;

typedef struct link_ {
  Personne pers;
  struct link_ *voisin_droite;
} Musicien;

typedef struct list_ {
  Musicien *premier_a_gauche;
} Rang;

void free_response(response *res);

#endif
