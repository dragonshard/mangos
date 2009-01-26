SET @lastlogin = '2009-01-01 00:00:00';
SET @acctcreate = '2009-01-01 00:00:00';

DELETE FROM account
WHERE id NOT IN 
  (SELECT DISTINCT account FROM characters.characters)
  AND last_login < @lastlogin AND joindate < @acctcreate;