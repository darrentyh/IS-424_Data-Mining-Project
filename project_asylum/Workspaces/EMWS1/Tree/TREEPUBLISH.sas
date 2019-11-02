****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_acceptance_rate = 'Predicted: acceptance_rate' ;
label V_acceptance_rate = 'Validated: acceptance_rate' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_12 = PUT( accepted_rejected , BEST12.);
 %DMNORMIP( _ARBFMT_12);
IF _ARBFMT_12 IN ('1' ) THEN DO;
  IF  NOT MISSING(Rejected ) AND 
    Rejected  <                  0.5 THEN DO;
    _NODE_  =                    6;
    _LEAF_  =                   18;
    P_acceptance_rate  =                    1;
    V_acceptance_rate  =                    1;
    END;
  ELSE DO;
    IF  NOT MISSING(Successful ) AND 
      Successful  <                  2.5 THEN DO;
      IF  NOT MISSING(Successful ) AND 
                         1.5 <= Successful  THEN DO;
        IF  NOT MISSING(Rejected ) AND 
                           1.5 <= Rejected  THEN DO;
          _NODE_  =                   29;
          _LEAF_  =                   21;
          P_acceptance_rate  =                  0.5;
          V_acceptance_rate  =                  0.5;
          END;
        ELSE DO;
          _NODE_  =                   28;
          _LEAF_  =                   20;
          P_acceptance_rate  =     0.66666666666666;
          V_acceptance_rate  =     0.66666666666666;
          END;
        END;
      ELSE DO;
        _NODE_  =                   16;
        _LEAF_  =                   19;
        P_acceptance_rate  =                  0.5;
        V_acceptance_rate  =                  0.5;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Rejected ) AND 
        Rejected  <                  2.5 THEN DO;
        IF  NOT MISSING(Successful ) AND 
                           7.5 <= Successful  THEN DO;
          IF  NOT MISSING(Successful ) AND 
            Successful  <                 15.5 THEN DO;
            _NODE_  =                   52;
            _LEAF_  =                   24;
            P_acceptance_rate  =     0.87671228219924;
            V_acceptance_rate  =     0.88099086903434;
            END;
          ELSE DO;
            _NODE_  =                   53;
            _LEAF_  =                   25;
            P_acceptance_rate  =     0.95908149605102;
            V_acceptance_rate  =      0.9590284234576;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Rejected ) AND 
                             1.5 <= Rejected  THEN DO;
            _NODE_  =                   51;
            _LEAF_  =                   23;
            P_acceptance_rate  =     0.67447594814007;
            V_acceptance_rate  =     0.66800053354675;
            END;
          ELSE DO;
            _NODE_  =                   50;
            _LEAF_  =                   22;
            P_acceptance_rate  =     0.80191288364537;
            V_acceptance_rate  =     0.79519496204278;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Successful ) AND 
          Successful  <                 28.5 THEN DO;
          IF  NOT MISSING(Successful ) AND 
            Successful  <                  6.5 THEN DO;
            _NODE_  =                   54;
            _LEAF_  =                   26;
            P_acceptance_rate  =     0.54678937950937;
            V_acceptance_rate  =     0.54468819468819;
            END;
          ELSE DO;
            _NODE_  =                   55;
            _LEAF_  =                   27;
            P_acceptance_rate  =     0.64834361214128;
            V_acceptance_rate  =     0.65046418882974;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Rejected ) AND 
            Rejected  <                 18.5 THEN DO;
            _NODE_  =                   56;
            _LEAF_  =                   28;
            P_acceptance_rate  =     0.87805121335983;
            V_acceptance_rate  =     0.87001900068547;
            END;
          ELSE DO;
            _NODE_  =                   57;
            _LEAF_  =                   29;
            P_acceptance_rate  =     0.69954375932873;
            V_acceptance_rate  =     0.69644777231835;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(Successful ) AND 
                     0.5 <= Successful  THEN DO;
    IF  NOT MISSING(Rejected ) AND 
      Rejected  <                 11.5 THEN DO;
      IF  NOT MISSING(Successful ) AND 
                         2.5 <= Successful  THEN DO;
        IF  NOT MISSING(Successful ) AND 
                           4.5 <= Successful  THEN DO;
          IF  NOT MISSING(Successful ) AND 
                             6.5 <= Successful  THEN DO;
            _NODE_  =                   41;
            _LEAF_  =                    9;
            P_acceptance_rate  =     0.44597186717564;
            V_acceptance_rate  =     0.44644379023539;
            END;
          ELSE DO;
            _NODE_  =                   40;
            _LEAF_  =                    8;
            P_acceptance_rate  =     0.39268064590223;
            V_acceptance_rate  =     0.39048159765071;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Rejected ) AND 
            Rejected  <                  6.5 THEN DO;
            _NODE_  =                   38;
            _LEAF_  =                    6;
            P_acceptance_rate  =     0.39691018857685;
            V_acceptance_rate  =     0.39694564694564;
            END;
          ELSE DO;
            _NODE_  =                   39;
            _LEAF_  =                    7;
            P_acceptance_rate  =      0.2880944215699;
            V_acceptance_rate  =     0.28122882864262;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Rejected ) AND 
          Rejected  <                  4.5 THEN DO;
          IF  NOT MISSING(Successful ) AND 
                             1.5 <= Successful  THEN DO;
            _NODE_  =                   35;
            _LEAF_  =                    3;
            P_acceptance_rate  =     0.36918918918918;
            V_acceptance_rate  =     0.37510040160642;
            END;
          ELSE DO;
            _NODE_  =                   34;
            _LEAF_  =                    2;
            P_acceptance_rate  =     0.27733277121978;
            V_acceptance_rate  =     0.27727759914255;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Successful ) AND 
                             1.5 <= Successful  THEN DO;
            _NODE_  =                   37;
            _LEAF_  =                    5;
            P_acceptance_rate  =     0.22171951284329;
            V_acceptance_rate  =     0.22405754418741;
            END;
          ELSE DO;
            _NODE_  =                   36;
            _LEAF_  =                    4;
            P_acceptance_rate  =     0.12565278151436;
            V_acceptance_rate  =     0.12821819384319;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Successful ) AND 
        Successful  <                  6.5 THEN DO;
        IF  NOT MISSING(Rejected ) AND 
                          32.5 <= Rejected  THEN DO;
          IF  NOT MISSING(Rejected ) AND 
                            80.5 <= Rejected  THEN DO;
            _NODE_  =                   45;
            _LEAF_  =                   13;
            P_acceptance_rate  =     0.01861408832751;
            V_acceptance_rate  =     0.01989406727246;
            END;
          ELSE DO;
            _NODE_  =                   44;
            _LEAF_  =                   12;
            P_acceptance_rate  =      0.0591733006781;
            V_acceptance_rate  =     0.05951420728059;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Successful ) AND 
            Successful  <                  2.5 THEN DO;
            _NODE_  =                   42;
            _LEAF_  =                   10;
            P_acceptance_rate  =     0.07273716059257;
            V_acceptance_rate  =     0.07284925830557;
            END;
          ELSE DO;
            _NODE_  =                   43;
            _LEAF_  =                   11;
            P_acceptance_rate  =     0.18563398172804;
            V_acceptance_rate  =     0.18487874186567;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Rejected ) AND 
          Rejected  <                 70.5 THEN DO;
          IF  NOT MISSING(Successful ) AND 
                            15.5 <= Successful  THEN DO;
            _NODE_  =                   47;
            _LEAF_  =                   15;
            P_acceptance_rate  =      0.3738343948483;
            V_acceptance_rate  =     0.37678396191275;
            END;
          ELSE DO;
            _NODE_  =                   46;
            _LEAF_  =                   14;
            P_acceptance_rate  =     0.27169122904058;
            V_acceptance_rate  =     0.27026864580124;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Successful ) AND 
            Successful  <                 37.5 THEN DO;
            _NODE_  =                   48;
            _LEAF_  =                   16;
            P_acceptance_rate  =     0.10563042688911;
            V_acceptance_rate  =     0.10701736479272;
            END;
          ELSE DO;
            _NODE_  =                   49;
            _LEAF_  =                   17;
            P_acceptance_rate  =     0.25069453488683;
            V_acceptance_rate  =     0.25518673193306;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    4;
    _LEAF_  =                    1;
    P_acceptance_rate  =                    0;
    V_acceptance_rate  =                    0;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

