-- ------------------
-- Household Queries
-- ------------------

--Get all households
select * from household;

-- Get one household
select * from household where id = 1;

-- -----------------
-- Player Queries
-- -----------------

-- Get all players
select * from player;

-- Get all players for a household
select * from player where householdid = 1;

-- Get one player
select * from player where PlayerId = 1;

-- ---------------
-- Todo Queries
-- ---------------

-- Get all todo
select * from todo;

-- Get one todo
select * from todo where TodoId = 1;

-- Get all todos for one player
select * from todo where PId = 1;

-- Get all todos for one household (join)
select todo, playername
from todo
inner join player
    on todo.pid = player.playerid
where player.householdid = 1;

-- Delete one todo
delete from todo where todoId = 1;

-- ------------
-- Win Queries
-- ------------

-- Get all wins
select * from wins;

-- Get one win
select * from wins where winid=1;

-- Get one win from household
select win
from wins
inner join player
    on wins.pid = player.playerid
where player.householdid = 1;