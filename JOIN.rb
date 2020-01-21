SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

  SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012

SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mari'

SELECT player, teamid,coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10

 SELECT mdate, teamname
FROM game JOIN eteam ON (team1=eteam.id)
WHERE coach LIKE 'Fernando Santos'

SELECT player 
FROM game JOIN goal ON (id=matchid)
WHERE stadium LIKE 'National Stadium, Warsaw'

SELECT teamname, COUNT(matchid)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

 SELECT stadium, COUNT(matchid)
FROM game JOIN goal ON id=matchid
GROUP BY stadium

SELECT matchid,mdate,COUNT(matchid)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid,mdate

SELECT matchid, mdate, COUNT(matchid)
FROM game JOIN goal ON id=matchid
WHERE teamid='GER'
GROUP BY matchid,mdate