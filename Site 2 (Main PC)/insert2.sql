clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


drop table test2;
create table test2(id number, name varchar2(20),runs number,wickets number);

drop table odi2;
create table odi2(id number, name varchar2(20),runs number,wickets number);


drop table t20i2;
create table t20i2(id number, name varchar2(20),runs number,wickets number);

drop table continent2;
create table continent2(id number, continentname varchar2(15),teamname varchar2(20));

@"C:\Users\SARK\Desktop\DDS Project\trigger2.sql"

insert into test2 values (1,'Ben Stokes',4631,163);
insert into test2 values (2,'Imad Wasim',0,0);
insert into test2 values (3,'Jean-Paul Duminy',2103,42);
insert into test2 values (4,'Sikandar Raza',1187,34);
insert into test2 values (5,'Dawid Malan',830,0);
insert into test2 values (6,'Babar Azam',2362,0);
insert into test2 values (7,'Aaron Finch',278,0);
insert into test2 values (8,'Virat Kohli',7765,0);
insert into test2 values (9,'KL Rahul',2321,0);
insert into test2 values (10,'Eoin Morgan',700,0);
insert into test2 values (11,'Angelo Mathews',6236,33);
insert into test2 values (12,'Chris Gayle',7215,33);
insert into test2 values (13,'Shoaib Malik',7534,158);

commit;
select * from test2;


insert into odi2 values (1,'Shakib Al Hasan',6600,277);
insert into odi2 values (2,'Ravindra Jadeja',2411,188);
insert into odi2 values (3,'Thisara Perera',2338,175);
insert into odi2 values (4,'Jason Holder',1894,140);
insert into odi2 values (5,'Ravichandran Ashwin',675,150);
insert into odi2 values (6,'Kyle Jamieson',25,5);
insert into odi2 values (7,'Mitchell Starc',428,195);
insert into odi2 values (8,'Pat Cummins',285,111);
insert into odi2 values (9,'Chris Woakes',1315,155);
insert into odi2 values (10,'Colin de Grandhomme',722,27);
insert into odi2 values (11,'Mohammad Nabi',2831,132);
insert into odi2 values (12,'Rashid Khan',1008,140);
insert into odi2 values (13,'Mitchell Santner',927,75);

commit;
select * from odi2;

insert into t20i2 values (1,'Shakib Al Hasan',1763,106);
insert into t20i2 values (2,'Ravindra Jadeja',217,39);
insert into t20i2 values (3,'Thisara Perera',442,19);
insert into t20i2 values (4,'Jason Holder',201,22);
insert into t20i2 values (5,'Ravichandran Ashwin',123,52);
insert into t20i2 values (6,'Kyle Jamieson',41,4);
insert into t20i2 values (7,'Mitchell Starc',70,51);
insert into t20i2 values (8,'Pat Cummins',48,37);
insert into t20i2 values (9,'Chris Woakes',91,8);
insert into t20i2 values (10,'Colin de Grandhomme',503,12);
insert into t20i2 values (11,'Mohammad Nabi',1366,72);
insert into t20i2 values (12,'Rashid Khan',179,95);
insert into t20i2 values (13,'Mitchell Santner',335,60);
insert into t20i2 values (14,'Ben Stokes',442,19);
insert into t20i2 values (15,'Imad Wasim',328,51);
insert into t20i2 values (16,'Jean-Paul Duminy',1934,21);
insert into t20i2 values (17,'Sikandar Raza',524,13);
insert into t20i2 values (18,'Dawid Malan',1123,1);
insert into t20i2 values (19,'Babar Azam',2204,0);
insert into t20i2 values (20,'Aaron Finch',2473,0);
insert into t20i2 values (21,'Virat Kohli',3159,4);
insert into t20i2 values (22,'KL Rahul',1557,0);
insert into t20i2 values (23,'Eoin Morgan',2360,0);
insert into t20i2 values (24,'Angelo Mathews',1148,38);
insert into t20i2 values (25,'Chris Gayle',1854,19);
insert into t20i2 values (26,'Shoaib Malik',2375,28);

commit;
select * from t20i2;


insert into continent2 values (1,'Asia','Bangladesh');
insert into continent2 values (2,'Asia','Pakistan');
insert into continent2 values (3,'Asia','India');
insert into continent2 values (4,'Asia','Sri Lanka');
insert into continent2 values (5,'Asia','Afghanistan');
insert into continent2 values (6,'Africa','South Africa');
insert into continent2 values (7,'Africa','Zimbabwe');
insert into continent2 values (8,'Europe','England');
insert into continent2 values (9,'North America','West Indies');
insert into continent2 values (10,'Oceania','Australia');
insert into continent2 values (11,'Oceania','New Zealand');

commit;
select * from continent2;

@"C:\Users\SARK\Desktop\DDS Project\teammembers.sql"
@"C:\Users\SARK\Desktop\DDS Project\stat.sql"

CREATE OR REPLACE VIEW odi_stat as(select * from odi2 union select * from odi1@site1);
CREATE OR REPLACE VIEW test_stat as(select * from test2 union select * from test1@site1);
CREATE OR REPLACE VIEW t20i_stat as(select * from t20i2);
CREATE OR REPLACE VIEW team as(select * from team1@site1);
CREATE OR REPLACE VIEW continent as(select * from continent2);