       IDENTIFICATION                   DIVISION.
       PROGRAM-ID.                      SAMPLE001.
      *
       ENVIRONMENT                      DIVISION.
      *
       DATA                             DIVISION.
       WORKING-STORAGE                  SECTION.
       01 NUM01                         PIC 9(3) VALUE 0.
       01 NUM02                         PIC 9(3).
       01 NUM03                         PIC 9(3).
       01 REMAINDER01                   PIC 9(3).
       01 REMAINDER02                   PIC 9(3).
       01 REMAINDER03                   PIC 9(3).

       PROCEDURE DIVISION.
       
       PERFORM VARYING NUM01 FROM 1 BY 1 UNTIL NUM01 = 101
           DIVIDE 15 INTO NUM01 GIVING NUM02 REMAINDER REMAINDER01
           DIVIDE  3 INTO NUM01 GIVING NUM02 REMAINDER REMAINDER02
           DIVIDE  5 INTO NUM01 GIVING NUM02 REMAINDER REMAINDER03
           
           IF REMAINDER01 = 0 THEN
               DISPLAY "FizzBuzz"
           ELSE
               IF REMAINDER02 = 0 THEN 
                   DISPLAY "Fizz"
               ELSE
                   IF REMAINDER03 = 0 THEN 
                       DISPLAY "Buzz"
                   ELSE
                       DISPLAY NUM01
                   END-IF
               END-IF
           END-IF
           
       END-PERFORM.
       STOP RUN.

