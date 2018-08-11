-- Household Table
INSERT INTO "public"."household"("householdname") VALUES('Freeman') RETURNING "id", "householdname";
INSERT INTO "public"."household"("householdname") VALUES('Brimmer') RETURNING "id", "householdname";

-- Player Table
INSERT INTO "public"."player"("playername", "householdid") VALUES('Matthew', 1) RETURNING "playerid", "playername", "householdid";
INSERT INTO "public"."player"("playername", "householdid") VALUES('Krista', 1) RETURNING "playerid", "playername", "householdid";
INSERT INTO "public"."player"("playername", "householdid") VALUES('Lisa', 2) RETURNING "playerid", "playername", "householdid";
INSERT INTO "public"."player"("playername", "householdid") VALUES('John', 2) RETURNING "playerid", "playername", "householdid";

-- Todo Table
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(1, 'Code for Krista', '1 hour') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(2, 'Dishes', '20 minutes') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(3, 'Paint house', '2 hours') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(4, 'Clean up electronics', '8 hours') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(1, 'Laundry', '1.5 hours') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(2, 'Floors', '45 minutes') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(3, 'Check work email', '30 minutes') RETURNING "todoid", "pid", "todo";
INSERT INTO "public"."todo"("pid", "todo", "timeframe") VALUES(4, 'Check tomatoes', '30 minutes') RETURNING "todoid", "pid", "todo";

-- Wins Table
INSERT INTO "public"."wins"("pid", "win") VALUES(3, 'John has to trash electronics') RETURNING "winid", "pid", "win";
INSERT INTO "public"."wins"("pid", "win") VALUES(2, 'Get to watch Hallmark') RETURNING "winid", "pid", "win";
