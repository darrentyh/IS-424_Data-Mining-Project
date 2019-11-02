if upcase(NAME) = "APPLIED_DURING_YEAR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "COUNTRY___TERRITORY_OF_ASYLUM_RE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DECISIONS_OTHER" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "DECISIONS_RECOGNIZED" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "ENCODED_ORIGIN" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "ENCODED_PROCEDURE_TYPE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "ENCODED_TARGET_COUNTRY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "OF_WHICH_UNHCR_ASSISTED_END_YEAR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "OF_WHICH_UNHCR_ASSISTED_START_YE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "ORIGIN" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "OTHERWISE_CLOSED" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_ACCEPTANCE_RATE" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "RSD_PROCEDURE_TYPE___LEVEL" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TOTAL_DECISIONS" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TOTAL_PENDING_END_YEAR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TOTA_PENDING_START_YEAR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "UNSUCCESSFUL" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "YEAR" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
