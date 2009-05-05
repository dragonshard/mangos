/* CUSTOM MANGOS STRINGS */
-------------------------------------------------------------------------------------------------

DELETE FROM mangos_string WHERE entry IN (3, 2000);
INSERT INTO mangos_string VALUES
(3, '|cffffff00[|c1f40af20<|cffff6633GM|c1f40af20>Announce|cffffff00]: %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000, '|cffffff00[|c1f40af20<|cffff6633GM|c1f40af20>Announce by|r |cffff0000%s|cffffff00]:|r %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/* CUSTOM GM TELES */
-------------------------------------------------------------------------------------------------

-- Delete Original GMIsland Tele
DELETE FROM game_tele WHERE name='GMIsland';

-- Insert New Teles
INSERT IGNORE INTO game_tele (position_x, position_y, position_z, orientation, map, name) VALUES 
(16227.7, 16403.8, -64.3808, 4.77465, 1, 'Jail'),
(16199.5, 16205.2, 0.310679, 1.1846, 1, 'GMIsland'),
(16229.2, 16306.7, 29.2599, 4.65608, 1, 'GMHouse');

/* CUSTOM GM THRONE */
-------------------------------------------------------------------------------------------------

-- GM Throne Spawns
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES 
(182211, 1, 1, 16225.7, 16288.6, 32.6363, 1.48985, 0, 0, 0.677918, 0.735137, 25, 0, 1),
(182211, 1, 1, 16229.6, 16288.4, 32.6361, 1.48594, 0, 0, 0.676478, 0.736463, 25, 0, 1),
(170592, 1, 1, 16227.7, 16289.8, 31.7028, 1.4985, 0, 0, 0.681088, 0.732201, 25, 0, 1);

/* CUSTOM NPCs SPAWNS */
-------------------------------------------------------------------------------------------------

-- Guardians --
DELETE FROM creature WHERE id = 5764;
INSERT INTO creature (id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist) VALUES 
(5764, 1, 1, 0, 0, 16236.3, 16225, 12.9522, 3.46527, 25, 0),
(5764, 1, 1, 0, 0, 16241.4, 16194.9, -4.20993, 3.06379, 25, 0),
(5764, 1, 1, 0, 0, 16160, 16191.9, -11.039, 0.597639, 25, 0),
(5764, 1, 1, 0, 0, 16184.4, 16243, 1.74073, 5.24327, 25, 0),
(5764, 1, 1, 0, 0, 16309.4, 16257.1, 22.8152, 5.32573, 25, 0),
(5764, 1, 1, 0, 0, 16239.3, 16268.2, 13.9765, 3.82955, 25, 0),
(5764, 1, 1, 0, 0, 16208.3, 16271.5, 12.778, 5.52208, 25, 0),
(5764, 1, 1, 0, 0, 16253.7, 16234.7, 33.5227, 3.53503, 25, 0),
(5764, 1, 1, 0, 0, 16201.9, 16256.7, 21.1957, 4.94874, 25, 0);

/* Makes Guardians Capable to Detect Stealthed Players*/
INSERT IGNORE INTO creature_template_addon VALUES
(5764, 0, 0, 0, 0, 0, 0, '18950 0 18950 1');

-- The Tauren Chieftains Spawn Places --
DELETE FROM creature WHERE (id IN (23619,23623,23624,23625,23626) AND (map = 1));
INSERT INTO `creature`(id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist) VALUES
('23619','1','1','0','0','16228.4','16274.3','21.4683','4.93616','25','0'),
('23623','1','1','0','0','16224.6','16277.2','20.9069','4.67479','25','0'),
('23624','1','1','0','0','16220.8','16273.5','21.3032','4.73432','25','0'),
('23625','1','1','0','0','16223.1','16272.9','21.5774','4.64007','25','0'),
('23626','1','1','0','0','16225.8','16273','21.5553','4.76966','25','0');