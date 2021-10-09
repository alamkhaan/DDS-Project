clear screen;

drop table test1;
create table test1(id number, name varchar2(20),runs number,wickets number);

drop table odi1;
create table odi1(id number, name varchar2(20),runs number,wickets number);

drop table team1;
create table team1(id number, teamname varchar2(20),playername varchar2(20));

@"C:\Users\alamkhan\Desktop\DDS Project\trigger1.sql"


insert into test1 values (1,'Shakib Al Hasan',3933,215);
insert into test1 values (2,'Ravindra Jadeja',2145,227);
insert into test1 values (3,'Thisara Perera',203,11);
insert into test1 values (4,'Jason Holder',2434,137);
insert into test1 values (5,'Ravichandran Ashwin',2685,413);
insert into test1 values (6,'Kyle Jamieson',256,46);
insert into test1 values (7,'Mitchell Starc',1596,255);
insert into test1 values (8,'Pat Cummins',708,164);
insert into test1 values (9,'Chris Woakes',1389,119);
insert into test1 values (10,'Colin de Grandhomme',1207,47);
insert into test1 values (11,'Mohammad Nabi',33,8);
insert into test1 values (12,'Rashid Khan',106,34);
insert into test1 values (13,'Mitchell Santner',766,41);


commit;
select * from test1;



insert into odi1 values (1,'Ben Stokes',2871,74);
insert into odi1 values (2,'Imad Wasim',986,44);
insert into odi1 values (3,'Jean-Paul Duminy',5117,69);
insert into odi1 values (4,'Sikandar Raza',3011,62);
insert into odi1 values (5,'Dawid Malan',158,0);
insert into odi1 values (6,'Babar Azam',3985,0);
insert into odi1 values (7,'Aaron Finch',5232,0);
insert into odi1 values (8,'Virat Kohli',12169,4);
insert into odi1 values (9,'KL Rahul',1509,0);
insert into odi1 values (10,'Eoin Morgan',7701,0);
insert into odi1 values (11,'Angelo Mathews',5835,120);
insert into odi1 values (12,'Chris Gayle',10480,167);
insert into odi1 values (13,'Shoaib Malik',1894	,140);


commit;
select * from odi1;


insert into team1 values (1,'Bangladesh','Shakib Al Hasan');
insert into team1 values (2,'India','Ravindra Jadeja');
insert into team1 values (3,'Sri Lanka','Thisara Perera');
insert into team1 values (4,'West Indies','Jason Holder');
insert into team1 values (5,'India','Ravichandran Ashwin');
insert into team1 values (6,'New Zealand','Kyle Jamieson');
insert into team1 values (7,'Australia','Mitchell Starc');
insert into team1 values (8,'Australia','Pat Cummins');
insert into team1 values (9,'England','Chris Woakes');
insert into team1 values (10,'New Zealand','Colin de Grandhomme');
insert into team1 values (11,'Afghanistan','Mohammad Nabi');
insert into team1 values (12,'Afghanistan','Rashid Khan');
insert into team1 values (13,'New Zealand','Mitchell Santner');
insert into team1 values (14,'England','Ben Stokes');
insert into team1 values (15,'Pakistan','Imad Wasim');
insert into team1 values (16,'South Africa','Jean-Paul Duminy');
insert into team1 values (17,'Zimbabwe','Sikandar Raza');
insert into team1 values (18,'England','Dawid Malan');
insert into team1 values (19,'Pakistan','Babar Azam');
insert into team1 values (20,'Australia','Aaron Finch');
insert into team1 values (21,'India','Virat Kohli');
insert into team1 values (22,'India','KL Rahul');
insert into team1 values (23,'England','Eoin Morgan');
insert into team1 values (24,'Sri Lanka','Angelo Mathews');
insert into team1 values (25,'West Indies','Chris Gayle');
insert into team1 values (26,'Pakistan','Shoaib Malik');

commit;
select * from team1;



CREATE OR REPLACE VIEW odi_stat as(select * from odi1 union select * from odi2@site2_pc);
CREATE OR REPLACE VIEW test_stat as(select * from test1 union select * from test2@site2_pc);
CREATE OR REPLACE VIEW t20i_stat as(select * from t20i2@site2_pc);
CREATE OR REPLACE VIEW team as(select * from team1);
CREATE OR REPLACE VIEW continent as(select * from continent2@site2_pc);

--select * from odi_stat;
--select * from test_stat;
--select * from t20i_stat;
--select * from team;
--select * from continent;

@"C:\Users\alamkhan\Desktop\DDS Project\ranking.sql"
