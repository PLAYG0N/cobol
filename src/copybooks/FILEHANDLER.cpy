      * This copybook is an interface FOR interacting WITH the FILE
      * module  

       01 FILEHANDLER.
           05 PGM-NAME PIC X(11)   VALUE 'FILEHANDLER'.                      
           05 FILENAME PIC X(8).
           05 OPERATION PIC X(1).
               88 F-OPEN           VALUE 'O'.
               88 F-CLOSE          VALUE 'C'.
               88 F-READ           VALUE 'R'.
               88 F-WRITE          VALUE 'W'.
           05 OPEN-MODE PIC X(1).
               88 READ-MODE        VALUE 'R'.
               88 WRITE-MODE       VALUE 'W'.
               88 APPEND-MODE      VALUE 'A'.
               88 UPDATE-MODE      VALUE 'U'.
           
           05 FILE-RECORD PIC X(500).
