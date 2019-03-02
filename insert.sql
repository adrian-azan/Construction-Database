USE s7183882
INSERT INTO Company VALUES
('ALTO Engineering', 12, '501 E Saint Joseph Street', 1),
('Down Below Fello', 8, '6 Ginger Rd', 1),
('TNT DynoMite', 3, '8 Apricote Avenue', 2);

INSERT INTO Phone VALUES
('ALTO Engineering', '856-453-3343'),
('ALTO Engineering', '856-453-3300'),
('Down Below Fello', '444-453-3223'),
('TNT DynoMite', '412-411-2243'),
('Down Below Fello', '456-453-5543');

INSERT INTO Equipment VALUES
(1, 'ALTO Engineering', 'Trolli', 1902, 5000),
(2, 'ALTO Engineering', 'Trolli', 1997, 300),
(3, 'TNT DynoMite', 'Snyders', 2012, 375.82),
(4, 'Down Below Fello', 'LemonHead', 2007, 999);


INSERT INTO Engineer VALUES
( 2, 'George', 'I', 'Azan', 30000, 'Computer Science', 'TNT DynoMite', '2010-05-08'),
(4, 'Snyder', 'Q', 'Murray', 2000, 'Mechanical Engineer', 'TNT DynoMite', '2004-12-09'),
(6, 'Mitch' ,'J', 'Tigger', 100000, 'Industrial', 'Down Below Fello', '1997-04-15'),
(8, 'Josie', 'Y' , 'Jenkins', 75000, 'Chemical Engineer', 'ALTO Engineering', '2007-1-8');

INSERT INTO Specialty VALUES
(34, 'Explosives'),
(56, 'Database'),
(43, 'Mechanical'),
(66, 'Juggling'),
(3, 'Electrical');

INSERT INTO EngSpecialty VALUES
(2,34),
(2,56),
(2,43),
(4,34),
(4,3),
(8,66),
(2,3),
(2,66);


INSERT INTO Fault VALUES
(765, 'Super Broken', 3, 0),
(800, 'Water Damage', 1, 2),
(600, 'Wont Move', 2, 1);

INSERT INTO FaultType VALUES
(0, 'NA'),
(1, 'Mechanical'),
(2, 'Electrical');


INSERT INTO EngFault VALUES
(2, 800, '4/4/2013', 80),
(6, 765, '8/10/2012',20),
(8, 600, '9/11/2007',40);
