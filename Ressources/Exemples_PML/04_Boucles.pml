-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 04 : BOUCLES LOOP
-- ═══════════════════════════════════════════════════════════════════════════
-- Démonstration des différents types de boucles

-- Boucle simple (1 à 5)
PRINT "══ Boucle 1 à 5 ══"
LOOP i FROM 1 TO 5 DO
    PRINT ("Itération " + STR(i))
ENDLOOP

-- Boucle avec pas (0 à 10 par pas de 2)
PRINT ""
PRINT "══ Nombres pairs de 0 à 10 ══"
LOOP i FROM 0 TO 10 BY 2 DO
    PRINT STR(i)
ENDLOOP

-- Boucle décroissante
PRINT ""
PRINT "══ Compte à rebours (10 à 1) ══"
LOOP i FROM 10 TO 1 BY -1 DO
    PRINT STR(i)
ENDLOOP

-- Boucle sur une liste
fruits = ("pomme" "banane" "cerise" "datte" "fraise")
PRINT ""
PRINT "══ Fruits disponibles ══"
LOOP fruit IN fruits DO
    PRINT ("- " + fruit)
ENDLOOP

-- Boucle sur une liste de nombres
scores = (85 92 78 95 88)
PRINT ""
PRINT "══ Scores de l'examen ══"
total_score = 0
LOOP score IN scores DO
    PRINT ("Score : " + STR(score))
    total_score = total_score + score
ENDLOOP
PRINT ("Score total : " + STR(total_score))
PRINT ("Moyenne : " + STR(total_score / LENGTH(scores)))

-- Boucle avec condition (BREAK)
PRINT ""
PRINT "══ Boucle avec arrêt (BREAK) ══"
LOOP i FROM 1 TO 10 DO
    IF i == 5 THEN
        PRINT "Arrêt à 5 !"
        BREAK
    ENDIF
    PRINT STR(i)
ENDLOOP

-- Boucle avec saut (CONTINUE)
PRINT ""
PRINT "══ Nombres impairs de 1 à 10 ══"
LOOP i FROM 1 TO 10 DO
    IF i MOD 2 == 0 THEN
        CONTINUE  -- Saute les nombres pairs
    ENDIF
    PRINT STR(i)
ENDLOOP

-- Boucle imbriquée
PRINT ""
PRINT "══ Table de multiplication ══"
LOOP x FROM 1 TO 3 DO
    LOOP y FROM 1 TO 3 DO
        resultat = x * y
        PRINT (STR(x) + " x " + STR(y) + " = " + STR(resultat))
    ENDLOOP
ENDLOOP

-- Boucle pour calculer la somme
PRINT ""
PRINT "══ Somme de 1 à 100 ══"
somme = 0
LOOP i FROM 1 TO 100 DO
    somme = somme + i
ENDLOOP
PRINT ("Somme : " + STR(somme))
