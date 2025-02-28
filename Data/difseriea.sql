drop database if exists difseriea;
create database difseriea;
use difseriea;

CREATE TABLE giocatore (
    idgiocatore INT(11) PRIMARY KEY,
    nome VARCHAR(50),
    eta INT(3),
    squadra VARCHAR(50),
    valoremercato DECIMAL(5,2)
);

CREATE TABLE statistiche_psicologiche (
    idgiocatore INT NOT NULL,
    minuti_giocati INT,
    gialli INT,
    rossi INT,
    PRIMARY KEY (idgiocatore),
    FOREIGN KEY (idgiocatore) REFERENCES giocatore(idgiocatore)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE statistiche_tecniche (
    idgiocatore INT NOT NULL,
    gol INT,
    assist INT,
    tiri_totali DECIMAL(5,2),
    passaggi_chiave DECIMAL(5,2),
    percentuale_contrastivinti DECIMAL(5,2),
    intercetti DECIMAL(5,2),
    tackle DECIMAL(5,2),
    salvataggi DECIMAL(5,2),
    dribbling_subiti DECIMAL(5,2), 
    PRIMARY KEY (idgiocatore),
    FOREIGN KEY (idgiocatore) REFERENCES giocatore(idgiocatore)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE statistiche_tattiche (
    idgiocatore INT NOT NULL,
    percentuale_passaggiriusciti DECIMAL(5,2),
    possesso_perso DECIMAL(5,2),
    palle_recuperate DECIMAL(5,2),
    falli_commessi DECIMAL(5,2),
    PRIMARY KEY (idgiocatore),
    FOREIGN KEY (idgiocatore) REFERENCES giocatore(idgiocatore)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


ALTER TABLE giocatore
ADD COLUMN ruolo VARCHAR(50) AFTER nome;

ALTER TABLE statistiche_tecniche
ADD COLUMN percentuale_duelliaerei DECIMAL(5,2);

ALTER TABLE statistiche_tecniche
ADD COLUMN expected_goals DECIMAL(5,2),
ADD COLUMN dribbling_riusciti DECIMAL(5,2),
ADD COLUMN cross_riusciti DECIMAL(5,2),
ADD COLUMN accuratezza_cross DECIMAL(5,2);

ALTER TABLE statistiche_tattiche
ADD COLUMN precisione_pallelunghe DECIMAL(5,2),
ADD COLUMN precisione_passaggicorti DECIMAL(5,2),
ADD COLUMN possesso_vinto DECIMAL(5,2);

ALTER TABLE giocatore
ADD COLUMN altezza INT(3),
ADD COLUMN rating DECIMAL(4,2);

INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (1, 'Alessandro Bastoni', 'dc', 25, 'Inter', 75.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (2, 'Bremer', 'dc', 27, 'Juventus FC', 60.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (3, 'Giorgio Scalvini', 'dc', 21, 'Atalanta', 45.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (4, 'Alessandro Buongiorno', 'dc', 25, 'SSC Napoli', 45.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (5, 'Benjamin Pavard', 'dc', 28, 'Inter', 40.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (6, 'Yann Bisseck', 'dc', 24, 'Inter', 30.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (7, 'Isak Hien', 'dc', 26, 'Atalanta', 30.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (8, 'Odilon Kossounou', 'dc', 24, 'Atalanta', 30.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (9, 'Mario Gila', 'dc', 24, 'SS Lazio', 28.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (10, 'Pierre Kalulu', 'dc', 24, 'Juventus FC', 26.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (11, 'Evan Ndicka', 'dc', 25, 'AS Roma', 25.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (12, 'Federico Gatti', 'dc', 26, 'Juventus FC', 25.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (13, 'Fikayo Tomori', 'dc', 27, 'AC Milan', 22.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (14, 'Sam Beukema', 'dc', 26, 'Bologna FC', 22.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (15, 'Matteo Gabbia', 'dc', 25, 'AC Milan', 20.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (16, 'Malick Thiaw', 'dc', 23, 'AC Milan', 20.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (17, 'Gianluca Mancini', 'dc', 28, 'AS Roma', 18.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (18, 'Jaka Bijol', 'dc', 25, 'Udinese Calcio', 18.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (19, 'Jhon Lucumí', 'dc', 26, 'Bologna FC', 18.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (20, 'Strahinja Pavlović', 'dc', 23, 'AC Milan', 17.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (21, 'Perr Schuurs', 'dc', 25, 'Torino FC', 15.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (22, 'Pietro Comuzzo', 'dc', 19, 'ACF Fiorentina', 15.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (23, 'Saúl Coco', 'dc', 25, 'Torino FC', 14.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (24, 'Luca Ranieri', 'dc', 25, 'ACF Fiorentina', 12.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (25, 'Alessio Romagnoli', 'dc', 30, 'SS Lazio', 12.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (26, 'Amir Rrahmani', 'dc', 30, 'SSC Napoli', 12.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (27, 'Koni De Winter', 'dc', 22, 'Genoa CFC', 12.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (28, 'Sead Kolasinac', 'dc', 31, 'Atalanta', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (29, 'Mario Hermoso', 'dc', 29, 'AS Roma', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (30, 'Marin Pongračić', 'dc', 27, 'ACF Fiorentina', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (31, 'Johan Vásquez', 'dc', 26, 'Genoa CFC', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (32, 'Rafa Marín', 'dc', 22, 'SSC Napoli', 9.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (33, 'Alessandro Circati', 'dc', 21, 'Parma Calcio', 8.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (34, 'Berat Djimsiti', 'dc', 31, 'Atalanta', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (35, 'Alan Matturro', 'dc', 20, 'Genoa CFC', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (36, 'Oumar Solet', 'dc', 24, 'Udinese Calcio', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (37, 'Isaak Touré', 'dc', 21, 'Udinese Calcio', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (38, 'Diego Coppola', 'dc', 21, 'Hellas Verona', 7.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (39, 'Stefan de Vrij', 'dc', 32, 'Inter', 7.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (40, 'Nicolò Casale', 'dc', 26, 'Bologna FC', 7.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (41, 'Alberto Dossena', 'dc', 26, 'Como 1907', 7.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (42, 'Mattia Viti', 'dc', 23, 'Empoli FC', 6.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (43, 'Tomás Palacios', 'dc', 21, 'Inter', 6.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (44, 'Ardian Ismajli', 'dc', 28, 'Empoli FC', 6.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (45, 'Martin Erlić', 'dc', 27, 'Bologna FC', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (46, 'Sebastian Walukiewicz', 'dc', 24, 'Torino FC', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (47, 'Federico Baschirotto', 'dc', 28, 'US Lecce', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (48, 'Giovanni Leoni', 'dc', 18, 'Parma Calcio', 4.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (49, 'Thomas Kristensen', 'dc', 23, 'Udinese Calcio', 4.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (50, 'Nicolás Valentini', 'dc', 23, 'ACF Fiorentina', 4.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (51, 'Flavius Daniliuc', 'dc', 23, 'Hellas Verona', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (52, 'Patric', 'dc', 31, 'SS Lazio', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (53, 'Samuel Gigot', 'dc', 31, 'SS Lazio', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (54, 'Guillermo Maripán', 'dc', 30, 'Torino FC', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (55, 'Danilo', 'dc', 33, 'Juventus FC', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (56, 'Andrea Carboni', 'dc', 23, 'AC Monza', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (57, 'Mats Hummels', 'dc', 36, 'AS Roma', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (58, 'Sebastiano Luperto', 'dc', 28, 'Cagliari Calcio', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (59, 'Pablo Marí', 'dc', 31, 'AC Monza', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (60, 'Francesco Acerbi', 'dc', 36, 'Inter', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (61, 'Michael Svoboda', 'dc', 26, 'Venezia FC', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (62, 'Jay Idzes', 'dc', 24, 'Venezia FC', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (63, 'Yerry Mina', 'dc', 30, 'Cagliari Calcio', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (64, 'Adam Obert', 'dc', 22, 'Cagliari Calcio', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (65, 'Botond Balogh', 'dc', 22, 'Parma Calcio', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (66, 'Paweł Dawidowicz', 'dc', 29, 'Hellas Verona', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (67, 'Giangiacomo Magnani', 'dc', 29, 'Hellas Verona', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (68, 'Lautaro Giannetti', 'dc', 31, 'Udinese Calcio', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (69, 'Saba Sazonov', 'dc', 22, 'Empoli FC', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (70, 'Kialonda Gaspar', 'dc', 27, 'US Lecce', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (71, 'Marc Oliver Kempf', 'dc', 29, 'Como 1907', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (72, 'Armando Izzo', 'dc', 32, 'AC Monza', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (73, 'Alessandro Vogliacco', 'dc', 26, 'Parma Calcio', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (74, 'Alessandro Marcandalli', 'dc', 22, 'Genoa CFC', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (75, 'Joël Schingtienne', 'dc', 22, 'Venezia FC', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (76, 'Giorgio Altare', 'dc', 26, 'Venezia FC', 1.8);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (77, 'Yordan Osorio', 'dc', 30, 'Parma Calcio', 1.7);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (78, 'Daniele Ghilardi', 'dc', 22, 'Hellas Verona', 1.6);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (79, 'Rafael Tolói', 'dc', 34, 'Atalanta', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (80, 'Adam Masina', 'dc', 31, 'Torino FC', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (81, 'Juan Jesus', 'dc', 33, 'SSC Napoli', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (82, 'Lautaro Valenti', 'dc', 26, 'Parma Calcio', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (83, 'Fali Candé', 'dc', 27, 'Venezia FC', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (84, 'Edoardo Goldaniga', 'dc', 31, 'Como 1907', 1.2);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (85, 'Marin Šverko', 'dc', 26, 'Venezia FC', 1.2);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (86, 'Luca Caldirola', 'dc', 33, 'AC Monza', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (87, 'Kevin Bonifazi', 'dc', 28, 'US Lecce', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (88, 'Gaby Jean', 'dc', 24, 'US Lecce', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (89, 'Christian Kabasele', 'dc', 33, 'Udinese Calcio', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (90, 'Yllan Okou', 'dc', 22, 'Hellas Verona', 0.9);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (91, 'Danilo DAmbrosio', 'dc', 36, 'AC Monza', 0.8);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (92, 'José Luis Palomino', 'dc', 35, 'Cagliari Calcio', 0.7);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (93, 'Federico Dimarco', 't', 27, 'Inter', 60.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (94, 'Theo Hernández', 't', 27, 'AC Milan', 50.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (95, 'Andrea Cambiaso', 't', 24, 'Juventus FC', 40.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (96, 'Nuno Tavares', 't', 24, 'SS Lazio', 25.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (97, 'Carlos Augusto', 't', 26, 'Inter', 22.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (98, 'Mathías Olivera', 't', 27, 'SSC Napoli', 18.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (99, 'Juan Miranda', 't', 25, 'Bologna FC', 11.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (100, 'Juan Cabal', 't', 24, 'Juventus FC', 9.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (101, 'Angeliño', 't', 28, 'AS Roma', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (102, 'Robin Gosens', 't', 30, 'ACF Fiorentina', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (103, 'Antonino Gallo', 't', 25, 'US Lecce', 5.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (104, 'Aarón Martín', 't', 27, 'Genoa CFC', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (105, 'Jordan Zemura', 't', 25, 'Udinese Calcio', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (106, 'Fabiano Parisi', 't', 24, 'ACF Fiorentina', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (107, 'Domagoj Bradarić', 't', 25, 'Hellas Verona', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (108, 'Samuel Dahl', 't', 21, 'AS Roma', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (109, 'Luca Pellegrini', 't', 25, 'SS Lazio', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (110, 'Hassane Kamara', 't', 30, 'Udinese Calcio', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (111, 'Emanuele Valeri', 't', 26, 'Parma Calcio', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (112, 'Leonardo Spinazzola', 't', 31, 'SSC Napoli', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (113, 'Giuseppe Pezzella', 't', 27, 'Empoli FC', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (114, 'Martin Frese', 't', 27, 'Hellas Verona', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (115, 'Cristiano Biraghi', 't', 32, 'ACF Fiorentina', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (116, 'Liberato Cacace', 't', 24, 'Empoli FC', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (117, 'Alberto Moreno', 't', 32, 'Como 1907', 1.8);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (118, 'Tommaso Augello', 't', 30, 'Cagliari Calcio', 1.8);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (119, 'Ridgeciano Haps', 't', 31, 'Venezia FC', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (120, 'Charalampos Lykogiannis', 't', 31, 'Bologna FC', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (121, 'Marco Sala', 't', 25, 'Como 1907', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (122, 'Franco Carboni', 't', 21, 'Venezia FC', 0.9);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (123, 'Gianluca Di Chiara', 't', 31, 'Parma Calcio', 0.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (124, 'Dodô', 't', 26, 'ACF Fiorentina', 22.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (125, 'Denzel Dumfries', 't', 28, 'Inter', 20.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (126, 'Giovanni Di Lorenzo', 't', 31, 'SSC Napoli', 15.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (127, 'Emerson Royal', 't', 26, 'AC Milan', 14.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (128, 'Devyne Rensch', 't', 22, 'AS Roma', 12.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (129, 'Stefan Posch', 't', 27, 'Bologna FC', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (130, 'Kyle Walker', 't', 34, 'AC Milan', 10.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (131, 'Jackson Tchatchoua', 't', 23, 'Hellas Verona', 8.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (132, 'Davide Calabria', 't', 28, 'AC Milan', 7.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (133, 'Emil Holm', 't', 24, 'Bologna FC', 7.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (134, 'Enrico Delprato', 't', 25, 'Parma Calcio', 6.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (135, 'Alessandro Zanoli', 't', 24, 'Genoa CFC', 6.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (136, 'Zeki Çelik', 't', 27, 'AS Roma', 5.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (137, 'Brooke Norton-Cuffy', 't', 21, 'Genoa CFC', 4.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (138, 'Filippo Terracciano', 't', 21, 'AC Milan', 4.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (139, 'Matteo Darmian', 't', 35, 'Inter', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (140, 'Adam Marusic', 't', 32, 'SS Lazio', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (141, 'Saud Abdulhamid', 't', 25, 'AS Roma', 4.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (142, 'Samuele Birindelli', 't', 25, 'AC Monza', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (143, 'Gabriele Zappa', 't', 25, 'Cagliari Calcio', 3.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (144, 'Kingsley Ehizibue', 't', 29, 'Udinese Calcio', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (145, 'Ignace Van der Brempt', 't', 22, 'Como 1907', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (146, 'Pasquale Mazzocchi', 't', 29, 'SSC Napoli', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (147, 'Mërgim Vojvoda', 't', 29, 'Torino FC', 3.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (148, 'Frédéric Guilbert', 't', 30, 'US Lecce', 2.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (149, 'Antonio Candela', 't', 24, 'Venezia FC', 2.3);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (150, 'Richie Sagrado', 't', 20, 'Venezia FC', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (151, 'Elseid Hysaj', 't', 30, 'SS Lazio', 2.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (152, 'Pedro Pereira', 't', 27, 'AC Monza', 1.8);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (153, 'Tyronne Ebuehi', 't', 29, 'Empoli FC', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (154, 'Stefano Sabelli', 't', 32, 'Genoa CFC', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (155, 'Alessandro Florenzi', 't', 33, 'AC Milan', 1.5);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (156, 'Junior Sambia', 't', 28, 'Empoli FC', 1.4);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (157, 'Francesco Zampano', 't', 31, 'Venezia FC', 1.1);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (158, 'Mattia De Sciglio', 't', 32, 'Empoli FC', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (159, 'Davide Faraoni', 't', 33, 'Hellas Verona', 1.0);
INSERT INTO giocatore (idgiocatore, nome, ruolo, eta, squadra, valoremercato) VALUES (160, 'Lorenzo De Silvestri', 't', 36, 'Bologna FC', 0.4);


INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (1, 2282, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (2, 3234, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (3, 2553, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (4, 2530, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (5, 1689, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (6, 911, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (7, 1800, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (8, 1812, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (9, 1813, 2, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (10, 307, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (11, 2170, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (12, 2640, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (13, 2125, 6, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (14, 2549, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (15, 1276, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (16, 1620, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (17, 2847, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (18, 2083, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (19, 2214, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (20, 2288, 10, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (21, 771, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (22, 39, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (23, 2293, 6, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (24, 2067, 14, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (25, 2409, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (26, 2602, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (27, 2379, 6, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (28, 2190, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (29, 2556, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (30, 3220, 8, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (31, 2858, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (32, 2460, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (33, 2528, 8, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (34, 2831, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (35, 123, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (36, 1612, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (37, 2052, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (38, 1636, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (39, 1592, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (40, 1557, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (41, 2979, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (42, 984, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (43, 765, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (44, 2056, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (45, 2624, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (46, 2054, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (47, 3295, 3, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (48, 766, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (49, 2097, 2, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (50, 1014, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (51, 766, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (52, 1610, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (53, 1729, 7, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (54, 1768, 0, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (55, 2451, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (56, 1490, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (57, 1588, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (58, 3407, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (59, 2620, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (60, 2386, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (61, 1445, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (62, 2108, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (63, 1264, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (64, 947, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (65, 1359, 2, 2);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (66, 2151, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (67, 2441, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (68, 630, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (69, 370, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (70, 2350, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (71, 1836, 3, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (72, 1652, 9, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (73, 1173, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (74, 2918, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (75, 2855, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (76, 2256, 7, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (77, 1949, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (78, 3186, 8, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (79, 963, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (80, 1110, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (81, 2117, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (82, 162, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (83, 1852, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (84, 1013, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (85, 2490, 7, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (86, 2139, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (87, 397, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (88, 3420, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (89, 861, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (90, 2011, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (91, 1536, 3, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (92, 23, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (93, 2104, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (94, 2795, 11, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (95, 2389, 10, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (96, 462, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (97, 1709, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (98, 1572, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (99, 1860, 8, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (100, 1516, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (101, 1148, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (102, 2300, 7, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (103, 2502, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (104, 1398, 2, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (105, 1053, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (106, 1451, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (107, 2753, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (108, 1350, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (109, 783, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (110, 2261, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (111, 1178, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (112, 1315, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (113, 1085, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (114, 2489, 8, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (115, 2359, 8, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (116, 1916, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (117, 1497, 1, 2);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (118, 2431, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (119, 770, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (120, 918, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (121, 1840, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (122, 1425, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (123, 1636, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (124, 528, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (125, 1644, 2, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (126, 3235, 6, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (127, 1192, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (128, 2214, 2, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (129, 2418, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (130, 2767, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (131, 1735, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (132, 2194, 3, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (133, 948, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (134, 2949, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (135, 969, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (136, 677, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (137, 2310, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (138, 1296, 1, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (139, 2411, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (140, 3107, 3, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (141, 2576, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (142, 2016, 7, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (143, 2559, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (144, 969, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (145, 1785, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (146, 1704, 4, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (147, 1417, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (148, 2493, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (149, 2982, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (150, 2211, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (151, 1194, 2, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (152, 833, 3, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (153, 1096, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (154, 2450, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (155, 1729, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (156, 1035, 4, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (157, 2516, 5, 1);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (158, 45, 0, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (159, 993, 5, 0);
INSERT INTO statistiche_psicologiche (idgiocatore, minuti_giocati, gialli, rossi) VALUES (160, 673, 0, 0);


INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (1, 1, 4, 0.5, 0.8, 0.59, 0.8, 1.6, 1.5, 0.5, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (2, 3, 0, 0.5, 0.2, 0.53, 1.1, 1.6, 4.0, 0.2, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (3, 1, 3, 0.6, 0.3, 0.49, 1.8, 1.6, 2.0, 0.6, 0.66);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (4, 3, 1, 0.4, 0.1, 0.58, 2.4, 2.4, 4.5, 0.3, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (5, 0, 2, 0.7, 0.4, 0.67, 1.4, 1.5, 1.8, 0.2, 0.54);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (6, 2, 0, 0.8, 0.1, 0.61, 0.3, 0.9, 1.4, 0.2, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (7, 0, 1, 0.3, 0.0, 0.46, 0.8, 1.3, 2.4, 0.7, 0.64);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (8, 1, 0, 0.2, 0.5, 0.5, 1.2, 1.4, 1.8, 0.5, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (9, 0, 0, 0.4, 0.3, 0.59, 1.0, 1.5, 3.0, 0.7, 0.41);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (10, 0, 0, 0.2, 0.2, 0.57, 0.1, 0.6, 1.1, 0.1, 0.27);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (11, 0, 3, 0.4, 0.2, 0.55, 0.6, 1.3, 2.9, 0.3, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (12, 4, 0, 1.1, 0.3, 0.48, 0.6, 1.0, 2.6, 0.2, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (13, 4, 0, 0.7, 0.2, 0.59, 1.0, 1.6, 2.5, 0.4, 0.51);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (14, 1, 1, 0.4, 0.2, 0.5, 0.5, 0.9, 3.3, 0.3, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (15, 2, 1, 0.6, 0.2, 0.53, 0.6, 1.6, 2.6, 0.3, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (16, 0, 1, 0.2, 0.2, 0.49, 1.6, 1.6, 2.6, 0.6, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (17, 4, 1, 0.5, 0.3, 0.49, 1.0, 0.9, 2.1, 0.4, 0.55);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (18, 0, 0, 0.6, 0.1, 0.52, 1.0, 1.8, 5.7, 0.5, 0.76);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (19, 0, 0, 0.4, 0.1, 0.73, 0.6, 1.7, 2.1, 0.3, 0.51);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (20, 3, 3, 0.7, 0.3, 0.58, 1.7, 2.5, 3.4, 0.7, 0.72);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (21, 1, 0, 0.8, 0.0, 0.55, 1.0, 2.2, 2.3, 0.7, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (22, 0, 0, 0.0, 0.0, 0.5, 0.3, 0.3, 0.5, 0.0, 0.73);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (23, 1, 0, 0.7, 0.0, 0.62, 0.7, 1.1, 3.9, 0.2, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (24, 0, 1, 0.4, 0.3, 0.42, 1.1, 0.5, 2.4, 0.2, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (25, 0, 0, 0.4, 0.2, 0.52, 1.0, 0.9, 3.8, 0.3, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (26, 3, 0, 0.8, 0.5, 0.54, 0.7, 1.1, 2.8, 0.5, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (27, 0, 1, 0.4, 0.2, 0.51, 0.7, 1.5, 2.7, 0.3, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (28, 1, 0, 0.4, 0.3, 0.56, 0.7, 1.5, 1.5, 0.6, 0.52);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (29, 0, 1, 0.5, 0.5, 0.53, 1.0, 1.5, 2.6, 0.7, 0.59);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (30, 0, 0, 0.4, 0.3, 0.55, 1.4, 1.2, 3.6, 0.2, 0.62);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (31, 1, 1, 0.9, 0.3, 0.59, 1.2, 1.4, 2.9, 0.5, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (32, 0, 0, 0.4, 0.2, 0.54, 1.0, 1.0, 3.9, 0.4, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (33, 1, 0, 0.3, 0.0, 0.51, 0.9, 0.9, 3.2, 0.2, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (34, 0, 1, 0.4, 0.2, 0.62, 1.5, 1.1, 2.6, 0.3, 0.62);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (35, 0, 0, 0.2, 0.0, 1.0, 0.3, 0.2, 0.7, 0.0, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (36, 1, 1, 0.4, 0.5, 0.63, 1.8, 1.3, 2.6, 0.5, 0.7);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (37, 1, 1, 0.8, 0.3, 0.5, 1.5, 1.0, 4.0, 0.3, 0.7);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (38, 0, 0, 0.5, 0.2, 0.45, 1.1, 1.5, 3.7, 0.5, 0.64);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (39, 1, 0, 0.4, 0.1, 0.61, 1.0, 0.7, 2.0, 0.3, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (40, 0, 0, 0.4, 0.1, 0.4, 0.6, 0.8, 3.0, 0.5, 0.49);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (41, 0, 4, 0.7, 0.3, 0.61, 1.3, 1.6, 4.8, 0.5, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (42, 0, 0, 0.3, 0.1, 0.52, 0.7, 1.6, 2.5, 0.8, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (43, 0, 0, 0.7, 0.0, 0.62, 1.4, 2.4, 4.0, 0.4, 0.67);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (44, 0, 0, 0.2, 0.2, 0.62, 0.9, 1.0, 4.6, 0.2, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (45, 1, 0, 0.3, 0.0, 0.62, 0.9, 1.2, 4.0, 0.3, 0.54);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (46, 0, 0, 0.1, 0.1, 0.58, 0.6, 1.4, 4.4, 0.5, 0.44);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (47, 0, 1, 0.5, 0.1, 0.41, 0.6, 0.6, 3.8, 0.2, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (48, 0, 0, 0.3, 0.1, 0.57, 1.3, 1.4, 3.0, 0.4, 0.53);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (49, 0, 1, 0.4, 0.2, 0.54, 1.1, 1.3, 4.3, 0.5, 0.59);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (50, 1, 0, 0.5, 0.0, 0.55, 0.6, 1.1, 3.5, 0.3, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (51, 0, 0, 0.1, 0.4, 0.43, 0.6, 1.4, 1.0, 0.7, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (52, 2, 0, 0.3, 0.2, 0.51, 0.3, 0.7, 2.1, 0.5, 0.35);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (53, 3, 0, 0.9, 0.3, 0.64, 1.2, 1.6, 4.2, 0.3, 0.73);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (54, 1, 0, 0.5, 0.2, 0.43, 1.3, 1.0, 4.5, 0.7, 0.55);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (55, 1, 1, 0.6, 0.7, 0.64, 1.3, 2.1, 3.2, 0.6, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (56, 0, 0, 0.9, 0.4, 0.62, 0.8, 1.8, 2.5, 0.5, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (57, 3, 0, 0.6, 0.4, 0.58, 1.3, 2.1, 3.2, 0.9, 0.61);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (58, 0, 1, 0.5, 0.3, 0.63, 0.8, 1.0, 4.0, 0.2, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (59, 0, 0, 0.2, 0.1, 0.51, 1.1, 1.2, 3.1, 0.4, 0.67);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (60, 0, 1, 0.5, 0.2, 0.68, 1.1, 0.8, 2.6, 0.1, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (61, 0, 4, 0.4, 0.5, 0.49, 0.8, 0.6, 2.8, 0.6, 0.62);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (62, 3, 0, 0.3, 0.1, 0.57, 0.9, 1.8, 3.4, 0.4, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (63, 2, 0, 0.2, 0.0, 0.62, 0.2, 1.2, 4.3, 0.4, 0.72);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (64, 0, 0, 0.2, 0.4, 0.5, 1.2, 1.0, 2.3, 0.5, 0.41);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (65, 0, 0, 0.2, 0.1, 0.56, 1.6, 1.5, 3.4, 0.4, 0.64);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (66, 0, 0, 0.3, 0.1, 0.57, 0.9, 1.9, 4.0, 0.4, 0.68);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (67, 0, 0, 0.3, 0.2, 0.62, 1.4, 1.0, 3.5, 0.3, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (68, 1, 0, 0.4, 0.1, 0.56, 2.7, 1.3, 5.6, 0.1, 0.44);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (69, 0, 0, 0.1, 0.1, 0.53, 0.3, 0.8, 1.7, 0.0, 0.48);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (70, 1, 0, 0.7, 0.2, 0.67, 1.5, 2.0, 5.0, 0.3, 0.71);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (71, 4, 0, 0.8, 0.4, 0.55, 1.3, 1.0, 5.6, 0.3, 0.66);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (72, 0, 0, 0.2, 0.3, 0.55, 1.2, 1.2, 2.0, 0.5, 0.49);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (73, 0, 2, 0.3, 0.7, 0.58, 1.5, 1.2, 1.9, 0.2, 0.54);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (74, 0, 1, 0.3, 0.2, 0.58, 1.5, 1.3, 2.8, 0.1, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (75, 1, 0, 0.2, 0.3, 0.63, 0.8, 1.7, 2.7, 0.3, 0.45);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (76, 0, 3, 1.0, 0.4, 0.51, 1.6, 1.7, 3.0, 0.6, 0.68);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (77, 0, 1, 0.2, 0.1, 0.53, 1.2, 0.6, 3.3, 0.1, 0.68);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (78, 0, 0, 0.4, 0.2, 0.56, 1.0, 1.4, 3.6, 0.4, 0.57);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (79, 0, 0, 0.2, 0.1, 0.42, 0.7, 1.1, 1.6, 0.7, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (80, 0, 0, 0.3, 0.2, 0.39, 0.7, 1.1, 1.8, 0.9, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (81, 1, 0, 0.3, 0.2, 0.58, 1.0, 1.8, 2.5, 0.4, 0.49);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (82, 0, 0, 1.0, 0.0, 0.2, 0.5, 0.0, 1.0, 1.5, 0.8);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (83, 0, 1, 0.5, 0.2, 0.65, 0.8, 1.6, 4.3, 0.6, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (84, 0, 0, 0.3, 0.3, 0.56, 1.2, 0.9, 2.7, 0.5, 0.46);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (85, 0, 0, 0.3, 0.1, 0.68, 1.0, 1.2, 2.9, 0.2, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (86, 0, 1, 0.3, 0.2, 0.56, 1.0, 0.9, 1.7, 0.3, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (87, 0, 0, 0.0, 0.1, 0.57, 0.4, 1.3, 2.1, 0.3, 0.43);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (88, 2, 2, 0.4, 0.1, 0.61, 0.8, 0.7, 3.8, 0.3, 0.71);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (89, 1, 1, 0.5, 0.2, 0.46, 0.9, 0.8, 4.2, 0.7, 0.68);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (90, 2, 0, 0.5, 0.2, 0.45, 1.5, 0.6, 3.9, 0.5, 0.51);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (91, 0, 0, 0.6, 0.2, 0.66, 0.6, 2.4, 1.3, 0.5, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (92, 0, 0, 0.0, 0.0, 1.0, 0.3, 0.5, 1.0, 0.0, 1.0);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (93, 5, 6, 1.7, 2.1, 0.58, 0.3, 1.4, 0.8, 0.6, 0.4);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (94, 5, 4, 1.8, 1.4, 0.54, 0.7, 0.9, 1.1, 0.3, 0.61);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (95, 2, 3, 0.9, 1.1, 0.48, 0.3, 1.4, 0.6, 0.5, 0.47);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (96, 0, 0, 0.9, 0.3, 0.54, 0.1, 1.4, 1.9, 0.1, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (97, 0, 3, 0.6, 0.5, 0.53, 0.4, 0.8, 1.2, 0.2, 0.67);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (98, 1, 1, 0.5, 0.8, 0.63, 0.9, 2.2, 0.9, 0.7, 0.55);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (99, 1, 1, 0.6, 1.0, 0.63, 0.8, 1.5, 2.0, 0.6, 0.48);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (100, 0, 0, 0.5, 0.5, 0.53, 1.2, 1.6, 2.1, 0.5, 0.73);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (101, 0, 1, 0.5, 1.2, 0.52, 0.8, 1.3, 2.0, 0.5, 0.64);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (102, 6, 3, 1.1, 1.1, 0.61, 1.2, 2.1, 2.3, 0.5, 0.58);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (103, 0, 3, 0.4, 1.3, 0.57, 0.7, 1.2, 1.5, 0.5, 0.44);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (104, 0, 1, 0.2, 1.2, 0.48, 0.4, 1.0, 0.6, 0.6, 0.48);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (105, 1, 0, 0.2, 0.3, 0.55, 0.5, 0.9, 0.7, 0.3, 0.45);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (106, 0, 1, 0.6, 0.8, 0.65, 0.8, 1.4, 1.0, 0.5, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (107, 0, 3, 0.6, 1.1, 0.56, 0.9, 0.9, 1.5, 0.3, 0.47);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (108, 0, 2, 0.5, 1.9, 0.62, 1.3, 3.7, 1.3, 1.8, 0.43);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (109, 0, 0, 0.4, 0.1, 0.51, 0.5, 0.9, 0.8, 0.4, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (110, 1, 1, 0.7, 0.6, 0.53, 0.7, 1.3, 1.5, 0.4, 0.53);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (111, 0, 2, 1.2, 1.5, 0.42, 0.6, 1.2, 1.1, 0.7, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (112, 0, 2, 0.3, 1.1, 0.5, 0.1, 0.6, 0.5, 0.4, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (113, 0, 0, 0.2, 0.4, 0.54, 0.1, 1.3, 1.4, 0.4, 0.72);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (114, 4, 3, 0.9, 1.1, 0.56, 1.1, 1.9, 2.7, 0.9, 0.49);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (115, 0, 5, 0.6, 1.6, 0.45, 0.5, 1.6, 1.4, 0.8, 0.36);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (116, 0, 1, 0.4, 0.7, 0.48, 0.6, 1.3, 1.4, 0.5, 0.43);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (117, 2, 2, 0.6, 0.6, 0.51, 0.9, 1.1, 1.0, 0.7, 0.4);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (118, 0, 1, 0.3, 0.8, 0.56, 0.5, 0.8, 2.0, 0.3, 0.56);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (119, 0, 1, 0.3, 0.2, 0.57, 0.4, 0.4, 0.5, 0.2, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (120, 2, 1, 0.7, 0.4, 0.31, 0.2, 0.5, 1.3, 0.2, 0.55);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (121, 0, 0, 0.2, 0.7, 0.5, 0.8, 1.6, 1.4, 0.6, 0.6);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (122, 1, 0, 0.9, 0.7, 0.5, 0.7, 2.1, 2.1, 0.5, 0.67);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (123, 0, 1, 0.5, 0.8, 0.64, 0.7, 1.2, 1.4, 0.2, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (124, 0, 0, 0.2, 1.1, 0.58, 0.6, 0.6, 1.2, 0.3, 0.75);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (125, 4, 4, 0.8, 0.9, 0.49, 0.4, 0.7, 0.8, 0.5, 0.65);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (126, 1, 6, 1.0, 1.5, 0.49, 0.7, 1.6, 1.1, 1.0, 0.41);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (127, 1, 0, 0.3, 0.1, 0.61, 0.9, 1.6, 2.0, 1.0, 0.42);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (128, 2, 4, 0.4, 0.5, 0.62, 1.1, 1.5, 1.6, 0.4, 0.53);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (129, 1, 2, 0.6, 0.7, 0.52, 0.6, 2.5, 2.1, 1.3, 0.54);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (130, 0, 4, 0.5, 0.8, 0.54, 0.8, 1.2, 1.1, 0.6, 0.63);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (131, 0, 2, 0.0, 0.6, 0.49, 0.9, 1.5, 1.5, 1.0, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (132, 0, 3, 0.7, 0.4, 0.56, 0.8, 2.4, 1.4, 1.0, 0.31);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (133, 1, 1, 1.2, 0.2, 0.52, 0.3, 1.3, 1.0, 0.9, 0.54);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (134, 0, 3, 0.5, 0.5, 0.65, 1.2, 1.1, 2.0, 0.2, 0.53);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (135, 0, 2, 0.1, 0.6, 0.43, 0.1, 0.8, 0.6, 0.2, 0.35);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (136, 0, 0, 0.1, 0.5, 0.48, 0.5, 1.4, 1.2, 0.6, 0.3);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (137, 2, 4, 0.5, 0.4, 0.49, 0.6, 1.6, 1.0, 0.4, 0.43);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (138, 0, 0, 0.4, 0.9, 0.55, 1.0, 1.5, 0.9, 0.8, 0.5);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (139, 0, 2, 0.3, 0.7, 0.47, 0.4, 1.5, 1.4, 1.0, 0.55);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (140, 1, 0, 0.2, 0.3, 0.52, 0.8, 1.2, 1.6, 0.8, 0.49);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (141, 3, 4, 0.6, 1.8, 0.51, 0.7, 1.8, 1.0, 0.8, 0.38);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (142, 0, 2, 0.7, 0.7, 0.54, 0.5, 0.8, 1.1, 0.3, 0.53);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (143, 0, 3, 0.5, 0.6, 0.59, 0.5, 1.4, 1.6, 0.3, 0.38);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (144, 0, 1, 0.8, 0.3, 0.61, 0.3, 1.0, 1.4, 0.3, 0.48);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (145, 0, 3, 0.6, 0.9, 0.66, 0.8, 2.7, 2.2, 0.5, 0.51);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (146, 0, 2, 0.5, 0.6, 0.43, 0.2, 1.1, 1.3, 0.5, 0.35);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (147, 0, 3, 0.3, 0.6, 0.51, 0.5, 0.6, 0.8, 0.2, 0.33);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (148, 2, 0, 0.7, 0.7, 0.58, 2.2, 2.7, 2.8, 0.8, 0.37);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (149, 0, 3, 0.6, 1.3, 0.48, 0.6, 1.6, 1.1, 0.5, 0.36);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (150, 2, 1, 0.6, 0.5, 0.58, 0.7, 1.3, 1.1, 0.5, 0.35);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (151, 0, 0, 0.1, 0.4, 0.49, 0.8, 1.1, 1.3, 0.4, 0.52);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (152, 0, 2, 0.1, 0.6, 0.47, 0.2, 0.8, 0.7, 0.3, 0.45);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (153, 0, 1, 0.3, 0.7, 0.56, 0.4, 0.9, 1.4, 0.3, 0.31);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (154, 0, 1, 0.3, 0.6, 0.51, 0.7, 1.6, 1.0, 1.0, 0.41);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (155, 0, 4, 1.0, 1.5, 0.51, 0.6, 1.4, 0.6, 0.7, 0.32);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (156, 1, 2, 0.7, 0.7, 0.46, 0.6, 0.7, 1.4, 0.3, 0.64);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (157, 0, 4, 0.6, 0.7, 0.52, 0.5, 1.2, 1.1, 0.6, 0.39);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (158, 0, 0, 0.0, 0.0, 1.0, 1.0, 0.0, 1.0, 0.0, 0.0);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (159, 0, 2, 0.5, 0.6, 0.55, 0.6, 1.2, 1.5, 0.5, 0.48);
INSERT INTO statistiche_tecniche (idgiocatore, gol, assist, tiri_totali, passaggi_chiave, percentuale_contrastivinti, intercetti, tackle, salvataggi, dribbling_subiti, percentuale_duelliaerei) VALUES (160, 0, 0, 0.3, 0.0, 0.65, 0.4, 0.7, 1.4, 0.2, 0.71);


INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (1, 0.9, 10.5, 4.3, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (2, 0.86, 8.3, 5.4, 1.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (3, 0.82, 10.0, 4.9, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (4, 0.85, 7.2, 4.4, 2.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (5, 0.92, 5.9, 3.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (6, 0.93, 4.6, 2.3, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (7, 0.86, 5.9, 4.8, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (8, 0.89, 9.1, 6.0, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (9, 0.9, 7.4, 5.2, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (10, 0.9, 4.0, 1.7, 0.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (11, 0.91, 6.5, 4.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (12, 0.86, 7.8, 3.6, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (13, 0.91, 6.0, 4.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (14, 0.9, 7.5, 4.8, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (15, 0.9, 5.2, 3.4, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (16, 0.92, 5.4, 3.6, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (17, 0.88, 7.8, 2.9, 1.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (18, 0.79, 7.7, 3.5, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (19, 0.94, 5.1, 4.7, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (20, 0.81, 16.1, 7.3, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (21, 0.89, 6.9, 5.4, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (22, 0.71, 2.8, 1.3, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (23, 0.89, 6.3, 3.5, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (24, 0.85, 9.3, 3.8, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (25, 0.91, 5.7, 4.1, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (26, 0.9, 8.1, 4.7, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (27, 0.89, 6.4, 4.1, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (28, 0.85, 7.7, 5.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (29, 0.87, 10.0, 5.4, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (30, 0.85, 8.7, 5.1, 1.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (31, 0.78, 10.0, 2.7, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (32, 0.83, 5.9, 3.5, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (33, 0.88, 6.3, 4.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (34, 0.88, 5.9, 4.6, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (35, 0.63, 2.0, 1.0, 0.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (36, 0.87, 10.5, 7.9, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (37, 0.9, 7.1, 3.6, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (38, 0.78, 7.3, 2.9, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (39, 0.92, 3.4, 3.4, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (40, 0.92, 4.4, 3.7, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (41, 0.8, 8.5, 5.4, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (42, 0.85, 6.8, 3.0, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (43, 0.67, 14.4, 6.8, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (44, 0.85, 7.4, 2.8, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (45, 0.81, 7.9, 3.4, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (46, 0.83, 7.2, 3.1, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (47, 0.84, 8.4, 4.1, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (48, 0.83, 5.6, 2.0, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (49, 0.8, 8.7, 2.8, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (50, 0.82, 9.2, 3.7, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (51, 0.86, 5.4, 3.7, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (52, 0.89, 7.6, 3.6, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (53, 0.88, 6.2, 3.8, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (54, 0.89, 5.7, 3.5, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (55, 0.87, 9.5, 4.9, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (56, 0.87, 7.7, 2.7, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (57, 0.89, 7.0, 4.0, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (58, 0.83, 9.1, 3.7, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (59, 0.91, 5.0, 2.9, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (60, 0.91, 5.9, 3.5, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (61, 0.89, 7.4, 4.6, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (62, 0.89, 8.0, 3.9, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (63, 0.8, 7.1, 4.3, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (64, 0.79, 6.7, 3.2, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (65, 0.88, 6.1, 4.8, 1.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (66, 0.83, 7.9, 5.0, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (67, 0.8, 7.0, 4.5, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (68, 0.88, 5.6, 3.6, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (69, 0.88, 2.3, 1.8, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (70, 0.83, 10.6, 5.7, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (71, 0.85, 9.7, 5.3, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (72, 0.91, 5.5, 3.5, 1.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (73, 0.8, 7.3, 2.6, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (74, 0.88, 6.9, 4.8, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (75, 0.85, 7.8, 5.1, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (76, 0.8, 11.3, 4.3, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (77, 0.89, 5.6, 4.0, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (78, 0.86, 8.5, 3.8, 1.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (79, 0.83, 6.1, 3.2, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (80, 0.87, 5.8, 2.7, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (81, 0.91, 7.1, 4.7, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (82, 0.86, 8.5, 4.0, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (83, 0.8, 7.5, 3.7, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (84, 0.81, 9.4, 2.8, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (85, 0.85, 9.4, 4.1, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (86, 0.91, 4.6, 2.0, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (87, 0.86, 5.4, 3.3, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (88, 0.78, 11.7, 6.9, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (89, 0.84, 5.0, 1.7, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (90, 0.82, 10.0, 4.9, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (91, 0.9, 5.8, 3.2, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (92, 0.78, 1.8, 0.8, 0.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (93, 0.85, 11.6, 3.3, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (94, 0.88, 11.4, 5.4, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (95, 0.88, 8.6, 3.6, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (96, 0.79, 11.3, 4.1, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (97, 0.87, 0.2, 2.0, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (98, 0.88, 8.1, 4.4, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (99, 0.82, 11.6, 3.3, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (100, 0.71, 12.6, 3.1, 1.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (101, 0.8, 11.9, 3.4, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (102, 0.75, 12.4, 3.3, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (103, 0.75, 13.6, 4.6, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (104, 0.78, 9.6, 2.2, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (105, 0.72, 5.8, 1.5, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (106, 0.86, 11.0, 5.9, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (107, 0.82, 12.7, 4.4, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (108, 0.84, 16.3, 5.3, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (109, 0.77, 9.2, 2.6, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (110, 0.78, 8.7, 3.7, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (111, 0.67, 16.8, 3.9, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (112, 0.83, 9.5, 3.1, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (113, 0.78, 9.6, 2.9, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (114, 0.84, 14.8, 4.1, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (115, 0.83, 16.7, 3.4, 1.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (116, 0.77, 11.4, 3.8, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (117, 0.84, 6.4, 2.8, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (118, 0.75, 14.1, 4.6, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (119, 0.76, 5.4, 2.1, 0.2);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (120, 0.82, 7.2, 1.4, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (121, 0.76, 11.1, 3.2, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (122, 0.71, 14.4, 3.6, 1.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (123, 0.77, 11.8, 4.7, 0.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (124, 0.85, 9.3, 3.8, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (125, 0.81, 7.7, 1.9, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (126, 0.87, 14.1, 3.9, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (127, 0.91, 6.1, 3.7, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (128, 0.9, 8.0, 4.0, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (129, 0.82, 13.7, 3.5, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (130, 0.9, 10.2, 4.8, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (131, 0.77, 8.5, 3.2, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (132, 0.87, 9.2, 3.1, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (133, 0.69, 10.0, 2.6, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (134, 0.86, 9.2, 3.9, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (135, 0.79, 7.5, 1.3, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (136, 0.87, 4.6, 1.9, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (137, 0.72, 11.2, 3.0, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (138, 0.75, 12.4, 3.8, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (139, 0.86, 7.2, 2.2, 0.8);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (140, 0.85, 9.8, 4.2, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (141, 0.88, 12.6, 4.8, 1.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (142, 0.83, 7.5, 2.2, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (143, 0.74, 11.3, 2.9, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (144, 0.7, 5.1, 1.9, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (145, 0.79, 14.4, 5.0, 1.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (146, 0.77, 11.1, 3.3, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (147, 0.83, 8.0, 2.3, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (148, 0.81, 13.1, 4.3, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (149, 0.85, 11.3, 4.8, 1.3);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (150, 0.8, 8.8, 3.0, 0.9);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (151, 0.85, 7.5, 3.3, 0.6);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (152, 0.83, 5.7, 1.8, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (153, 0.75, 11.7, 4.7, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (154, 0.63, 13.8, 2.8, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (155, 0.87, 8.2, 3.1, 0.4);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (156, 0.81, 8.5, 2.1, 0.5);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (157, 0.81, 11.1, 4.6, 1.1);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (158, 0.88, 3.0, 2.0, 0.0);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (159, 0.79, 8.6, 2.5, 0.7);
INSERT INTO statistiche_tattiche (idgiocatore, percentuale_passaggiriusciti, possesso_perso, palle_recuperate, falli_commessi) VALUES (160, 0.88, 4.3, 1.4, 0.2);



    UPDATE statistiche_tecniche
    SET expected_goals = 1.23,
        dribbling_riusciti = 0.56,
        cross_riusciti = 0.6,
        accuratezza_cross = 0.24
    WHERE idgiocatore = 1;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.64,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.3
    WHERE idgiocatore = 1;
    

    UPDATE giocatore
    SET rating = 7.35,
        altezza = 190
    WHERE idgiocatore = 1;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.62,
        dribbling_riusciti = 0.77,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 2;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.53,
        precisione_passaggicorti = 0.48,
        possesso_vinto = 0.1
    WHERE idgiocatore = 2;
    

    UPDATE giocatore
    SET rating = 7.14,
        altezza = 188
    WHERE idgiocatore = 2;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.43,
        dribbling_riusciti = 0.79,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.6
    WHERE idgiocatore = 3;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.31,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.3
    WHERE idgiocatore = 3;
    

    UPDATE giocatore
    SET rating = 7.01,
        altezza = 194
    WHERE idgiocatore = 3;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.58,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 4;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.37,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.1
    WHERE idgiocatore = 4;
    

    UPDATE giocatore
    SET rating = 7.13,
        altezza = 191
    WHERE idgiocatore = 4;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.7,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.13
    WHERE idgiocatore = 5;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.62,
        precisione_passaggicorti = 0.52,
        possesso_vinto = 0.2
    WHERE idgiocatore = 5;
    

    UPDATE giocatore
    SET rating = 7.25,
        altezza = 186
    WHERE idgiocatore = 5;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.9,
        dribbling_riusciti = 0.42,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.2
    WHERE idgiocatore = 6;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.71,
        precisione_passaggicorti = 0.67,
        possesso_vinto = 0.2
    WHERE idgiocatore = 6;
    

    UPDATE giocatore
    SET rating = 7.11,
        altezza = 194
    WHERE idgiocatore = 6;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.63,
        dribbling_riusciti = 0.45,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 7;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.54,
        precisione_passaggicorti = 0.54,
        possesso_vinto = 0.1
    WHERE idgiocatore = 7;
    

    UPDATE giocatore
    SET rating = 6.76,
        altezza = 191
    WHERE idgiocatore = 7;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.62,
        dribbling_riusciti = 0.58,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 8;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.54,
        precisione_passaggicorti = 0.46,
        possesso_vinto = 0.5
    WHERE idgiocatore = 8;
    

    UPDATE giocatore
    SET rating = 7.08,
        altezza = 191
    WHERE idgiocatore = 8;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.54,
        dribbling_riusciti = 0.69,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 9;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.63,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.0
    WHERE idgiocatore = 9;
    

    UPDATE giocatore
    SET rating = 7.06,
        altezza = 183
    WHERE idgiocatore = 9;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.06,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.2
    WHERE idgiocatore = 10;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.5,
        precisione_passaggicorti = 0.38,
        possesso_vinto = 0.0
    WHERE idgiocatore = 10;
    

    UPDATE giocatore
    SET rating = 6.56,
        altezza = 183
    WHERE idgiocatore = 10;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.01,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.18
    WHERE idgiocatore = 11;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.39,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.1
    WHERE idgiocatore = 11;
    

    UPDATE giocatore
    SET rating = 6.94,
        altezza = 190
    WHERE idgiocatore = 11;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 5.9,
        dribbling_riusciti = 0.47,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.32
    WHERE idgiocatore = 12;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.1
    WHERE idgiocatore = 12;
    

    UPDATE giocatore
    SET rating = 7.01,
        altezza = 190
    WHERE idgiocatore = 12;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 3.71,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 13;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.44,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.0
    WHERE idgiocatore = 13;
    

    UPDATE giocatore
    SET rating = 7.05,
        altezza = 185
    WHERE idgiocatore = 13;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.9,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 14;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.0
    WHERE idgiocatore = 14;
    

    UPDATE giocatore
    SET rating = 6.81,
        altezza = 188
    WHERE idgiocatore = 14;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.58,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 15;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.56,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.0
    WHERE idgiocatore = 15;
    

    UPDATE giocatore
    SET rating = 6.96,
        altezza = 185
    WHERE idgiocatore = 15;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.6,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 16;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.0
    WHERE idgiocatore = 16;
    

    UPDATE giocatore
    SET rating = 6.76,
        altezza = 194
    WHERE idgiocatore = 16;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.91,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 17;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.1
    WHERE idgiocatore = 17;
    

    UPDATE giocatore
    SET rating = 6.98,
        altezza = 190
    WHERE idgiocatore = 17;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.89,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 18;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.44,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.0
    WHERE idgiocatore = 18;
    

    UPDATE giocatore
    SET rating = 6.99,
        altezza = 192
    WHERE idgiocatore = 18;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.84,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 19;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.71,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.1
    WHERE idgiocatore = 19;
    

    UPDATE giocatore
    SET rating = 7.11,
        altezza = 185
    WHERE idgiocatore = 19;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 4.8,
        dribbling_riusciti = 0.58,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 20;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.35,
        possesso_vinto = 0.1
    WHERE idgiocatore = 20;
    

    UPDATE giocatore
    SET rating = 7.31,
        altezza = 194
    WHERE idgiocatore = 20;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.71,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 21;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.36,
        possesso_vinto = 0.0
    WHERE idgiocatore = 21;
    

    UPDATE giocatore
    SET rating = 6.91,
        altezza = 191
    WHERE idgiocatore = 21;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 22;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.5,
        precisione_passaggicorti = 0.0,
        possesso_vinto = 0.0
    WHERE idgiocatore = 22;
    

    UPDATE giocatore
    SET rating = 6.7,
        altezza = 185
    WHERE idgiocatore = 22;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.05,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 23;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.41,
        precisione_passaggicorti = 0.48,
        possesso_vinto = 0.0
    WHERE idgiocatore = 23;
    

    UPDATE giocatore
    SET rating = 6.68,
        altezza = 188
    WHERE idgiocatore = 23;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.92,
        dribbling_riusciti = 0.33,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.23
    WHERE idgiocatore = 24;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.56,
        possesso_vinto = 0.0
    WHERE idgiocatore = 24;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 187
    WHERE idgiocatore = 24;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.55,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.01,
        accuratezza_cross = 1.0
    WHERE idgiocatore = 25;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.0
    WHERE idgiocatore = 25;
    

    UPDATE giocatore
    SET rating = 6.96,
        altezza = 185
    WHERE idgiocatore = 25;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.18,
        dribbling_riusciti = 0.77,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 26;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.61,
        precisione_passaggicorti = 0.59,
        possesso_vinto = 0.1
    WHERE idgiocatore = 26;
    

    UPDATE giocatore
    SET rating = 7.08,
        altezza = 190
    WHERE idgiocatore = 26;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.79,
        dribbling_riusciti = 0.78,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 27;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.54,
        possesso_vinto = 0.1
    WHERE idgiocatore = 27;
    

    UPDATE giocatore
    SET rating = 6.8,
        altezza = 191
    WHERE idgiocatore = 27;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.34,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 28;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.27,
        precisione_passaggicorti = 0.61,
        possesso_vinto = 0.1
    WHERE idgiocatore = 28;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 183
    WHERE idgiocatore = 28;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.4,
        dribbling_riusciti = 0.65,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 29;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.59,
        precisione_passaggicorti = 0.67,
        possesso_vinto = 0.2
    WHERE idgiocatore = 29;
    

    UPDATE giocatore
    SET rating = 7.02,
        altezza = 184
    WHERE idgiocatore = 29;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.16,
        dribbling_riusciti = 0.79,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 30;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.56,
        precisione_passaggicorti = 0.46,
        possesso_vinto = 0.1
    WHERE idgiocatore = 30;
    

    UPDATE giocatore
    SET rating = 6.91,
        altezza = 193
    WHERE idgiocatore = 30;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.86,
        dribbling_riusciti = 0.59,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.13
    WHERE idgiocatore = 31;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.37,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.1
    WHERE idgiocatore = 31;
    

    UPDATE giocatore
    SET rating = 7.04,
        altezza = 185
    WHERE idgiocatore = 31;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.69,
        dribbling_riusciti = 0.75,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 32;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.56,
        possesso_vinto = 0.0
    WHERE idgiocatore = 32;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 190
    WHERE idgiocatore = 32;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.3,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 33;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.4,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.0
    WHERE idgiocatore = 33;
    

    UPDATE giocatore
    SET rating = 6.97,
        altezza = 190
    WHERE idgiocatore = 33;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.8,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.17
    WHERE idgiocatore = 34;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.53,
        possesso_vinto = 0.1
    WHERE idgiocatore = 34;
    

    UPDATE giocatore
    SET rating = 6.99,
        altezza = 190
    WHERE idgiocatore = 34;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.07,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 35;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.17,
        precisione_passaggicorti = 0.0,
        possesso_vinto = 0.0
    WHERE idgiocatore = 35;
    

    UPDATE giocatore
    SET rating = 6.58,
        altezza = 189
    WHERE idgiocatore = 35;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.9,
        dribbling_riusciti = 0.81,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.17
    WHERE idgiocatore = 36;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.61,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.1
    WHERE idgiocatore = 36;
    

    UPDATE giocatore
    SET rating = 7.38,
        altezza = 192
    WHERE idgiocatore = 36;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.75,
        dribbling_riusciti = 0.79,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.4
    WHERE idgiocatore = 37;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.56,
        precisione_passaggicorti = 0.53,
        possesso_vinto = 0.1
    WHERE idgiocatore = 37;
    

    UPDATE giocatore
    SET rating = 6.95,
        altezza = 206
    WHERE idgiocatore = 37;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.22,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 38;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.44,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.0
    WHERE idgiocatore = 38;
    

    UPDATE giocatore
    SET rating = 6.86,
        altezza = 192
    WHERE idgiocatore = 38;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.57,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 39;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.0
    WHERE idgiocatore = 39;
    

    UPDATE giocatore
    SET rating = 7.02,
        altezza = 188
    WHERE idgiocatore = 39;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.86,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 40;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.69,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.0
    WHERE idgiocatore = 40;
    

    UPDATE giocatore
    SET rating = 6.79,
        altezza = 191
    WHERE idgiocatore = 40;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.21,
        dribbling_riusciti = 0.63,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 41;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.52,
        possesso_vinto = 0.1
    WHERE idgiocatore = 41;
    

    UPDATE giocatore
    SET rating = 7.03,
        altezza = 195
    WHERE idgiocatore = 41;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.96,
        dribbling_riusciti = 0.4,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 42;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.38,
        precisione_passaggicorti = 0.46,
        possesso_vinto = 0.2
    WHERE idgiocatore = 42;
    

    UPDATE giocatore
    SET rating = 6.65,
        altezza = 190
    WHERE idgiocatore = 42;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.22,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 43;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.32,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.2
    WHERE idgiocatore = 43;
    

    UPDATE giocatore
    SET rating = 7.09,
        altezza = 195
    WHERE idgiocatore = 43;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.31,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 44;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.0
    WHERE idgiocatore = 44;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 188
    WHERE idgiocatore = 44;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.95,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 45;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.1
    WHERE idgiocatore = 45;
    

    UPDATE giocatore
    SET rating = 6.74,
        altezza = 192
    WHERE idgiocatore = 45;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.15,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 46;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.46,
        possesso_vinto = 0.1
    WHERE idgiocatore = 46;
    

    UPDATE giocatore
    SET rating = 6.89,
        altezza = 188
    WHERE idgiocatore = 46;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.75,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 47;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.0
    WHERE idgiocatore = 47;
    

    UPDATE giocatore
    SET rating = 6.7,
        altezza = 187
    WHERE idgiocatore = 47;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.96,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 48;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.0
    WHERE idgiocatore = 48;
    

    UPDATE giocatore
    SET rating = 6.72,
        altezza = 193
    WHERE idgiocatore = 48;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.69,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 49;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.3
    WHERE idgiocatore = 49;
    

    UPDATE giocatore
    SET rating = 6.98,
        altezza = 197
    WHERE idgiocatore = 49;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.45,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 50;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.37,
        precisione_passaggicorti = 0.35,
        possesso_vinto = 0.0
    WHERE idgiocatore = 50;
    

    UPDATE giocatore
    SET rating = 6.87,
        altezza = 184
    WHERE idgiocatore = 50;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.25,
        dribbling_riusciti = 0.2,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 51;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.59,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.1
    WHERE idgiocatore = 51;
    

    UPDATE giocatore
    SET rating = 6.55,
        altezza = 186
    WHERE idgiocatore = 51;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.36,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.09
    WHERE idgiocatore = 52;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.1
    WHERE idgiocatore = 52;
    

    UPDATE giocatore
    SET rating = 6.97,
        altezza = 184
    WHERE idgiocatore = 52;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.48,
        dribbling_riusciti = 0.6,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.67
    WHERE idgiocatore = 53;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.39,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.1
    WHERE idgiocatore = 53;
    

    UPDATE giocatore
    SET rating = 7.09,
        altezza = 187
    WHERE idgiocatore = 53;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.44,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 54;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.31,
        possesso_vinto = 0.0
    WHERE idgiocatore = 54;
    

    UPDATE giocatore
    SET rating = 6.78,
        altezza = 193
    WHERE idgiocatore = 54;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.34,
        dribbling_riusciti = 0.89,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.28
    WHERE idgiocatore = 55;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.48,
        possesso_vinto = 0.2
    WHERE idgiocatore = 55;
    

    UPDATE giocatore
    SET rating = 7.27,
        altezza = 184
    WHERE idgiocatore = 55;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.2,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.19
    WHERE idgiocatore = 56;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.0
    WHERE idgiocatore = 56;
    

    UPDATE giocatore
    SET rating = 6.97,
        altezza = 185
    WHERE idgiocatore = 56;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 3.23,
        dribbling_riusciti = 0.33,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 57;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.68,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.2
    WHERE idgiocatore = 57;
    

    UPDATE giocatore
    SET rating = 7.05,
        altezza = 191
    WHERE idgiocatore = 57;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.69,
        dribbling_riusciti = 0.78,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.08
    WHERE idgiocatore = 58;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.34,
        possesso_vinto = 0.1
    WHERE idgiocatore = 58;
    

    UPDATE giocatore
    SET rating = 6.91,
        altezza = 191
    WHERE idgiocatore = 58;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.39,
        dribbling_riusciti = 0.71,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 59;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.62,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.0
    WHERE idgiocatore = 59;
    

    UPDATE giocatore
    SET rating = 6.92,
        altezza = 191
    WHERE idgiocatore = 59;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.61,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.22
    WHERE idgiocatore = 60;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.65,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.0
    WHERE idgiocatore = 60;
    

    UPDATE giocatore
    SET rating = 7.16,
        altezza = 192
    WHERE idgiocatore = 60;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.56,
        dribbling_riusciti = 0.4,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 61;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.1
    WHERE idgiocatore = 61;
    

    UPDATE giocatore
    SET rating = 7.04,
        altezza = 195
    WHERE idgiocatore = 61;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.4,
        dribbling_riusciti = 0.36,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 62;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.2
    WHERE idgiocatore = 62;
    

    UPDATE giocatore
    SET rating = 7.02,
        altezza = 190
    WHERE idgiocatore = 62;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.34,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 63;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.34,
        possesso_vinto = 0.1
    WHERE idgiocatore = 63;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 195
    WHERE idgiocatore = 63;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.14,
        dribbling_riusciti = 0.75,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.6
    WHERE idgiocatore = 64;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.1
    WHERE idgiocatore = 64;
    

    UPDATE giocatore
    SET rating = 6.56,
        altezza = 186
    WHERE idgiocatore = 64;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.23,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 65;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.0
    WHERE idgiocatore = 65;
    

    UPDATE giocatore
    SET rating = 6.71,
        altezza = 189
    WHERE idgiocatore = 65;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.51,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 66;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.1
    WHERE idgiocatore = 66;
    

    UPDATE giocatore
    SET rating = 6.82,
        altezza = 188
    WHERE idgiocatore = 66;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.55,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.08
    WHERE idgiocatore = 67;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.52,
        possesso_vinto = 0.1
    WHERE idgiocatore = 67;
    

    UPDATE giocatore
    SET rating = 6.97,
        altezza = 190
    WHERE idgiocatore = 67;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.39,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 68;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.61,
        precisione_passaggicorti = 0.25,
        possesso_vinto = 0.0
    WHERE idgiocatore = 68;
    

    UPDATE giocatore
    SET rating = 7.09,
        altezza = 184
    WHERE idgiocatore = 68;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.16,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 69;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.56,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.0
    WHERE idgiocatore = 69;
    

    UPDATE giocatore
    SET rating = 6.63,
        altezza = 194
    WHERE idgiocatore = 69;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.4,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 70;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.1
    WHERE idgiocatore = 70;
    

    UPDATE giocatore
    SET rating = 7.08,
        altezza = 193
    WHERE idgiocatore = 70;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 3.7,
        dribbling_riusciti = 0.8,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 71;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.0
    WHERE idgiocatore = 71;
    

    UPDATE giocatore
    SET rating = 7.16,
        altezza = 186
    WHERE idgiocatore = 71;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.68,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 72;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.64,
        precisione_passaggicorti = 0.65,
        possesso_vinto = 0.1
    WHERE idgiocatore = 72;
    

    UPDATE giocatore
    SET rating = 6.9,
        altezza = 183
    WHERE idgiocatore = 72;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.38,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.67
    WHERE idgiocatore = 73;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.36,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.1
    WHERE idgiocatore = 73;
    

    UPDATE giocatore
    SET rating = 6.92,
        altezza = 186
    WHERE idgiocatore = 73;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.67,
        dribbling_riusciti = 0.64,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 74;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.38,
        possesso_vinto = 0.1
    WHERE idgiocatore = 74;
    

    UPDATE giocatore
    SET rating = 6.93,
        altezza = 190
    WHERE idgiocatore = 74;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.43,
        dribbling_riusciti = 0.76,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.17
    WHERE idgiocatore = 75;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.53,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.1
    WHERE idgiocatore = 75;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 188
    WHERE idgiocatore = 75;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.7,
        dribbling_riusciti = 0.73,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 76;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.1
    WHERE idgiocatore = 76;
    

    UPDATE giocatore
    SET rating = 7.08,
        altezza = 190
    WHERE idgiocatore = 76;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.1,
        dribbling_riusciti = 0.75,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 77;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.0
    WHERE idgiocatore = 77;
    

    UPDATE giocatore
    SET rating = 7.0,
        altezza = 189
    WHERE idgiocatore = 77;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.7,
        dribbling_riusciti = 0.4,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.4
    WHERE idgiocatore = 78;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.46,
        possesso_vinto = 0.1
    WHERE idgiocatore = 78;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 189
    WHERE idgiocatore = 78;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.05,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.13
    WHERE idgiocatore = 79;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.36,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.1
    WHERE idgiocatore = 79;
    

    UPDATE giocatore
    SET rating = 6.65,
        altezza = 185
    WHERE idgiocatore = 79;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.3,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 80;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.6,
        possesso_vinto = 0.1
    WHERE idgiocatore = 80;
    

    UPDATE giocatore
    SET rating = 6.71,
        altezza = 189
    WHERE idgiocatore = 80;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.31,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 81;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.59,
        precisione_passaggicorti = 0.59,
        possesso_vinto = 0.0
    WHERE idgiocatore = 81;
    

    UPDATE giocatore
    SET rating = 6.89,
        altezza = 185
    WHERE idgiocatore = 81;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.1,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 82;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.18,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.0
    WHERE idgiocatore = 82;
    

    UPDATE giocatore
    SET rating = 6.55,
        altezza = 188
    WHERE idgiocatore = 82;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.82,
        dribbling_riusciti = 0.7,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 83;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.46,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.0
    WHERE idgiocatore = 83;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 184
    WHERE idgiocatore = 83;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.55,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.5
    WHERE idgiocatore = 84;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.5,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.1
    WHERE idgiocatore = 84;
    

    UPDATE giocatore
    SET rating = 6.7,
        altezza = 188
    WHERE idgiocatore = 84;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.53,
        dribbling_riusciti = 0.78,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.1
    WHERE idgiocatore = 85;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.4,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.1
    WHERE idgiocatore = 85;
    

    UPDATE giocatore
    SET rating = 6.93,
        altezza = 186
    WHERE idgiocatore = 85;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.47,
        dribbling_riusciti = 1.0,
        cross_riusciti = 0.01,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 86;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.0
    WHERE idgiocatore = 86;
    

    UPDATE giocatore
    SET rating = 6.75,
        altezza = 189
    WHERE idgiocatore = 86;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 87;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.38,
        precisione_passaggicorti = 0.35,
        possesso_vinto = 0.0
    WHERE idgiocatore = 87;
    

    UPDATE giocatore
    SET rating = 6.45,
        altezza = 187
    WHERE idgiocatore = 87;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.74,
        dribbling_riusciti = 0.71,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.14
    WHERE idgiocatore = 88;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.4,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.0
    WHERE idgiocatore = 88;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 191
    WHERE idgiocatore = 88;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.18,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 89;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.31,
        possesso_vinto = 0.0
    WHERE idgiocatore = 89;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 186
    WHERE idgiocatore = 89;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.12,
        dribbling_riusciti = 0.56,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 90;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.55,
        possesso_vinto = 0.0
    WHERE idgiocatore = 90;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 180
    WHERE idgiocatore = 90;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.67,
        dribbling_riusciti = 0.58,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.14
    WHERE idgiocatore = 91;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.41,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.0
    WHERE idgiocatore = 91;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 180
    WHERE idgiocatore = 91;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 92;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 1.0,
        possesso_vinto = 0.0
    WHERE idgiocatore = 92;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 188
    WHERE idgiocatore = 92;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.9,
        dribbling_riusciti = 0.33,
        cross_riusciti = 1.9,
        accuratezza_cross = 0.29
    WHERE idgiocatore = 93;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.58,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.4
    WHERE idgiocatore = 93;
    

    UPDATE giocatore
    SET rating = 7.35,
        altezza = 174
    WHERE idgiocatore = 93;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 4.94,
        dribbling_riusciti = 0.54,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.31
    WHERE idgiocatore = 94;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.49,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.3
    WHERE idgiocatore = 94;
    

    UPDATE giocatore
    SET rating = 7.15,
        altezza = 184
    WHERE idgiocatore = 94;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.19,
        dribbling_riusciti = 0.49,
        cross_riusciti = 0.6,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 95;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.85,
        precisione_passaggicorti = 0.76,
        possesso_vinto = 0.4
    WHERE idgiocatore = 95;
    

    UPDATE giocatore
    SET rating = 6.92,
        altezza = 181
    WHERE idgiocatore = 95;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.17,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.13
    WHERE idgiocatore = 96;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.28,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.3
    WHERE idgiocatore = 96;
    

    UPDATE giocatore
    SET rating = 6.73,
        altezza = 185
    WHERE idgiocatore = 96;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.02,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 97;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.64,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.2
    WHERE idgiocatore = 97;
    

    UPDATE giocatore
    SET rating = 6.96,
        altezza = 184
    WHERE idgiocatore = 97;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.55,
        dribbling_riusciti = 0.69,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.3
    WHERE idgiocatore = 98;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.54,
        precisione_passaggicorti = 0.59,
        possesso_vinto = 0.3
    WHERE idgiocatore = 98;
    

    UPDATE giocatore
    SET rating = 7.09,
        altezza = 184
    WHERE idgiocatore = 98;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.61,
        dribbling_riusciti = 0.47,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.29
    WHERE idgiocatore = 99;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.55,
        possesso_vinto = 0.0
    WHERE idgiocatore = 99;
    

    UPDATE giocatore
    SET rating = 7.03,
        altezza = 185
    WHERE idgiocatore = 99;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.52,
        dribbling_riusciti = 0.57,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.18
    WHERE idgiocatore = 100;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.4,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.1
    WHERE idgiocatore = 100;
    

    UPDATE giocatore
    SET rating = 6.87,
        altezza = 185
    WHERE idgiocatore = 100;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.19,
        dribbling_riusciti = 0.5,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.34
    WHERE idgiocatore = 101;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.1
    WHERE idgiocatore = 101;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 171
    WHERE idgiocatore = 101;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.12,
        dribbling_riusciti = 0.42,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 102;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.56,
        possesso_vinto = 0.4
    WHERE idgiocatore = 102;
    

    UPDATE giocatore
    SET rating = 7.24,
        altezza = 183
    WHERE idgiocatore = 102;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.54,
        dribbling_riusciti = 0.49,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.27
    WHERE idgiocatore = 103;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.4,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.1
    WHERE idgiocatore = 103;
    

    UPDATE giocatore
    SET rating = 6.82,
        altezza = 183
    WHERE idgiocatore = 103;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.15,
        dribbling_riusciti = 0.5,
        cross_riusciti = 1.3,
        accuratezza_cross = 0.27
    WHERE idgiocatore = 104;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.41,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.1
    WHERE idgiocatore = 104;
    

    UPDATE giocatore
    SET rating = 6.67,
        altezza = 180
    WHERE idgiocatore = 104;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.81,
        dribbling_riusciti = 0.62,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.14
    WHERE idgiocatore = 105;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.29,
        precisione_passaggicorti = 0.53,
        possesso_vinto = 0.1
    WHERE idgiocatore = 105;
    

    UPDATE giocatore
    SET rating = 6.62,
        altezza = 173
    WHERE idgiocatore = 105;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.94,
        dribbling_riusciti = 0.69,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.17
    WHERE idgiocatore = 106;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.59,
        precisione_passaggicorti = 0.65,
        possesso_vinto = 0.5
    WHERE idgiocatore = 106;
    

    UPDATE giocatore
    SET rating = 6.97,
        altezza = 178
    WHERE idgiocatore = 106;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.77,
        dribbling_riusciti = 0.45,
        cross_riusciti = 0.6,
        accuratezza_cross = 0.26
    WHERE idgiocatore = 107;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.36,
        possesso_vinto = 0.3
    WHERE idgiocatore = 107;
    

    UPDATE giocatore
    SET rating = 6.73,
        altezza = 178
    WHERE idgiocatore = 107;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.13,
        dribbling_riusciti = 0.54,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.26
    WHERE idgiocatore = 108;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.5,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.5
    WHERE idgiocatore = 108;
    

    UPDATE giocatore
    SET rating = 7.33,
        altezza = 171
    WHERE idgiocatore = 108;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.24,
        dribbling_riusciti = 0.54,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 109;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.36,
        precisione_passaggicorti = 0.41,
        possesso_vinto = 0.2
    WHERE idgiocatore = 109;
    

    UPDATE giocatore
    SET rating = 6.67,
        altezza = 178
    WHERE idgiocatore = 109;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.95,
        dribbling_riusciti = 0.58,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.27
    WHERE idgiocatore = 110;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.44,
        precisione_passaggicorti = 0.43,
        possesso_vinto = 0.5
    WHERE idgiocatore = 110;
    

    UPDATE giocatore
    SET rating = 6.81,
        altezza = 168
    WHERE idgiocatore = 110;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.87,
        dribbling_riusciti = 0.33,
        cross_riusciti = 0.9,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 111;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.3,
        precisione_passaggicorti = 0.51,
        possesso_vinto = 0.4
    WHERE idgiocatore = 111;
    

    UPDATE giocatore
    SET rating = 6.76,
        altezza = 180
    WHERE idgiocatore = 111;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.24,
        dribbling_riusciti = 0.51,
        cross_riusciti = 1.0,
        accuratezza_cross = 0.3
    WHERE idgiocatore = 112;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.52,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.2
    WHERE idgiocatore = 112;
    

    UPDATE giocatore
    SET rating = 6.85,
        altezza = 185
    WHERE idgiocatore = 112;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.17,
        dribbling_riusciti = 0.42,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.26
    WHERE idgiocatore = 113;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.31,
        precisione_passaggicorti = 0.34,
        possesso_vinto = 0.2
    WHERE idgiocatore = 113;
    

    UPDATE giocatore
    SET rating = 6.66,
        altezza = 187
    WHERE idgiocatore = 113;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 3.75,
        dribbling_riusciti = 0.27,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 114;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.45,
        precisione_passaggicorti = 0.51,
        possesso_vinto = 0.4
    WHERE idgiocatore = 114;
    

    UPDATE giocatore
    SET rating = 7.35,
        altezza = 179
    WHERE idgiocatore = 114;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.6,
        dribbling_riusciti = 0.31,
        cross_riusciti = 1.9,
        accuratezza_cross = 0.24
    WHERE idgiocatore = 115;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.46,
        precisione_passaggicorti = 0.4,
        possesso_vinto = 0.1
    WHERE idgiocatore = 115;
    

    UPDATE giocatore
    SET rating = 7.09,
        altezza = 184
    WHERE idgiocatore = 115;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.42,
        dribbling_riusciti = 0.47,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.22
    WHERE idgiocatore = 116;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.34,
        possesso_vinto = 0.4
    WHERE idgiocatore = 116;
    

    UPDATE giocatore
    SET rating = 6.68,
        altezza = 184
    WHERE idgiocatore = 116;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.73,
        dribbling_riusciti = 0.56,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.24
    WHERE idgiocatore = 117;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.53,
        precisione_passaggicorti = 0.59,
        possesso_vinto = 0.1
    WHERE idgiocatore = 117;
    

    UPDATE giocatore
    SET rating = 6.79,
        altezza = 171
    WHERE idgiocatore = 117;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.46,
        dribbling_riusciti = 0.56,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.24
    WHERE idgiocatore = 118;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.41,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.2
    WHERE idgiocatore = 118;
    

    UPDATE giocatore
    SET rating = 6.8,
        altezza = 181
    WHERE idgiocatore = 118;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.11,
        dribbling_riusciti = 0.33,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 119;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.56,
        possesso_vinto = 0.1
    WHERE idgiocatore = 119;
    

    UPDATE giocatore
    SET rating = 6.63,
        altezza = 175
    WHERE idgiocatore = 119;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.26,
        dribbling_riusciti = 0.29,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.19
    WHERE idgiocatore = 120;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.0
    WHERE idgiocatore = 120;
    

    UPDATE giocatore
    SET rating = 6.77,
        altezza = 188
    WHERE idgiocatore = 120;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.37,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.26
    WHERE idgiocatore = 121;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.32,
        precisione_passaggicorti = 0.44,
        possesso_vinto = 0.2
    WHERE idgiocatore = 121;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 182
    WHERE idgiocatore = 121;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.87,
        dribbling_riusciti = 0.47,
        cross_riusciti = 0.9,
        accuratezza_cross = 0.2
    WHERE idgiocatore = 122;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.23,
        precisione_passaggicorti = 0.6,
        possesso_vinto = 0.3
    WHERE idgiocatore = 122;
    

    UPDATE giocatore
    SET rating = 6.92,
        altezza = 190
    WHERE idgiocatore = 122;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.46,
        cross_riusciti = 0.8,
        accuratezza_cross = 0.3
    WHERE idgiocatore = 123;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.36,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.4
    WHERE idgiocatore = 123;
    

    UPDATE giocatore
    SET rating = 6.88,
        altezza = 185
    WHERE idgiocatore = 123;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.08,
        dribbling_riusciti = 0.67,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 124;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.6,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.1
    WHERE idgiocatore = 124;
    

    UPDATE giocatore
    SET rating = 6.75,
        altezza = 166
    WHERE idgiocatore = 124;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.27,
        dribbling_riusciti = 0.54,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.34
    WHERE idgiocatore = 125;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.2
    WHERE idgiocatore = 125;
    

    UPDATE giocatore
    SET rating = 6.92,
        altezza = 189
    WHERE idgiocatore = 125;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 3.09,
        dribbling_riusciti = 0.34,
        cross_riusciti = 0.6,
        accuratezza_cross = 0.17
    WHERE idgiocatore = 126;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.7,
        precisione_passaggicorti = 0.62,
        possesso_vinto = 0.2
    WHERE idgiocatore = 126;
    

    UPDATE giocatore
    SET rating = 7.24,
        altezza = 182
    WHERE idgiocatore = 126;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.2,
        dribbling_riusciti = 0.63,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.14
    WHERE idgiocatore = 127;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.53,
        precisione_passaggicorti = 0.33,
        possesso_vinto = 0.3
    WHERE idgiocatore = 127;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 183
    WHERE idgiocatore = 127;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.18,
        dribbling_riusciti = 0.48,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 128;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.64,
        possesso_vinto = 0.3
    WHERE idgiocatore = 128;
    

    UPDATE giocatore
    SET rating = 6.98,
        altezza = 182
    WHERE idgiocatore = 128;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.17,
        dribbling_riusciti = 0.46,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.18
    WHERE idgiocatore = 129;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.35,
        precisione_passaggicorti = 0.42,
        possesso_vinto = 0.2
    WHERE idgiocatore = 129;
    

    UPDATE giocatore
    SET rating = 6.95,
        altezza = 188
    WHERE idgiocatore = 129;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.39,
        dribbling_riusciti = 0.66,
        cross_riusciti = 0.6,
        accuratezza_cross = 0.32
    WHERE idgiocatore = 130;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.53,
        possesso_vinto = 0.3
    WHERE idgiocatore = 130;
    

    UPDATE giocatore
    SET rating = 7.15,
        altezza = 183
    WHERE idgiocatore = 130;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.43,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.3
    WHERE idgiocatore = 131;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.32,
        precisione_passaggicorti = 0.45,
        possesso_vinto = 0.1
    WHERE idgiocatore = 131;
    

    UPDATE giocatore
    SET rating = 6.67,
        altezza = 180
    WHERE idgiocatore = 131;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.31,
        dribbling_riusciti = 0.3,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.39
    WHERE idgiocatore = 132;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.41,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.1
    WHERE idgiocatore = 132;
    

    UPDATE giocatore
    SET rating = 6.88,
        altezza = 177
    WHERE idgiocatore = 132;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.74,
        dribbling_riusciti = 0.6,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.2
    WHERE idgiocatore = 133;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.28,
        precisione_passaggicorti = 0.36,
        possesso_vinto = 0.2
    WHERE idgiocatore = 133;
    

    UPDATE giocatore
    SET rating = 6.88,
        altezza = 191
    WHERE idgiocatore = 133;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.74,
        dribbling_riusciti = 0.83,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.37
    WHERE idgiocatore = 134;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.37,
        precisione_passaggicorti = 0.41,
        possesso_vinto = 0.2
    WHERE idgiocatore = 134;
    

    UPDATE giocatore
    SET rating = 7.18,
        altezza = 183
    WHERE idgiocatore = 134;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.17,
        dribbling_riusciti = 0.24,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.13
    WHERE idgiocatore = 135;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.38,
        precisione_passaggicorti = 0.38,
        possesso_vinto = 0.0
    WHERE idgiocatore = 135;
    

    UPDATE giocatore
    SET rating = 6.6,
        altezza = 186
    WHERE idgiocatore = 135;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.16,
        dribbling_riusciti = 0.6,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.3
    WHERE idgiocatore = 136;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.86,
        possesso_vinto = 0.3
    WHERE idgiocatore = 136;
    

    UPDATE giocatore
    SET rating = 6.76,
        altezza = 180
    WHERE idgiocatore = 136;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.93,
        dribbling_riusciti = 0.45,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.15
    WHERE idgiocatore = 137;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.29,
        precisione_passaggicorti = 0.28,
        possesso_vinto = 0.4
    WHERE idgiocatore = 137;
    

    UPDATE giocatore
    SET rating = 6.69,
        altezza = 181
    WHERE idgiocatore = 137;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.32,
        dribbling_riusciti = 0.57,
        cross_riusciti = 1.0,
        accuratezza_cross = 0.36
    WHERE idgiocatore = 138;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.1
    WHERE idgiocatore = 138;
    

    UPDATE giocatore
    SET rating = 6.72,
        altezza = 181
    WHERE idgiocatore = 138;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.2,
        dribbling_riusciti = 0.33,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.43
    WHERE idgiocatore = 139;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.46,
        precisione_passaggicorti = 0.53,
        possesso_vinto = 0.0
    WHERE idgiocatore = 139;
    

    UPDATE giocatore
    SET rating = 6.82,
        altezza = 182
    WHERE idgiocatore = 139;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.43,
        dribbling_riusciti = 0.5,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 140;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.48,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.1
    WHERE idgiocatore = 140;
    

    UPDATE giocatore
    SET rating = 6.77,
        altezza = 185
    WHERE idgiocatore = 140;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 2.76,
        dribbling_riusciti = 0.55,
        cross_riusciti = 1.6,
        accuratezza_cross = 0.38
    WHERE idgiocatore = 141;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.5,
        precisione_passaggicorti = 0.54,
        possesso_vinto = 0.2
    WHERE idgiocatore = 141;
    

    UPDATE giocatore
    SET rating = 7.3,
        altezza = 178
    WHERE idgiocatore = 141;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.07,
        dribbling_riusciti = 0.44,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 142;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.53,
        precisione_passaggicorti = 0.49,
        possesso_vinto = 0.1
    WHERE idgiocatore = 142;
    

    UPDATE giocatore
    SET rating = 6.82,
        altezza = 175
    WHERE idgiocatore = 142;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.46,
        dribbling_riusciti = 0.36,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.26
    WHERE idgiocatore = 143;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.36,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.2
    WHERE idgiocatore = 143;
    

    UPDATE giocatore
    SET rating = 6.68,
        altezza = 183
    WHERE idgiocatore = 143;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.28,
        dribbling_riusciti = 0.65,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.35
    WHERE idgiocatore = 144;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.3,
        precisione_passaggicorti = 0.18,
        possesso_vinto = 0.3
    WHERE idgiocatore = 144;
    

    UPDATE giocatore
    SET rating = 6.71,
        altezza = 189
    WHERE idgiocatore = 144;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.13,
        dribbling_riusciti = 0.62,
        cross_riusciti = 0.8,
        accuratezza_cross = 0.4
    WHERE idgiocatore = 145;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.34,
        precisione_passaggicorti = 0.33,
        possesso_vinto = 0.3
    WHERE idgiocatore = 145;
    

    UPDATE giocatore
    SET rating = 7.11,
        altezza = 187
    WHERE idgiocatore = 145;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.49,
        dribbling_riusciti = 0.45,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.27
    WHERE idgiocatore = 146;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.31,
        precisione_passaggicorti = 0.23,
        possesso_vinto = 0.2
    WHERE idgiocatore = 146;
    

    UPDATE giocatore
    SET rating = 6.49,
        altezza = 183
    WHERE idgiocatore = 146;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.36,
        dribbling_riusciti = 0.64,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.16
    WHERE idgiocatore = 147;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.56,
        precisione_passaggicorti = 0.52,
        possesso_vinto = 0.4
    WHERE idgiocatore = 147;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 187
    WHERE idgiocatore = 147;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.08,
        dribbling_riusciti = 0.58,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.2
    WHERE idgiocatore = 148;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.39,
        possesso_vinto = 0.2
    WHERE idgiocatore = 148;
    

    UPDATE giocatore
    SET rating = 7.04,
        altezza = 178
    WHERE idgiocatore = 148;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.13,
        dribbling_riusciti = 0.57,
        cross_riusciti = 1.1,
        accuratezza_cross = 0.33
    WHERE idgiocatore = 149;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.5,
        possesso_vinto = 0.2
    WHERE idgiocatore = 149;
    

    UPDATE giocatore
    SET rating = 6.94,
        altezza = 182
    WHERE idgiocatore = 149;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.58,
        dribbling_riusciti = 0.46,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 150;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.28,
        precisione_passaggicorti = 0.34,
        possesso_vinto = 0.2
    WHERE idgiocatore = 150;
    

    UPDATE giocatore
    SET rating = 6.75,
        altezza = 182
    WHERE idgiocatore = 150;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.24,
        dribbling_riusciti = 0.25,
        cross_riusciti = 0.2,
        accuratezza_cross = 0.28
    WHERE idgiocatore = 151;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.51,
        precisione_passaggicorti = 0.47,
        possesso_vinto = 0.1
    WHERE idgiocatore = 151;
    

    UPDATE giocatore
    SET rating = 6.66,
        altezza = 182
    WHERE idgiocatore = 151;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.19,
        dribbling_riusciti = 0.56,
        cross_riusciti = 0.4,
        accuratezza_cross = 0.27
    WHERE idgiocatore = 152;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.39,
        precisione_passaggicorti = 0.52,
        possesso_vinto = 0.0
    WHERE idgiocatore = 152;
    

    UPDATE giocatore
    SET rating = 6.7,
        altezza = 185
    WHERE idgiocatore = 152;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.27,
        dribbling_riusciti = 0.36,
        cross_riusciti = 0.3,
        accuratezza_cross = 0.22
    WHERE idgiocatore = 153;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.37,
        precisione_passaggicorti = 0.37,
        possesso_vinto = 0.2
    WHERE idgiocatore = 153;
    

    UPDATE giocatore
    SET rating = 6.7,
        altezza = 187
    WHERE idgiocatore = 153;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.76,
        dribbling_riusciti = 0.29,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.21
    WHERE idgiocatore = 154;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.28,
        precisione_passaggicorti = 0.3,
        possesso_vinto = 0.3
    WHERE idgiocatore = 154;
    

    UPDATE giocatore
    SET rating = 6.67,
        altezza = 179
    WHERE idgiocatore = 154;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 1.67,
        dribbling_riusciti = 0.08,
        cross_riusciti = 1.5,
        accuratezza_cross = 0.37
    WHERE idgiocatore = 155;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.55,
        precisione_passaggicorti = 0.58,
        possesso_vinto = 0.2
    WHERE idgiocatore = 155;
    

    UPDATE giocatore
    SET rating = 7.02,
        altezza = 173
    WHERE idgiocatore = 155;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.54,
        dribbling_riusciti = 0.29,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.32
    WHERE idgiocatore = 156;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.47,
        precisione_passaggicorti = 0.35,
        possesso_vinto = 0.0
    WHERE idgiocatore = 156;
    

    UPDATE giocatore
    SET rating = 6.74,
        altezza = 185
    WHERE idgiocatore = 156;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.58,
        dribbling_riusciti = 0.56,
        cross_riusciti = 0.7,
        accuratezza_cross = 0.23
    WHERE idgiocatore = 157;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.42,
        precisione_passaggicorti = 0.48,
        possesso_vinto = 0.3
    WHERE idgiocatore = 157;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 177
    WHERE idgiocatore = 157;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.0,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.0,
        accuratezza_cross = 0.0
    WHERE idgiocatore = 158;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 1.0,
        precisione_passaggicorti = 0.0,
        possesso_vinto = 0.0
    WHERE idgiocatore = 158;
    

    UPDATE giocatore
    SET rating = 6.8,
        altezza = 183
    WHERE idgiocatore = 158;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.51,
        dribbling_riusciti = 0.36,
        cross_riusciti = 0.5,
        accuratezza_cross = 0.25
    WHERE idgiocatore = 159;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.57,
        precisione_passaggicorti = 0.54,
        possesso_vinto = 0.2
    WHERE idgiocatore = 159;
    

    UPDATE giocatore
    SET rating = 6.83,
        altezza = 180
    WHERE idgiocatore = 159;
    

    UPDATE statistiche_tecniche
    SET expected_goals = 0.21,
        dribbling_riusciti = 0.0,
        cross_riusciti = 0.1,
        accuratezza_cross = 0.11
    WHERE idgiocatore = 160;
    

    UPDATE statistiche_tattiche
    SET precisione_pallelunghe = 0.43,
        precisione_passaggicorti = 0.25,
        possesso_vinto = 0.1
    WHERE idgiocatore = 160;
    

    UPDATE giocatore
    SET rating = 6.84,
        altezza = 185
    WHERE idgiocatore = 160;
    