
PROGRAM _INIT
	(* Insert code here *)
	MpAlarmXcore_0.Enable        := TRUE;
	MpAlarmXcore_0.MpLink        := ADR (gAlarmXCore);
	
	MpAlarmXHistory_0.Enable     := TRUE;
	MpAlarmXHistory_0.MpLink     := ADR (gAlarmXHistory);
	MpAlarmXHistory_0.DeviceName := ADR ('History');
	
	

	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	 
	MpAlarmXcore_0      ();
	MpAlarmXHistory_0   ();
	

	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	
	MpAlarmXcore_0.Enable      := FALSE;
	MpAlarmXcore_0                   ();
	MpAlarmXHistory_0.Enable   := FALSE;
	MpAlarmXHistory_0                ();
	
	 
END_PROGRAM

