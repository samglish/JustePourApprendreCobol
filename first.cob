       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATRICE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOMBRE1     PIC 9(5).
       01 NOMBRE2     PIC 9(5).
       01 RESULTAT    PIC 9(6).
       01 OPERATION   PIC X.

       PROCEDURE DIVISION.
           DISPLAY "Entrez le premier nombre : "
           ACCEPT NOMBRE1
           DISPLAY "Entrez le deuxième nombre : "
           ACCEPT NOMBRE2
           DISPLAY "Addition (+) ou Soustraction (-) ?"
           ACCEPT OPERATION

           IF OPERATION = "+"
               ADD NOMBRE1 TO NOMBRE2 GIVING RESULTAT
           ELSE
               SUBTRACT NOMBRE2 FROM NOMBRE1 GIVING RESULTAT
           END-IF

           DISPLAY "Le résultat est : " RESULTAT
           STOP RUN.
