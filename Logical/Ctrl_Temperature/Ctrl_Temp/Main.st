
PROGRAM _INIT
	(* Insert code here *)
	ECTempSimModel_0.Enable := TRUE;
	
//	minTemp := -10;
//	maxTemp := 150;
		
		END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	ECTempSimModel_0 ();
	
	IF (ECTempSimModel_0.OutTemp >= 410) THEN
		ECTempSimModel_0.InHeat := -10;
	END_IF;
	IF (ECTempSimModel_0.OutTemp <= -10) THEN
		ECTempSimModel_0.InHeat := 0;
	END_IF;
	

	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

