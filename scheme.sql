
CREATE TABLE Instrument(
   idInstrument INT,
   nomInstrument VARCHAR(50),
   PRIMARY KEY(idInstrument)
);

CREATE TABLE Partie(
   idPartie VARCHAR(50),
   PRIMARY KEY(idPartie)
);

CREATE TABLE Se_decline(
   idInstrument INT,
   idPartie VARCHAR(50),
   PRIMARY KEY(idInstrument, idPartie),
   FOREIGN KEY(idInstrument) REFERENCES Instrument(idInstrument),
   FOREIGN KEY(idPartie) REFERENCES Partie(idPartie)
);
