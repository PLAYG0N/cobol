       IDENTIFICATION DIVISION.
       PROGRAM-ID. filetest.
       
       AUTHOR PLAYG0N.
       

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 TEST-DATA PIC X(25) VALUE 'Hello World'.

       PROCEDURE DIVISION.
       
       DISPLAY TEST-DATA
       
       GOBACK.
       
       