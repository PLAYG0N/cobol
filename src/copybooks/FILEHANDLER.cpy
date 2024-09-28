      * This copybook is an interface FOR interacting WITH the FILE
      * module  

       01 FILEHANDLER.
           05 PGM-NAME PIC X(11) VALUE 'FILEHANDLER'.                      
           05 FILENAME PIC X(8).
           05 OPEN-MODE PIC X(2).
               88 READ-MODE VALUE 'R'.
               88 WRITE-MODE VALUE 'W'.
               88 APPEND-MODE VALUE 'A'.
           05 FILE-RECORD PIC X(500).
