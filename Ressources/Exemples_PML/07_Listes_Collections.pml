-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 07 : LISTES ET COLLECTIONS
-- ═══════════════════════════════════════════════════════════════════════════
-- Manipulation et itération sur des collections

-- Créer différents types de listes
nombres = (1 2 3 4 5 6 7 8 9 10)
noms = ("Alice" "Bob" "Charlie" "Diana")
temperatures = (18.5 22.3 19.8 25.1 21.0)
statuts = (TRUE FALSE TRUE TRUE FALSE)

-- Obtenir la longueur
PRINT "═══ TAILLE DES LISTES ═══"
PRINT ("Nombres : " + STR(LENGTH(nombres)) + " éléments")
PRINT ("Noms : " + STR(LENGTH(noms)) + " éléments")
PRINT ("Températures : " + STR(LENGTH(temperatures)) + " éléments")

-- Accéder aux éléments (notation index)
PRINT ""
PRINT "═══ ACCÈS AUX ÉLÉMENTS ═══"
premier_nombre = nombres(1)
premier_nom = noms(1)
PRINT ("Premier nombre : " + STR(premier_nombre))
PRINT ("Premier nom : " + premier_nom)

-- Itérer sur une liste
PRINT ""
PRINT "═══ ITÉRATION SIMPLE ═══"
LOOP nom IN noms DO
    PRINT ("- " + nom)
ENDLOOP

-- Compter les éléments
PRINT ""
PRINT "═══ COMPTAGE AVEC BOUCLE ═══"
compte = 0
LOOP nombre IN nombres DO
    compte = compte + 1
ENDLOOP
PRINT ("Total d'éléments : " + STR(compte))

-- Somme d'une liste
PRINT ""
PRINT "═══ SOMME D'UNE LISTE ═══"
somme = 0
LOOP nombre IN nombres DO
    somme = somme + nombre
ENDLOOP
PRINT ("Somme de 1 à 10 : " + STR(somme))

-- Moyenne d'une liste
PRINT ""
PRINT "═══ MOYENNE D'UNE LISTE ═══"
somme_temp = 0
LOOP temp IN temperatures DO
    somme_temp = somme_temp + temp
ENDLOOP
moyenne = somme_temp / LENGTH(temperatures)
PRINT ("Moyenne des températures : " + STR(moyenne))

-- Filtrer une liste
PRINT ""
PRINT "═══ FILTRAGE - NOMBRES PAIRS ═══"
pairs = ()
LOOP nombre IN nombres DO
    IF nombre MOD 2 == 0 THEN
        pairs = pairs + (nombre)
    ENDIF
ENDLOOP
PRINT ("Nombres pairs : ")
LOOP pair IN pairs DO
    PRINT ("- " + STR(pair))
ENDLOOP

-- Filtrer nombres impairs
PRINT ""
PRINT "═══ FILTRAGE - NOMBRES IMPAIRS ═══"
impairs = ()
LOOP nombre IN nombres DO
    IF nombre MOD 2 <> 0 THEN
        impairs = impairs + (nombre)
    ENDIF
ENDLOOP
PRINT ("Nombres impairs : " + STR(LENGTH(impairs)) + " éléments")

-- Trouver le maximum
PRINT ""
PRINT "═══ TROUVER LE MAXIMUM ═══"
max = temperatures(1)
LOOP temp IN temperatures DO
    IF temp > max THEN
        max = temp
    ENDIF
ENDLOOP
PRINT ("Température max : " + STR(max))

-- Trouver le minimum
PRINT ""
PRINT "═══ TROUVER LE MINIMUM ═══"
min = temperatures(1)
LOOP temp IN temperatures DO
    IF temp < min THEN
        min = temp
    ENDIF
ENDLOOP
PRINT ("Température min : " + STR(min))

-- Compter les éléments avec condition
PRINT ""
PRINT "═══ COMPTER AVEC CONDITION ═══"
compte_nombres_gt_5 = 0
LOOP nombre IN nombres DO
    IF nombre > 5 THEN
        compte_nombres_gt_5 = compte_nombres_gt_5 + 1
    ENDIF
ENDLOOP
PRINT ("Nombres > 5 : " + STR(compte_nombres_gt_5))

-- Listes imbriquées
PRINT ""
PRINT "═══ LISTES IMBRIQUÉES (MATRICE) ═══"
matrice = ((1 2 3) (4 5 6) (7 8 9))
PRINT ("Matrice 3x3 :")
LOOP ligne IN matrice DO
    PRINT STR(ligne)
ENDLOOP

-- Créer une nouvelle liste par concaténation
PRINT ""
PRINT "═══ CONCATÉNATION DE LISTES ═══"
liste1 = (1 2 3)
liste2 = (4 5 6)
liste3 = liste1 + liste2
PRINT ("Liste 1 : " + STR(liste1))
PRINT ("Liste 2 : " + STR(liste2))
PRINT ("Liste 3 (concaténée) : " + STR(liste3))
