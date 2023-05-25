INSERT INTO team(name, city) VALUES('Team 1', 'Edmonton'), ('Team 2', 'Red Deer'), ('Team 3', 'Calgary');
INSERT INTO player(team_id, name, `number`, points) VALUES(1, 'Player 1', 3, 12),
(1, 'Player 2', 11, 9),
(1, 'Player 3', 34, 0),
(2, 'Player 4', 1, 2),
(2, 'Player 5', 23, 14),
(2, 'Player 6', 32, 34),
(3, 'Player 7', 50, 36),
(3, 'Player 8', 45, 25),
(3, 'Player 9', 2, 18);

SELECT p.name, p.`number`, t.name from team t INNER JOIN player p ON t.id = p.team_id ORDER BY p.points DESC;

SELECT SUM(p.points), t.name from team t INNER JOIN player p ON t.id = p.team_id GROUP BY t.id; 