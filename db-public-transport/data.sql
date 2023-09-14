INSERT INTO bus_lines (name, price, duration, bus_type, start, end) VALUES
('66', 30.0, 45, 'Double Decker', 'Slussen', 'Odenplan'),
('1', 25.0, 30, 'Single Decker', 'T-Centralen', 'Stadshagen'),
('2', 28.0, 35, 'Single Decker', 'Fridhemsplan', 'Hornstull'),
('3', 29.0, 40, 'Double Decker', 'Mariatorget', 'Karlaplan'),
('4', 26.0, 32, 'Single Decker', 'Zinkensdamm', 'Tekniska Högskolan'),
('67', 31.0, 50, 'Double Decker', 'Medborgarplatsen', 'Universitetet'),
('69', 27.0, 38, 'Single Decker', 'Rådmansgatan', 'Gullmarsplan');

INSERT INTO metro_lines (name, color, price, duration, start, end, average_depth) VALUES
('10', 'red', 35.0, 20, 'Mörby Centrum', 'Kungsträdgården', 25.0),
('11', 'red', 36.0, 22, 'Ropsten', 'Fruängen', 24.0),
('12', 'blue', 34.0, 18, 'Kista', 'T-Centralen', 30.0),
('13', 'blue', 33.0, 19, 'Hjulsta', 'Farsta Strand', 28.0),
('14', 'green', 32.0, 21, 'Alvik', 'Skarpnäck', 26.0),
('15', 'green', 31.0, 23, 'Åkeshov', 'Hagsätra', 27.0),
('16', 'green', 30.0, 24, 'Hässelby Strand', 'Råcksta', 29.0),
('17', 'blue', 33.5, 20, 'Vällingby', 'Skanstull', 28.5),
('18', 'red', 34.5, 22, 'Odenplan', 'Gamla Stan', 26.5),
('19', 'red', 35.5, 21, 'Solna Centrum', 'Slussen', 27.5);

INSERT INTO stops (name) VALUES
('Slussen'),
('Odenplan'),
('T-Centralen'),
('Stadshagen'),
('Fridhemsplan'),
('Hornstull'),
('Mariatorget'),
('Karlaplan'),
('Zinkensdamm'),
('Tekniska Högskolan'),
('Medborgarplatsen'),
('Universitetet'),
('Rådmansgatan'),
('Gullmarsplan'),
('Mörby Centrum'),
('Kungsträdgården'),
('Ropsten'),
('Fruängen'),
('Kista'),
('Hjulsta'),
('Farsta Strand'),
('Alvik'),
('Skarpnäck'),
('Åkeshov'),
('Hagsätra'),
('Hässelby Strand'),
('Råcksta'),
('Vällingby'),
('Skanstull'),
('Gamla Stan'),
('Solna Centrum');

-- Bus Stops Relations for Bus 66
INSERT INTO bus_stops (bus_id, stop_id) VALUES
(1, 1),  -- Bus 66 stops at Slussen
(1, 2),  -- Bus 66 stops at Odenplan
(1, 5),  -- Bus 66 stops at Fridhemsplan

-- Bus Stops Relations for Bus 1
(2, 3),  -- Bus 1 stops at T-Centralen
(2, 4),  -- Bus 1 stops at Stadshagen
(2, 6),  -- Bus 1 stops at Hornstull

-- Bus Stops Relations for Bus 2
(3, 7),  -- Bus 2 stops at Mariatorget
(3, 8),  -- Bus 2 stops at Karlaplan
(3, 9);  -- Bus 2 stops at Zinkensdamm

-- Metro Stops Relations for Metro 10
INSERT INTO metro_stops (metro_id, stop_id) VALUES
(1, 15), -- Metro 10 stops at Mörby Centrum
(1, 16), -- Metro 10 stops at Kungsträdgården
(1, 19), -- Metro 10 stops at Kista

-- Metro Stops Relations for Metro 11
(2, 17), -- Metro 11 stops at Ropsten
(2, 18), -- Metro 11 stops at Fruängen
(2, 20), -- Metro 11 stops at Hjulsta

-- Metro Stops Relations for Metro 12
(3, 21), -- Metro 12 stops at Farsta Strand
(3, 22), -- Metro 12 stops at Alvik
(3, 23); -- Metro 12 stops at Skarpnäck

