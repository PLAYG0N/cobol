       IDENTIFICATION DIVISION.
       PROGRAM-ID. FILEHANDLER.
       
       ENVIRONMENT DIVISION.
       
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT MY-FILE ASSIGN TO FILENAME
       ORGANISATION IS SEQUENTIAL.
       
       DATA DIVISION.

       FILE SECTION.
       FD MY-FILE
           DATA RECORD IS LOCAL-FILE-RECORD.

       WORKING-STORAGE SECTION.

       01 WS-FILE-RECORD PIC X(500). 
       
       LINKAGE SECTION.
       
       COPY "FILEHANDLER.cpy".
       COPY "FILESTATUS.cpy".

       PROCEDURE DIVISION USING    FILEHANDLER
                                   FILENAME-FILE-STATUS.   
       MAIN SECTION.

           PERFORM INPUT-VALIDATION 
           PERFORM FILE-HANDLING
           PERFORM CLOSING
           EXIT.
       
       FILE-HANDLING SECTION.

           EVALUATE OPERATION
               WHEN F-OPEN
                   PERFORM OPEN-FILE
               WHEN F-CLOSE
                   PERFORM CLOSE-FILE
               WHEN F-READ
                   PERFORM READ-FILE
               WHEN F-WRITE
                   PERFORM WRITE-FILE
               WHEN OTHER
                   DISPLAY "INVALID OPERATION"
                   PERFORM CLOSING
           END-EVALUATE
           EXIT.
       
       OPEN-FILE SECTION.
           
           EVALUATE OPEN-MODE
               WHEN READ-MODE
                   OPEN INPUT MY-FILE
               WHEN WRITE-MODE
                   OPEN OUTPUT MY-FILE
               WHEN APPEND-MODE
                   OPEN EXTEND MY-FILE
               WHEN UPDATE-MODE
                   OPEN I-O MY-FILE
               WHEN OTHER
                   DISPLAY "INVALID OPEN MODE"
                   PERFORM CLOSING
           END-EVALUATE

           EXIT.
       CLOSE-FILE SECTION.
           
           EXIT.
       READ-FILE SECTION.
           
           EXIT.
       WRITE-FILE SECTION.
           
           EXIT.
       INPUT-VALIDATION SECTION.

           EXIT.

       CLOSING SECTION.

           GOBACK.