01  WS-AREA. 
    05  WS-COUNT PIC 9(4) VALUE ZEROS. 
    05  WS-TABLE OCCURS 100 TIMES INDEXED BY WS-INDEX. 
       10  WS-TABLE-ENTRY PIC X(80). 
    05  WS-INDEX-STR PIC X(3). 

PROCEDURE DIVISION. 
    PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 100 
       MOVE WS-INDEX TO WS-INDEX-STR 
       STRING 'Record ' DELIMITED BY SIZE WS-INDEX-STR DELIMITED BY SIZE INTO WS-TABLE-ENTRY(WS-INDEX) 
       END-STRING 
    END-PERFORM. 

    DISPLAY "Table populated." 
    STOP RUN.