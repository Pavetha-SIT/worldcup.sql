camper: /project$ psql --username=freecodecamp --dbname=postgres
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE worldcup;
CREATE DATABASE
postgres=> \c worldcup;
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "worldcup" as user "freecodecamp".
worldcup=> CREATE TABLE teams (
worldcup(>   team_id SERIAL PRIMARY KEY,   -- Auto-incrementing primary key
worldcup(>   name VARCHAR(255) UNIQUE NOT NULL -- Unique team name
worldcup(> );
CREATE TABLE
worldcup=> CREATE TABLE games ( game_id SERIAL PRIMARY KEY, year INT NOT NULL,round VARCHAR(255) NOT NULL, winner_id INT NOT NULL REFERENCES teams(team_id), opponent_id INT NOT NULL REFERENCES teams(team_id), winner_goals INT NOT NULL, opponent_goals INT NOT NULL );
postgres=> create table games();
CREATE TABLE
postgres=> drop table games();
ERROR:  syntax error at or near "("
LINE 1: drop table games();
                        ^
postgres=> drop table games;
DROP TABLE
postgres=> \c worlscup
connection to server at "127.0.0.1", port 5432 failed: FATAL:  database "worlscup" does not exist
Previous connection kept
postgres=> \c worldcup
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "worldcup" as user "freecodecamp".
worldcup=> create table games();
CREATE TABLE
worldcup=> alter table games add column game_id serial primary key;
ALTER TABLE
worldcup=> alter table games add column year int;
ALTER TABLE
worldcup=> alter table games add column round varchar(255);
ALTER TABLE
worldcup=> alter table games add column winner_id INT NOT NULL REFERENCES teams(team_id);
ALTER TABLE
worldcup=> alter table games add column opponent_id INT NOT NULL REFERENCES teams(team_id);
ALTER TABLE
worldcup=> alter table games add column winner_goals int not null;
ALTER TABLE
worldcup=> alter table games add column opponent_goals int not null;
ALTER TABLE
worldcup=> alter table games add column round varchar(255) not null;
ERROR:  column "round" of relation "games" already exists
worldcup=> ALTER TABLE games ALTER COLUMN year SET NOT NULL, ALTER COLUMN round SET NOT NULL, ALTER COLUMN winner_id SET NOT NULL, ALTER COLUMN opponent_id SET NOT NULL, ALTER COLUMN winner_goals SET NOT NULL, ALTER COLUMN opponent_goals SET NOT NULL;
ALTER TABLE
camper: /project$ ./insert_data.sh
TRUNCATE TABLE
INSERT 0 1
Insert success : France
INSERT 0 1
Insert success : Croatia
INSERT 0 1
Insert success : 2018, Final, 1, 2, 4, 2
INSERT 0 1
Insert success : Belgium
INSERT 0 1
Insert success : England
INSERT 0 1
Insert success : 2018, Third Place, 3, 4, 2, 0
INSERT 0 1
Insert success : 2018, Semi-Final, 2, 4, 2, 1
INSERT 0 1
Insert success : 2018, Semi-Final, 1, 3, 1, 0
INSERT 0 1
Insert success : Russia
INSERT 0 1
Insert success : 2018, Quarter-Final, 2, 5, 3, 2
INSERT 0 1
Insert success : Sweden
INSERT 0 1
Insert success : 2018, Quarter-Final, 4, 6, 2, 0
INSERT 0 1
Insert success : Brazil
INSERT 0 1
Insert success : 2018, Quarter-Final, 3, 7, 2, 1
INSERT 0 1
Insert success : Uruguay
INSERT 0 1
Insert success : 2018, Quarter-Final, 1, 8, 2, 0
INSERT 0 1
Insert success : Colombia
INSERT 0 1
Insert success : 2018, Eighth-Final, 4, 9, 2, 1
INSERT 0 1
Insert success : Switzerland
INSERT 0 1
Insert success : 2018, Eighth-Final, 6, 10, 1, 0
INSERT 0 1
Insert success : Japan
INSERT 0 1
Insert success : 2018, Eighth-Final, 3, 11, 3, 2
INSERT 0 1
Insert success : Mexico
INSERT 0 1
Insert success : 2018, Eighth-Final, 7, 12, 2, 0
INSERT 0 1
Insert success : Denmark
INSERT 0 1
Insert success : 2018, Eighth-Final, 2, 13, 2, 1
INSERT 0 1
Insert success : Spain
INSERT 0 1
Insert success : 2018, Eighth-Final, 5, 14, 2, 1
INSERT 0 1
Insert success : Portugal
INSERT 0 1
Insert success : 2018, Eighth-Final, 8, 15, 2, 1
INSERT 0 1
Insert success : Argentina
INSERT 0 1
Insert success : 2018, Eighth-Final, 1, 16, 4, 3
INSERT 0 1
Insert success : Germany
INSERT 0 1
Insert success : 2014, Final, 17, 16, 1, 0
INSERT 0 1
Insert success : Netherlands
INSERT 0 1
Insert success : 2014, Third Place, 18, 7, 3, 0
INSERT 0 1
Insert success : 2014, Semi-Final, 16, 18, 1, 0
INSERT 0 1
Insert success : 2014, Semi-Final, 17, 7, 7, 1
INSERT 0 1
Insert success : Costa Rica
INSERT 0 1
Insert success : 2014, Quarter-Final, 18, 19, 1, 0
INSERT 0 1
Insert success : 2014, Quarter-Final, 16, 3, 1, 0
INSERT 0 1
Insert success : 2014, Quarter-Final, 7, 9, 2, 1
INSERT 0 1
Insert success : 2014, Quarter-Final, 17, 1, 1, 0
INSERT 0 1
Insert success : Chile
INSERT 0 1
Insert success : 2014, Eighth-Final, 7, 20, 2, 1
INSERT 0 1
Insert success : 2014, Eighth-Final, 9, 8, 2, 0
INSERT 0 1
Insert success : Nigeria
INSERT 0 1
Insert success : 2014, Eighth-Final, 1, 21, 2, 0
INSERT 0 1
Insert success : Algeria
INSERT 0 1
Insert success : 2014, Eighth-Final, 17, 22, 2, 1
INSERT 0 1
Insert success : 2014, Eighth-Final, 18, 12, 2, 1
INSERT 0 1
Insert success : Greece
INSERT 0 1
Insert success : 2014, Eighth-Final, 19, 23, 2, 1
INSERT 0 1
Insert success : 2014, Eighth-Final, 16, 10, 1, 0
INSERT 0 1
Insert success : United States
INSERT 0 1
Insert success : 2014, Eighth-Final, 3, 24, 2, 1
camper: /project$ ./queries.sh

Total number of goals in all games from winning teams:
68

Total number of goals in all games from both teams combined:
90

Average number of goals in all games from the winning teams:
2.1250000000000000

Average number of goals in all games from the winning teams rounded to two decimal places:
2.13

Average number of goals in all games from both teams:
2.8125000000000000

Most goals scored in a single game by one team:
7

Number of games where the winning team scored more than two goals:
6

Winner of the 2018 tournament team name:
France

List of teams who played in the 2014 'Eighth-Final' round:
Algeria Argentina Belgium Brazil Chile Colombia Costa Rica France Germany Greece Mexico Netherlands Nigeria Switzerland United States Uruguay

List of unique winning team names in the whole data set:
Argentina Belgium Brazil Colombia Costa Rica Croatia England France Germany Netherlands Russia Sweden Uruguay

Year and team name of all the champions:
2014|Germany 2018|France

List of teams that start with 'Co':
Colombia Costa Rica
camper: /project$ 
