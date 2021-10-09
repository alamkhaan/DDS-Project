SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE statistics AS
	PROCEDURE t20i_statistics_player(S IN VARCHAR2);
	PROCEDURE odi_statistics_player(S IN VARCHAR2);
	PROCEDURE test_statistics_player(S IN VARCHAR2);
	PROCEDURE all_statistics_player(S IN VARCHAR2);
	PROCEDURE t20i_statistics_team(S IN VARCHAR2);
	PROCEDURE odi_statistics_team(S IN VARCHAR2);
	PROCEDURE test_statistics_team(S IN VARCHAR2);
	PROCEDURE all_statistics_team(S IN VARCHAR2);
	PROCEDURE test_statistics_continent(S IN VARCHAR2);
	PROCEDURE odi_statistics_continent(S IN VARCHAR2);
	PROCEDURE t20i_statistics_continent(S IN VARCHAR2);

END statistics;
/

CREATE OR REPLACE PACKAGE BODY statistics AS


	PROCEDURE t20i_statistics_player(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt:= 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if B = S Then	
				cnt := cnt+1;	
				DBMS_OUTPUT.PUT_LINE(A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_statistics_player;


	PROCEDURE odi_statistics_player(S IN VARCHAR2)
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
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if B = S Then	
				cnt := cnt+1;	
				DBMS_OUTPUT.PUT_LINE(A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_statistics_player;


	PROCEDURE test_statistics_player(S IN VARCHAR2)
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
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if B = S Then		
				cnt := cnt+1;
				DBMS_OUTPUT.PUT_LINE(A||' '||B||' '||C||' '||D);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_statistics_player;

	PROCEDURE all_statistics_player(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        C:= 0;
        D:= 0;
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername where S=name) LOOP
			A := R.teamname;
			B := R.name;
			C :=  C+ R.runs;
			D :=  D+ R.wickets;
			f:= 0;
				
        END Loop;

        FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername where S=name) LOOP
			A := R.teamname;
			B := R.name;
			C :=  C+ R.runs;
			D :=  D+ R.wickets;
			f:= 0;
				
        END Loop;


        FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername where S=name) LOOP
			A := R.teamname;
			B := R.name;
			C :=  C+ R.runs;
			D :=  D+ R.wickets;
			f:= 0;
				
        END Loop;


		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		else  DBMS_OUTPUT.PUT_LINE(A||' '||B||' '||C||' '||D);

		end if;

		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END all_statistics_player;




	PROCEDURE t20i_statistics_team(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt:= 0;
		FOR R IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;

			if A = S Then		
				cnt := cnt+1;
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
	END t20i_statistics_team;


	PROCEDURE odi_statistics_team(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt :=0;
		FOR R IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then	
				cnt := cnt + 1;	
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
	END odi_statistics_team;


	PROCEDURE test_statistics_team(S IN VARCHAR2)
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
		FOR R IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername) LOOP
			A := R.teamname;
			B := R.name;
			C := R.runs;
			D := R.wickets;
			if A = S Then	
				cnt := cnt+1;	
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
	END test_statistics_team;

	PROCEDURE all_statistics_team(S IN VARCHAR2)
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
        FOR L IN (select * from team where S=teamname) LOOP
        	A := L.teamname;
        	B := L.playername;
        	C:= 0;
        	D:= 0;
        	FOR R IN (select * from test_stat where B=name) LOOP
				C :=  C+ R.runs;
				D :=  D+ R.wickets;
				f:= 0;
				
        	END Loop;

        	FOR R IN (select * from odi_stat where B=name) LOOP
				C :=  C+ R.runs;
				D :=  D+ R.wickets;
				f:= 0;
				
        	END Loop;


	        FOR R IN (select * from t20i_stat where B=name) LOOP
				C :=  C+ R.runs;
				D :=  D+ R.wickets;
				f:= 0;
				
        	END Loop;
        	cnt:= cnt+1;
        	DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B||' '||C||' '||D);
        END LOOP;
		


		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		

		end if;

		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END all_statistics_team;


	PROCEDURE test_statistics_continent(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	E VARCHAR2(20);
	G VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
        FOR R IN (select continentname,teamname from continent) LOOP
        	E := R.continentname;
        	A := R.teamname;
        	if E = S then
				FOR R2 IN (select teamname,name,runs,wickets from test_stat LEFT OUTER JOIN  team on test_stat.name=team.playername) LOOP
					B := R2.name;
					C := R2.runs;
					D := R2.wickets;
					G := R2.teamname;
					if A=G then
						cnt := cnt+1;
						DBMS_OUTPUT.PUT_LINE(cnt||' '||E||' '||A||' '||B||' '||C||' '||D);
						f := 0;	
					end if;
		        END Loop;
		    end if;
		end loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END test_statistics_continent;



	PROCEDURE odi_statistics_continent(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	E VARCHAR2(20);
	G VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
        FOR R IN (select continentname,teamname from continent) LOOP
        	E := R.continentname;
        	A := R.teamname;
        	if E = S then
				FOR R2 IN (select teamname,name,runs,wickets from odi_stat LEFT OUTER JOIN  team on odi_stat.name=team.playername) LOOP
					B := R2.name;
					C := R2.runs;
					D := R2.wickets;
					G := R2.teamname;
					if A=G then
						cnt := cnt+1;
						DBMS_OUTPUT.PUT_LINE(cnt||' '||E||' '||A||' '||B||' '||C||' '||D);
						f := 0;	
					end if;
		        END Loop;
		    end if;
		end loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END odi_statistics_continent;



	PROCEDURE t20i_statistics_continent(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	E VARCHAR2(20);
	G VARCHAR2(20);
	C Number;
	D Number;
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt:= 0;
        FOR R IN (select continentname,teamname from continent) LOOP
        	E := R.continentname;
        	A := R.teamname;
        	if E = S then
				FOR R2 IN (select teamname,name,runs,wickets from t20i_stat LEFT OUTER JOIN  team on t20i_stat.name=team.playername) LOOP
					B := R2.name;
					C := R2.runs;
					D := R2.wickets;
					G := R2.teamname;
					if A=G then
						cnt := cnt+1;
						DBMS_OUTPUT.PUT_LINE(cnt||' '||E||' '||A||' '||B||' '||C||' '||D);
						f := 0;	
					end if;
		        END Loop;
		    end if;
		end loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END t20i_statistics_continent;

END statistics;
/