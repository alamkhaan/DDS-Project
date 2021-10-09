clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('1 = Team Members Using Player Name, 2 = Team Members Using Team Name, 3 = Team Members Using Continent Name, 4 = T20I Statistics of a Player, 5 = ODI Statistics of a Player, 6 = TEST Statistics of a Player, 7 = All Statistics of a Player, 8 = T20I Statistics of a Team, 9 = ODI Statistics of a Team, 10 = TEST Statistics of a Team, 11 = All Statistics of a Team, 12 = T20I Statistics of a Continent, 13 = ODI Statistics of a Continent, 14 = TEST Statistics of a Continent');

END;
/

ACCEPT X NUMBER PROMPT "Choose option = "
ACCEPT Y CHAR PROMPT   "Enter Name = "
DECLARE
    N number;
	S varchar2(30);
	ALAM EXCEPTION;
Begin
	
	N := &X;
	S := '&Y';
	if N=1 THEN
		teammembers.UsingPlayerName(S);
	elsif N=2 THEN
		teammembers.UsingTeamName(S);
	elsif N=3 THEN
		teammembers.UsingContinentName(S);
	elsif N=4 THEN
		statistics.t20i_statistics_player(S);
	elsif N=5 THEN
		statistics.odi_statistics_player(S);
	elsif N=6 THEN
		statistics.test_statistics_player(S);
	elsif N=7 THEN
		statistics.all_statistics_player(S);
	elsif N=8 THEN
		statistics.t20i_statistics_team(S);
	elsif N=9 THEN
		statistics.odi_statistics_team(S);
	elsif N=10 THEN
		statistics.test_statistics_team(S);
	elsif N=11 THEN
		statistics.all_statistics_team(S);
	elsif N=12 THEN
		statistics.t20i_statistics_continent(S);
	elsif N=13 THEN
		statistics.odi_statistics_continent(S);
	elsif N=14 THEN
		statistics.test_statistics_continent(S);
	else RAISE ALAM;
	end if;


	EXCEPTION 
		When ALAM THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');



End;
/