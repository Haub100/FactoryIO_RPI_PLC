PROGRAM AtoB
  VAR
    StartButton AT %IX100.0 : BOOL;
    Sensor AT %IX100.1 : BOOL;
    Conveyor AT %QX100.0 : BOOL;
  END_VAR

  Conveyor := Sensor AND (Conveyor OR StartButton);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : AtoB;
  END_RESOURCE
END_CONFIGURATION
