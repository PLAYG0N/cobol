       
       01 FILENAME-FILE-STATUS.
           05 FILENAME-OPEN-STATUS PIC X(1).
               88 FILENAME-OPENED VALUE "O".
               88 FILENAME-CLOSED VALUE "C".
           05 FILENAME-READ-STATUS PIC X(3).
               88 FILENAME-EOF VALUE "EOF".
           