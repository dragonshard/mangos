-- Riporto tutti i team rating a 1500 (default)
UPDATE arena_team_stats SET rating = 1500;

-- Riporto tutti i personal rating a 1500 (default)
UPDATE arena_team_member SET personal_rating = 1500;

-- Azzero gli Arena Point di tutti
SET @field = 1650;
SET @max_field = 1700;

UPDATE `characters`
SET `data` = CONCAT(CAST(SUBSTRING_INDEX(`data`, ' ', (@field-1)) AS CHAR), ' ', '0', ' ', CAST(SUBSTRING_INDEX(`data`, ' ', (-(@max_field-@field)-1))AS CHAR));

-- Dimezzo l'Honor di tutti (arrotondato per difetto)
SET @field = 1649;
SET @max_field = 1700;

UPDATE `characters`
SET `data` = CONCAT(CAST(SUBSTRING_INDEX(`data`, ' ', (@field-1)) AS CHAR), ' ',
CAST(CEILING(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`, ' ', @field), ' ', -1) AS UNSIGNED) / 2) AS CHAR),
 ' ', CAST(SUBSTRING_INDEX(`data`, ' ', (-(@max_field-@field)-1))AS CHAR));