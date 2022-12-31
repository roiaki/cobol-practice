       IDENTIFICATION                   DIVISION.
       PROGRAM-ID.                      sample002.
      
       ENVIRONMENT                      DIVISION.
      
       DATA                             DIVISION.
       WORKING-STORAGE                  SECTION.
       01 MY-DATA PIC X(10).

       PROCEDURE DIVISION.
       MAIN SECTION.
           DISPLAY "what is your name?".
           ACCEPT MY-DATA FROM CONSOLE.
           DISPLAY "your name is " MY-DATA.
           
       STOP RUN.

