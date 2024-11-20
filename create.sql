CREATE TABLE Rang(
   idRang INT,
   nbPlaces INT,
   PRIMARY KEY(idRang)
);

CREATE TABLE Instrument(
   idInstrument INT,
   PRIMARY KEY(idInstrument)
);

CREATE TABLE Partie(
   idPartie VARCHAR(50),
   PRIMARY KEY(idPartie)
);

CREATE TABLE Personne(
   idInstrument INT,
   idPersonne INT,
   idRang INT,
   PRIMARY KEY(idInstrument, idPersonne),
   FOREIGN KEY(idInstrument) REFERENCES Instrument(idInstrument),
   FOREIGN KEY(idRang) REFERENCES Rang(idRang)
);

CREATE TABLE Se_décline(
   idInstrument INT,
   idPartie VARCHAR(50),
   rangMin INT,
   rangMax INT,
   leftPriority INT,
   PRIMARY KEY(idInstrument, idPartie),
   FOREIGN KEY(idInstrument) REFERENCES Instrument(idInstrument),
   FOREIGN KEY(idPartie) REFERENCES Partie(idPartie)
);
