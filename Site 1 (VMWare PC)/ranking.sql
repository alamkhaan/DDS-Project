SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE ranking AS
	PROCEDURE t20i_teamwise_batting_ranking(S IN VARCHAR2);
	PROCEDURE t20i_teamwise_bowling_ranking(S IN VARCHAR2);
	PROCEDURE odi_teamwise_batting_ranking(S IN VARCHAR2);
	PROCEDURE odi_teamwise_bowling_ranking(S IN VARCHAR2);
	PROCEDURE test_teamwise_batting_ranking(S IN VARCHAR2);
	PROCEDURE test_teamwise_bowling_ranking(S IN VARCHAR2);

	PROCEDURE t20i_overall_batting_ranking;
	PROCEDURE t20i_overall_bowling_ranking;
	PROCEDURE odi_overall_batting_ranking;
	PROCEDURE odi_overall_bowling_ranking;
	PROCEDURE test_overall_batting_ranking;
	PROCEDURE test_overall_bowling_ranking;

	FUNCTION test_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER;

	FUNCTION test_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER;

	FUNCTION odi_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER;

	FUNCTION odi_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER;

	FUNCTION t20i_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER;

	FUNCTION t20i_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER;
	

END ranking;
/

CREATE OR REPLACE PACKAGE BODY ranking AS

	PROCEDURE t20i_teamwise_batting_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_teamwise_batting_ranking;



	PROCEDURE t20i_teamwise_bowling_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_teamwise_bowling_ranking;


	PROCEDURE odi_teamwise_batting_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_teamwise_batting_ranking;



	PROCEDURE odi_teamwise_bowling_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_teamwise_bowling_ranking;



	PROCEDURE test_teamwise_batting_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_teamwise_batting_ranking;



	PROCEDURE test_teamwise_bowling_ranking(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then
				cnt := cnt  +1;		
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_teamwise_bowling_ranking;




















	FUNCTION test_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_player_batting_ranking;


	FUNCTION test_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_player_bowling_ranking;



	FUNCTION odi_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_player_batting_ranking;


	FUNCTION odi_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_player_bowling_ranking;



	FUNCTION t20i_player_batting_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_player_batting_ranking;


	FUNCTION t20i_player_bowling_ranking(S IN VARCHAR2)
	RETURN NUMBER
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := -1;
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;
			if B = S Then	
				RETURN cnt;
			END if;		
        END Loop;
		RETURN f;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_player_bowling_ranking;





























	PROCEDURE t20i_overall_batting_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_overall_batting_ranking;

	PROCEDURE t20i_overall_bowling_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_overall_bowling_ranking;



	PROCEDURE odi_overall_batting_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_overall_batting_ranking;

	PROCEDURE odi_overall_bowling_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_overall_bowling_ranking;



	PROCEDURE test_overall_batting_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by runs desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_overall_batting_ranking;

	PROCEDURE test_overall_bowling_ranking
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	G VARCHAR2(20);
	H VARCHAR2(20);
	C Number;
	D Number;
	cnt number;
	BEGIN
        cnt := 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername order by wickets desc) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			cnt := cnt  +1;	
			FOR R2 IN(select continentname,teamname from continent) LOOP
				G := R2.teamname;
				H := R2.continentname;
				if A = G Then	
					DBMS_OUTPUT.PUT_LINE(cnt||' '||H||' '||A||' '||B||' '||C||' '||D);
						
				END if;	
			end loop;	
        END Loop;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_overall_bowling_ranking;


END ranking;
/