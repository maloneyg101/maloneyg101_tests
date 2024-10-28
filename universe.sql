camper: /project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> create database universe
postgres-> \c universe 
connection to server at "127.0.0.1", port 5432 failed: FATAL:  database "universe" does not exist
Previous connection kept
postgres->  ;
CREATE DATABASE
postgres=> \c universe
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "universe" as user "freecodecamp".
universe=> create table galaxy() star() planet() moon();
ERROR:  syntax error at or near "star"
LINE 1: create table galaxy() star() planet() moon();
                              ^
universe=> create table galaxy(), star();
ERROR:  syntax error at or near ","
LINE 1: create table galaxy(), star();
                             ^
universe=> create table galaxy();
CREATE TABLE
universe=> create table star()
universe-> create table moon()
universe-> create table planet();
ERROR:  syntax error at or near "create"
LINE 2: create table moon()
        ^
universe=> create table star();
CREATE TABLE
universe=> create table moon();
CREATE TABLE
universe=> create table planet();
CREATE TABLE
universe=> ALTER TABLE galaxy ADD COLUMN galaxy_id INT NOT NULL PRIMARY KEY
universe-> ;
ALTER TABLE
universe=> 
[1]+  Stopped                 psql --username=freecodecamp --dbname=postgres
camper: /project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> \c universe
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "universe" as user "freecodecamp".
universe=> alter table star add column star_id INT NOT NULL PRIMARY KEY;
ALTER TABLE
universe=> alter table moon add column moon_id INT not null primary key;
ALTER TABLE
universe=> alter table planet add column planet_id INT not null primery key;
ERROR:  syntax error at or near "primery"
LINE 1: ...er table planet add column planet_id INT not null primery ke...
                                                             ^
universe=> alter table planet add column planet_id INT not null primary key;
ALTER TABLE
universe=> alter table galaxy add column name TEXT;
ALTER TABLE
universe=> alter table moon add column name text;
ALTER TABLE
universe=> alter table star add column name text;
ALTER TABLE
universe=> alter table planet add column name text;
ALTER TABLE
universe=> alter table galaxy add column description text, add column has_life boolean;
ALTER TABLE
universe=> alter table galaxy add column is_spherical boolean, age_in_millions_of_years numeric, galaxy_types text, distance_from_earth numeric;
ERROR:  syntax error at or near "age_in_millions_of_years"
LINE 1: ...ter table galaxy add column is_spherical boolean, age_in_mil...
                                                             ^
universe=> ALTER TABLE galaxy ADD COLUMN is_spherical BOOLEAN, age_in_millions_of_years NUMERIC;
ERROR:  syntax error at or near "age_in_millions_of_years"
LINE 1: ...TER TABLE galaxy ADD COLUMN is_spherical BOOLEAN, age_in_mil...
                                                             ^
universe=> ALTER TABLE galaxy ADD COLUMN is_spherical BOOLEAN;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD COLUMN age_in_millions_of_years numeric;
ALTER TABLE
universe=> alter table galaxy add column galaxy_types text;
ALTER TABLE
universe=> alter table galaxy add column distance_from_earth numeric;
ALTER TABLE
universe=> alter table moon add column description text, has_life boolean;
ERROR:  syntax error at or near "has_life"
LINE 1: alter table moon add column description text, has_life boole...
                                                      ^
universe=> alter table moon add column description text, add column has_life boolean;
ALTER TABLE
universe=> alter table moon add column age_in_millions_of_years numeric, add column moon_type text, add column distance_from_eath numeric, add column color text;
ERROR:  syntax error at or near "dd"
LINE 1: ...ype text, add column distance_from_earth numeric, dd column ...
                                                             ^
universe=> alter table planet add column planet_id INT not null primary key;
ERROR:  column "planet_id" of relation "planet" already exists
universe=> alter table moon add column age_in_millions_of_years numeric, add column moon_type text, add column distance_from_eath numeric, add column color text;
ALTER TABLE
universe=> alter table star add column age_in_millions_of_years numeric, add column star_type text, add column distance_from_earth numeric, add column color text, add column description text, add column has_life boolean;
ALTER TABLE
universe=> select * from star;
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
| star_id | name | age_in_millions_of_years | star_type | distance_from_earth | color | description | has_life |
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
(0 rows)

universe=> select * from planet;
+-----------+------+
| planet_id | name |
+-----------+------+
+-----------+------+
(0 rows)

universe=> alter table planet add column description text, add column planet_type text, add column has_life boolean, add column color text, add column distance_from_earth numeric, add column is_spherical boolean, add column age_in_millions_of_years numeric;
ALTER TABLE
universe=> select * from planet;
+-----------+------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+
| planet_id | name | description | planet_type | has_life | color | distance_from_earth | is_spherical | age_in_millions_of_years |
+-----------+------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+
+-----------+------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+
(0 rows)

universe=> select * from galaxy;
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
| galaxy_id | name | description | has_life | is_spherical | age_in_millions_of_years | galaxy_types | distance_from_earth |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
(0 rows)

universe=> select * from star;
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
| star_id | name | age_in_millions_of_years | star_type | distance_from_earth | color | description | has_life |
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+
(0 rows)

universe=> alter table star add column galaxy_in int
universe-> ;
ALTER TABLE
universe=> alter table planet add column star_in int;
ALTER TABLE
universe=> alter table moon add column planet_in int;
ALTER TABLE
universe=> alter table star FOREIGN KEY(star_id) REFERENCES galaxy(galaxy_id);
ERROR:  syntax error at or near "FOREIGN"
LINE 1: alter table star FOREIGN KEY(star_id) REFERENCES galaxy(gala...
                         ^
universe=> INSERT INTO star FOREIGN KEY(star_id) REFERENCES galaxy(galaxy_id);
ERROR:  syntax error at or near "FOREIGN"
LINE 1: INSERT INTO star FOREIGN KEY(star_id) REFERENCES galaxy(gala...
                         ^
universe=> ALTER TABLE star FOREIGN KEY (star_id) REFERENCES galaxy(galaxy_id); 
ERROR:  syntax error at or near "FOREIGN"
LINE 1: ALTER TABLE star FOREIGN KEY (star_id) REFERENCES galaxy(gal...
                         ^
universe=> ALTER TABLE star ADD COLUMN galaxy_id INT NOT NULL CONSTRAINT fk_galaxy REFERENCES galaxy(galaxy_id);
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN star_id INT NOT NULL CONSTRAINT fk_star REFERENCES star(star_id);
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL CONSTRAINT fk_planet REFERENCES planet(planet_id);
ALTER TABLE
universe=> ALTER TABLE galaxy ALTER COLUMN galaxy_id TYPE SERIAL;
ERROR:  type "serial" does not exist
universe=> ALTER TABLA galaxy alter column name TYPE VARCHAR(30);
ERROR:  syntax error at or near "TABLA"
LINE 1: ALTER TABLA galaxy alter column name TYPE VARCHAR(30);
              ^
universe=> ALTER TABLE galaxy ALTER COLUMN name TYPE VARCHAR(20);
ALTER TABLE
universe=> ALTER TABLE star ALTER COLUMN name TYPE VARCHAR(20);
ALTER TABLE
universe=> ALTER TABLE planet ALTER COLUMN name TYPE VARCHAR(20);
ALTER TABLE
universe=> ALTER TABLE moon ALTER COLUMN name TYPE VARCHAR(20);
ALTER TABLE
universe=> ALTER TABLE galaxy ALTER COLUMN galaxy_id TYPE serial;
ERROR:  type "serial" does not exist
universe=> ALTER TABLE galaxy DROP COLUMN galaxy_id;
ERROR:  cannot drop column galaxy_id of table galaxy because other objects depend on it
DETAIL:  constraint fk_galaxy on table star depends on column galaxy_id of table galaxy
HINT:  Use DROP ... CASCADE to drop the dependent objects too.
universe=> ALTER TABLE galaxy ALTER COLUMN name TYPE UNIQUE;
ERROR:  syntax error at or near "UNIQUE"
LINE 1: ALTER TABLE galaxy ALTER COLUMN name TYPE UNIQUE;
                                                  ^
universe=> ALTER TABLE galaxy alter column name unique;
ERROR:  syntax error at or near "unique"
LINE 1: ALTER TABLE galaxy alter column name unique;
                                             ^
universe=> ALTER Table galaxy ALTER COLUMN name NOT NULL;
ERROR:  syntax error at or near "NOT"
LINE 1: ALTER Table galaxy ALTER COLUMN name NOT NULL;
                                             ^
universe=> alter table galaxy alter column name constraint unique;
ERROR:  syntax error at or near "constraint"
LINE 1: alter table galaxy alter column name constraint unique;
                                             ^
universe=> alter table galaxy add unique (name);
ALTER TABLE
universe=> alter table star add unique (name);
ALTER TABLE
universe=> alter table planet add unique (name);
ALTER TABLE
universe=> alter table moon add unique (name);
ALTER TABLE
universe=> alter table galaxy add not null (name);
ERROR:  syntax error at or near "not"
LINE 1: alter table galaxy add not null (name);
                               ^
universe=> alter table galaxy alter column name NOT NULL;
ERROR:  syntax error at or near "NOT"
LINE 1: alter table galaxy alter column name NOT NULL;
                                             ^
universe=> alter table galaxy modify column name not null;
ERROR:  syntax error at or near "modify"
LINE 1: alter table galaxy modify column name not null;
                           ^
universe=> alter table galaxy modify name not null;
ERROR:  syntax error at or near "modify"
LINE 1: alter table galaxy modify name not null;
                           ^
universe=> alter table galaxy alter column name set not null;
ALTER TABLE
universe=> alter table star alter column name set not null;
ALTER TABLE
universe=> alter table planet alter column name set not null;
ALTER TABLE
universe=> alter table moon alter column name set not null;
ALTER TABLE
universe=> select * from galaxy;
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
| galaxy_id | name | description | has_life | is_spherical | age_in_millions_of_years | galaxy_types | distance_from_earth |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
(0 rows)

universe=> insert into galaxy values(1, massive, massive, yes, no, 1000, crazy, 1000);
ERROR:  column "massive" does not exist
LINE 1: insert into galaxy values(1, massive, massive, yes, no, 1000...
                                     ^
universe=> insert into galaxy values (1, 'gal1', 'massive', true, false, 1000, 'round', 10000);
INSERT 0 1
universe=> select * from galaxy;
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
| galaxy_id | name | description | has_life | is_spherical | age_in_millions_of_years | galaxy_types | distance_from_earth |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
|         1 | gal1 | massive     | t        | f            |                     1000 | round        |               10000 |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
(1 row)

universe=> insert into galaxy values (2, 'gal2', f, t, 1100, 'oval', 11000);
ERROR:  column "f" does not exist
LINE 1: insert into galaxy values (2, 'gal2', f, t, 1100, 'oval', 11...
                                              ^
universe=> 
: 
universe=> insert into galaxy values (1, 'gal2', 'very large', f, t, 1100, 'oval', 11000);
ERROR:  column "f" does not exist
LINE 1: ...sert into galaxy values (1, 'gal2', 'very large', f, t, 1100...
                                                             ^
universe=> insert into galaxy values (1, 'gal2', 'very large', false, true, 1100, 'oval', 11000);
ERROR:  duplicate key value violates unique constraint "galaxy_pkey"
DETAIL:  Key (galaxy_id)=(1) already exists.
universe=> insert into galaxy values (2, 'gal2', 'very large', false, true, 1100, 'oval', 11000);
INSERT 0 1
universe=> insert into galaxy values (3, 'gal3', 'large', false, true, 1200, 'oval', 12000);
INSERT 0 1
universe=> insert into galaxy values (4, 'gal4', 'large', true, true, 1300, 'scraggly', 13000);
INSERT 0 1
universe=> 
[2]+  Stopped                 psql --username=freecodecamp --dbname=postgres
camper: /project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.17 (Ubuntu 12.17-1.pgdg22.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> insert into galaxy values (5, 'gal5', 'large', true, true, 1300, 'scraggly', 13000);
ERROR:  relation "galaxy" does not exist
LINE 1: insert into galaxy values (5, 'gal5', 'large', true, true, 1...
                    ^
postgres=> \c universe
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "universe" as user "freecodecamp".
universe=> insert into galaxy values (5, 'gal5', 'large', true, true, 1300, 'scraggly', 13000);
INSERT 0 1
universe=> insert into galaxy values (6, 'gal6', 'large', true, true, 1300, 'scraggly', 13000);
INSERT 0 1
universe=> select * from star;
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
| star_id | name | age_in_millions_of_years | star_type | distance_from_earth | color | description | has_life | galaxy_in | galaxy_id |
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
+---------+------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
(0 rows)

universe=> insert into star (star_id, name, galaxy_id) values (1, 'star1', 1);
INSERT 0 1
universe=> insert into star (star_id, name, galaxy_id) values (2, 'star2', 2);
INSERT 0 1
universe=> insert into star (star_id, name, galaxy_id) values (3, 'star3', 3);
INSERT 0 1
universe=> insert into star (star_id, name, galaxy_id) values (4, 'star4', 4);
INSERT 0 1
universe=> insert into star (star_id, name, galaxy_id) values (5, 'star5', 5);
INSERT 0 1
universe=> insert into star (star_id, name, galaxy_id) values (6, 'star6', 6);
INSERT 0 1
universe=> select * from star;
+---------+-------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
| star_id | name  | age_in_millions_of_years | star_type | distance_from_earth | color | description | has_life | galaxy_in | galaxy_id |
+---------+-------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
|       1 | star1 |                          |           |                     |       |             |          |           |         1 |
|       2 | star2 |                          |           |                     |       |             |          |           |         2 |
|       3 | star3 |                          |           |                     |       |             |          |           |         3 |
|       4 | star4 |                          |           |                     |       |             |          |           |         4 |
|       5 | star5 |                          |           |                     |       |             |          |           |         5 |
|       6 | star6 |                          |           |                     |       |             |          |           |         6 |
+---------+-------+--------------------------+-----------+---------------------+-------+-------------+----------+-----------+-----------+
(6 rows)

universe=> select * from galaxy;
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
| galaxy_id | name | description | has_life | is_spherical | age_in_millions_of_years | galaxy_types | distance_from_earth |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
|         1 | gal1 | massive     | t        | f            |                     1000 | round        |               10000 |
|         2 | gal2 | very large  | f        | t            |                     1100 | oval         |               11000 |
|         3 | gal3 | large       | f        | t            |                     1200 | oval         |               12000 |
|         4 | gal4 | large       | t        | t            |                     1300 | scraggly     |               13000 |
|         5 | gal5 | large       | t        | t            |                     1300 | scraggly     |               13000 |
|         6 | gal6 | large       | t        | t            |                     1300 | scraggly     |               13000 |
+-----------+------+-------------+----------+--------------+--------------------------+--------------+---------------------+
(6 rows)

universe=> insert into planet (planet_id, name, star_id) values (1, 'planet1', 1);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (2, 'planet2', 1);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (3, 'planet3', 2);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (4, 'planet4', 2);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (5, 'planet5', 3);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (6, 'planet6', 3);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (7, 'planet7', 4);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (8, 'planet8', 4);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (9, 'planet9', 5);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (10, 'planet10', 5);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (11, 'planet11', 6);
INSERT 0 1
universe=> insert into planet (planet_id, name, star_id) values (12, 'planet12', 6);
INSERT 0 1
universe=> select * from planet;
+-----------+----------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+---------+---------+
| planet_id |   name   | description | planet_type | has_life | color | distance_from_earth | is_spherical | age_in_millions_of_years | star_in | star_id |
+-----------+----------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+---------+---------+
|         1 | planet1  |             |             |          |       |                     |              |                          |         |       1 |
|         2 | planet2  |             |             |          |       |                     |              |                          |         |       1 |
|         3 | planet3  |             |             |          |       |                     |              |                          |         |       2 |
|         4 | planet4  |             |             |          |       |                     |              |                          |         |       2 |
|         5 | planet5  |             |             |          |       |                     |              |                          |         |       3 |
|         6 | planet6  |             |             |          |       |                     |              |                          |         |       3 |
|         7 | planet7  |             |             |          |       |                     |              |                          |         |       4 |
|         8 | planet8  |             |             |          |       |                     |              |                          |         |       4 |
|         9 | planet9  |             |             |          |       |                     |              |                          |         |       5 |
|        10 | planet10 |             |             |          |       |                     |              |                          |         |       5 |
|        11 | planet11 |             |             |          |       |                     |              |                          |         |       6 |
|        12 | planet12 |             |             |          |       |                     |              |                          |         |       6 |
+-----------+----------+-------------+-------------+----------+-------+---------------------+--------------+--------------------------+---------+---------+
(12 rows)

universe=> insert into moon (moon_id, name, planet_id) values (1, 'm1', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (2, 'm2', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (3, 'm3', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (4, 'm4', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (5, 'm5', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (6, 'm6', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (7, 'm7', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (8, 'm8', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (9, 'm9', 1);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (10, 'm10', 5);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (11, 'm11', 5);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (12, 'm12', 5);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (13, 'm13', 8);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (14, 'm14', 8);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (15, 'm15', 8);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (16, 'm16', 10);
INSERT 0 1
universe=> 
universe=> insert into moon (moon_id, name, planet_id) values (17, 'm17', 10);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (18, 'm118', 10);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (19, 'm19', 10);
INSERT 0 1
universe=> insert into moon (moon_id, name, planet_id) values (20, 'm20', 10);
INSERT 0 1
universe=> create table has_life;
ERROR:  syntax error at or near ";"
LINE 1: create table has_life;
                             ^
universe=> create table has_life();
CREATE TABLE
universe=> alter table has_life add column life_id NOT NULL UNIQUE PRIMARY KEY
universe-> ;
ERROR:  syntax error at or near "NOT"
LINE 1: alter table has_life add column life_id NOT NULL UNIQUE PRIM...
                                                ^
universe=> alter table has_life add column life_id UNIQUE NOT NULL PRIMARY KEY
universe-> ;
ERROR:  syntax error at or near "UNIQUE"
LINE 1: alter table has_life add column life_id UNIQUE NOT NULL PRIM...
                                                ^
universe=> alter table has_life add column life_id INT UNIQUE NOT NULL PRIMARY KEY
universe-> ;
ALTER TABLE
universe=> alter table has_life add column name varchar(20);
ALTER TABLE
universe=> alter table has_life add column life_type text not null;
ALTER TABLE
universe=> alter table has_life rename column life_id(has_life_id);
ERROR:  syntax error at or near "("
LINE 1: alter table has_life rename column life_id(has_life_id);
                                                  ^
universe=> alter table has_life rename column life_id (has_life_id);
ERROR:  syntax error at or near "("
LINE 1: alter table has_life rename column life_id (has_life_id);
                                                   ^
universe=> alter table has_life rename column life_id to has_life_id;
ALTER TABLE
universe=> select * from has_life;
+-------------+------+-----------+
| has_life_id | name | life_type |
+-------------+------+-----------+
+-------------+------+-----------+
(0 rows)

universe=> alter table has_life add column unique_id int unique;
ALTER TABLE
universe=> insert into table has_life (has_life_id) values (1, 2, 3);
ERROR:  syntax error at or near "table"
LINE 1: insert into table has_life (has_life_id) values (1, 2, 3);
                    ^
universe=> insert into has life (has_life_id) values (1, 2, 3);
ERROR:  syntax error at or near "life"
LINE 1: insert into has life (has_life_id) values (1, 2, 3);
                        ^
universe=> insert into has_life (has_life_id) values (1, 2, 3);
ERROR:  INSERT has more expressions than target columns
LINE 1: insert into has_life (has_life_id) values (1, 2, 3);
                                                      ^
universe=> insert into has_life (has_life_id) values (1);
ERROR:  null value in column "life_type" violates not-null constraint
DETAIL:  Failing row contains (1, null, null, null).
universe=> insert into has_life values (1, 'human', 'humanoid');
INSERT 0 1
universe=> insert into has_life values (1, 'dog', 'dogoid');
ERROR:  duplicate key value violates unique constraint "has_life_pkey"
DETAIL:  Key (has_life_id)=(1) already exists.
universe=> insert into has_life values (2, 'dog', 'dogoid');
INSERT 0 1
universe=> insert into has_life values (3, 'cat', 'catoid');
INSERT 0 1
universe=> 
universe=> 