SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE teammembers AS
	PROCEDURE UsingPlayerName(S IN VARCHAR2);
	PROCEDURE UsingTeamName(P IN VARCHAR2);
	PROCEDURE UsingContinentName(S IN VARCHAR2);

END teammembers;
/

CREATE OR REPLACE PACKAGE BODY teammembers AS

	PROCEDURE UsingPlayerName(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C VARCHAR2(20);
	D VARCHAR2(20);
	f Number;
	cnt Number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (SELECT teamname, playername FROM team) LOOP
			A := R.teamname;
			B := R.playername;
			if B = S Then
				FOR R2 IN (SELECT teamname, playername FROM team) LOOP
					C := R2.teamname;
					D := R2.playername;
					if A = C Then
						cnt := cnt + 1;
						DBMS_OUTPUT.PUT_LINE(cnt||' '||D||' '||C);
						f := 0;
					END if;
				END loop;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END UsingPlayerName;



	PROCEDURE UsingTeamName(P IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	f Number;
	cnt number;
	BEGIN
        f := 1;
        cnt := 0;
		FOR R IN (SELECT teamname, playername FROM team) LOOP
			A := R.teamname;
			B := R.playername;
			if A = P Then	
				cnt := cnt +1;	
				DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||B);
				f := 0;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');
	END UsingTeamName;



	PROCEDURE UsingContinentName(S IN VARCHAR2)
	IS
	A VARCHAR2(20);
	B VARCHAR2(20);
	C VARCHAR2(20);
	D VARCHAR2(20);
	f Number;
	cnt number;
	BEGIN
		f := 1;
		FOR R IN (SELECT continentname, teamname FROM continent2) LOOP
			A := R.continentname;
			B := R.teamname;
			cnt:= 0;
			if A = S Then
				FOR R2 IN (SELECT teamname, playername FROM team) LOOP
					C := R2.teamname;
					D := R2.playername;
					if B = C Then
						cnt := cnt + 1;
						DBMS_OUTPUT.PUT_LINE(cnt||' '||A||' '||C||' '||D);
						f := 0;
					END if;
				END loop;
			END if;		
        END Loop;
		if f = 1 then
			DBMS_OUTPUT.PUT_LINE('N/A');
		end if;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('DATA NOT FOUND');

	END UsingContinentName;

END teammembers;
/