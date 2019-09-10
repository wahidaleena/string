       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       
       DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 WS-STRING PIC A(30).
          01 WS-STR1 PIC A(15) VALUE 'Tutorialspoint'.
          01 WS-STR2 PIC A(7) VALUE 'Welcome'.
          01 WS-STR3 PIC A(7) VALUE 'To AND'.
          01 WS-COUNT PIC 99 VALUE 1.
       
       PROCEDURE DIVISION.
          STRING WS-STR2 DELIMITED BY SIZE
             WS-STR3 DELIMITED BY SPACE
             WS-STR1 DELIMITED BY SIZE
             INTO WS-STRING 
             WITH POINTER WS-COUNT
             ON OVERFLOW DISPLAY 'OVERFLOW!' 
          END-STRING.
          
          DISPLAY 'WS-STRING : 'WS-STRING.
          DISPLAY 'WS-COUNT : 'WS-COUNT.
       
       STOP RUN.
