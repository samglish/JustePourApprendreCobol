# JustePourApprendreCobol
COBOL est resté fidèle à sa forme des années 60-80, ce qui le rend très différent des langages récents.

## I. Pourquoi COBOL paraît compliqué :

1. Syntaxe très verbeuse 
On écrit presque des phrases en anglais : `ADD NOMBRE1 TO NOMBRE2 GIVING RESULTAT` au lieu de `resultat = nombre1 + nombre2.`

2. Division stricte du code

Il faut respecter des sections précises : `IDENTIFICATION DIVISION`, `DATA DIVISION`, `PROCEDURE DIVISION`…

3. Peu d’évolution du langage

COBOL est resté fidèle à sa forme des années 60-80, ce qui le rend très différent des langages récents.

4. Outils et environnements parfois obsolètes

Beaucoup de projets COBOL tournent encore sur des mainframes, ce qui peut dérouter.

## II. Mais COBOL a aussi des avantages :
* Fiabilité extrême – utilisé dans les banques et assurances depuis plus de 60 ans.
* Traitement massif de données structurées (fichiers plats, registres, etc.).
* Très demandé dans la maintenance de systèmes anciens.

  Exemple : Demander deux nombres à l'utilisateur, puis effectuer une addition ou une soustraction.
  
  ```cobol
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
```
 Pour exécuter avec GnuCOBOL :

```sh
cobc -x calculatrice.cob
./calculatrice
```
