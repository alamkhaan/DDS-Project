clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('1 = T20I Teamwise Batting Ranking, 2 = T20I Teamwise Bowling Ranking, 3 = ODI Teamwise Batting Ranking, 4 = ODI Teamwise Bowling Ranking, 5 = TEST Teamwise Batting Ranking, 6 = TEST Teamwise Bowling Ranking, 7 = TEST Player Batting Ranking, 8 = TEST Player Bowling Ranking, 9 = ODI Player Batting Ranking, 10 = ODI Player Bowling Ranking, 11 = T20I Player Batting Ranking, 12 = T20I Player Bowling Ranking, 13 = T20I Batting Ranking, 14 = T20I Bowling Ranking, 15 = ODI Batting Ranking, 16 = ODI Bowling Ranking, 17 = TEST Batting Ranking, 18 = TEST Bowling Ranking');

END;
/

ACCEPT X NUMBER PROMPT "Choose option = "
ACCEPT Y CHAR PROMPT   "Enter Name = "
DECLARE
    N number;
	S varchar2(30);
	D number;
	ALAM EXCEPTION;
Begin
	
	N := &X;
	S := '&Y';
	if N=1 THEN
		ranking.t20i_teamwise_batting_ranking(S);
	elsif N=2 THEN
		ranking.t20i_teamwise_bowling_ranking(S);
	elsif N=3 THEN
		ranking.odi_teamwise_batting_ranking(S);
	elsif N=4 THEN
		ranking.odi_teamwise_bowling_ranking(S);
	elsif N=5 THEN
		ranking.test_teamwise_batting_ranking(S);
	elsif N=6 THEN
		ranking.test_teamwise_bowling_ranking(S);
	elsif N=7 THEN
		D := ranking.test_player_batting_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=8 THEN
		D := ranking.test_player_bowling_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=9 THEN
		D := ranking.odi_player_batting_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=10 THEN
		D := ranking.odi_player_bowling_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=11 THEN
		D := ranking.t20i_player_batting_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=12 THEN
		D := ranking.t20i_player_bowling_ranking(S);
		if D= -1 then
			DBMS_OUTPUT.PUT_LINE('Not Found Player Name '||S);
		else DBMS_OUTPUT.PUT_LINE(D);
		end if;
	elsif N=13 THEN
		ranking.t20i_overall_batting_ranking;
	elsif N=14 THEN
		ranking.t20i_overall_bowling_ranking;
	elsif N=15 THEN
		ranking.odi_overall_batting_ranking;
	elsif N=16 THEN
		ranking.odi_overall_bowling_ranking;
	elsif N=17 THEN
		ranking.test_overall_batting_ranking;
	elsif N=18 THEN
		ranking.test_overall_bowling_ranking;
	else RAISE ALAM;
	end if;


	EXCEPTION 
		When ALAM THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Option');


End;
/

