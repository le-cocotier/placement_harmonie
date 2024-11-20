
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
