
insert into Instrument(idInstrument, nomInstrument) values (1, 'flute');
insert into Instrument(idInstrument, nomInstrument) values (2, 'hautbois');
insert into Instrument(idInstrument, nomInstrument) values (3, 'sax');
insert into Instrument(idInstrument, nomInstrument) values (4, 'cor');
insert into Instrument(idInstrument, nomInstrument) values (5, 'basson');
insert into Instrument(idInstrument, nomInstrument) values (6, 'trompette');
insert into Instrument(idInstrument, nomInstrument) values (7, 'trombones');
insert into Instrument(idInstrument, nomInstrument) values (8, 'cornet');
insert into Instrument(idInstrument, nomInstrument) values (9, 'euphonium');
insert into Instrument(idInstrument, nomInstrument) values (10, 'tuba');
insert into Instrument(idInstrument, nomInstrument) values (11, 'percussions');
insert into Instrument(idInstrument, nomInstrument) values (12, 'clarinette');



insert into Partie(idPartie) values ('1');
insert into Partie(idPartie) values ('2');
insert into Partie(idPartie) values ('3');
insert into Partie(idPartie) values ('4');
insert into Partie(idPartie) values ('barython');
insert into Partie(idPartie) values ('tenor');
insert into Partie(idPartie) values ('basse');
insert into Partie(idPartie) values ('alto');
insert into Partie(idPartie) values ('petite');


(1, 'BROCH', 'Sidonie');
(1, 'CLERC', 'Rémi');
(1, 'CUELLAR', 'Eva');
(1, 'DUJAMBON', 'Samantha');
(1, 'WOLOSZYN-JONES', 'Talia');
(1, 'MORHAIN', 'Valérie');
(1, 'VOGE', 'Bozena');
(2, 'BONNET', 'Marie-France');
(2, 'MOINDREAU', 'Anne-Laure');
 (2, 'SORIANO', 'Claire');
 (5, 'BÉGOU', 'Pierre-Alain');
 (5, 'DIOGON', 'Jean-Baptiste');
 (5, 'DUFAYET', 'Martine');
 (12, 'BODEAU', 'François');
 (12, 'CARBONNIÈRE', 'Roger');
 (12, 'CARTIER', 'Pierre');
 (12, 'DELAIR', 'Laure');
 (12, 'DOPEUX', 'Sophie');
 (12, 'GIOUX', 'Emilie');
 (12, 'GIS', 'Adrien');
 (12, 'GUÉRIN', 'Lucie');
 (12, 'KABAB', 'Sabrina');
 (12, 'LETHIELLEUX', 'Agnès');
 (12, 'OUDARD', 'Manon');
 (12, 'PATURLE', 'Antoine');
 (12, 'PAYSAL', 'Justine');
 (12, 'PERICHON', 'Guillaume');
 (12, 'PETIOT', 'Valentine');
 (12, 'PROUTEAU', 'Justine');
 (12, 'RABOIN', 'Christelle');
 (12, 'RÉMY', 'Élise');
 (12, 'VERTU', 'Dominique');
 (3, 'BOICHUT', 'Philippe');
 (3, 'BRESSOULALY', 'Pierre');
 (3, 'BUTLER', 'Emily');
 (3, 'CASTELL', 'Emilie');
 (3, 'CHORDA', 'Marco');
 (3, 'GARCIA', 'Laurent');
 (3, 'JONES', 'Jenny');
 (3, 'PAGÈS', 'Alexis');
 (4, 'BERNAD', 'Marie-Pierre');
 (4, 'BIZOUARD', 'Adèle');
 (4, 'CROZAT', 'Baptiste');
 (4, 'GURLIAT', 'Olivier');
 (4, 'LETHIELLEUX', 'Patrick');
 (4, 'MARQUE', 'Roger');
 (4, 'RAGONNET', 'Michel');
 (4, 'ROUSSEL', 'Bénédicte');
 (6, 'BOZONNET', 'Cyril');
 (6, 'LAVET', 'Pierre');
 (6, 'CHADEYRON', 'Théo');
 (6, 'VAYSSIER', 'Solène');
 (6, 'POTHERAT', 'Clément');
 (6, 'PRESLE', 'Pauline');
 (6, 'PUZIN', 'Tom');
 (8, 'CHAMBÉRY', 'Laurent');
 (8, 'VAN LEUVEN', 'Inge');
 (7, 'COUZELAS', 'Armand');
 (7, 'DE SOUSA RÉIS', 'Marc');
 (7, 'ESTIÈVENART', 'Guillaume');
 (7, 'LETHIELLEUX', 'Salomé');
 (9, 'DEPPOYAN', 'Anna');
 (9, 'LEMOINE', 'Marianne');
 (9, 'RÉTY', 'Eva');
 (10, 'DURIF', 'Claude');
 (10, 'FAURE', 'Pascal');
 (10, 'FROMAGEOT', 'Olivier');
 (10, 'MALJEVAC', 'Colin');
 (11, 'BARRAUX', 'Arthur');
 (11, 'GUITTON', 'Margot');
 (11, 'HAMONIC', 'Gaëlle');
 (11,'HÉLIAKIS', 'Thomas');
 (11,'RÉTY', 'Julian');




/* Clarinette */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, '1', 1, 1, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, '2', 1, 2, 1);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, '3', 2, 3, 2);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, 'alto', 1, 3, 4);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, 'basse', 2, 3, 5);
insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, 'petite', 1, 2, 6);
/* Saxophone */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (3, '1', 1, 2, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (3, '2', 1, 2, 1);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (3, 'tenor', 2, 3, 2);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (3, 'barython', 2, 3, 3);
/* Flute */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (1, '1', 1, 2, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (1, '2', 1, 2, 1);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (1, '3', 1, 2, 2);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (1, '4', 1, 2, 3);
/* Cor anglais / hautbois */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (2, '1', 1, 1, 0);
/* Basson */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (5, '1', 2, 3, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (5, '2', 2, 3, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (5, '3', 2, 3, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (5, 'basse', 2, 3, 0);
/* Cor */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (4, '1', 2, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (4, '2', 2, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (4, '3', 2, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (4, '4', 2, 4, 0);
/* Cornet */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (8, '1', 3, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (8, '2', 3, 4, 0);
/* Euphonium */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (9, '1', 3, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (9, '2', 3, 4, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (9, '3', 3, 4, 0);
/* Tuba */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (112, '1', 3, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (112, '2', 3, 5, 0);
/* Trompette */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (6, '1', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (6, '2', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (6, '3', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (6, '4', 5, 5, 0);
/* Trombone */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (7, '1', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (7, '2', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (7, '3', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (7, '4', 5, 5, 0);
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (7, 'basse', 5, 5, 0);
/* Contrebasse */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (12, '1', 5, 6, 0);
/* Percu */
Insert into Se_decline(idInstrument, idPartie, rangMin, rangMax, leftPriority) values (11, '1', 6, 6, 0);
