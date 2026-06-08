-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 05 : FONCTIONS
-- ═══════════════════════════════════════════════════════════════════════════
-- Démonstration de la déclaration et utilisation de fonctions

-- Fonction simple (pas de paramètre)
FUNCTION saluer
    RETURN "Bonjour à tous !"
ENDFUNCTION

message = saluer()
PRINT "Fonction simple : " + message

-- Fonction avec un paramètre
FUNCTION doubler (nombre)
    resultat = nombre * 2
    RETURN resultat
ENDFUNCTION

valeur = 21
double = doubler(valeur)
PRINT ""
PRINT ("Doubler " + STR(valeur) + " = " + STR(double))

-- Fonction avec plusieurs paramètres
FUNCTION calculer_surface (longueur largeur)
    surface = longueur * largeur
    RETURN surface
ENDFUNCTION

l = 10
h = 5
s = calculer_surface(l h)
PRINT ("Surface d'un rectangle " + STR(l) + "x" + STR(h) + " = " + STR(s))

-- Fonction avec logique interne (IF/ELSE)
FUNCTION determiner_categorie (age_input)
    IF age_input < 13 THEN
        RETURN "Enfant"
    ELSEIF age_input < 18 THEN
        RETURN "Adolescent"
    ELSEIF age_input < 65 THEN
        RETURN "Adulte"
    ELSE
        RETURN "Senior"
    ENDIF
ENDFUNCTION

PRINT ""
PRINT ("Catégorie (10 ans) : " + determiner_categorie(10))
PRINT ("Catégorie (15 ans) : " + determiner_categorie(15))
PRINT ("Catégorie (35 ans) : " + determiner_categorie(35))
PRINT ("Catégorie (70 ans) : " + determiner_categorie(70))

-- Fonction avec boucle (calcul de factorielle)
FUNCTION factorielle (n)
    IF n <= 1 THEN
        RETURN 1
    ENDIF
    
    resultat = 1
    LOOP i FROM 2 TO n DO
        resultat = resultat * i
    ENDLOOP
    RETURN resultat
ENDFUNCTION

PRINT ""
PRINT ("Factorielle de 5 : " + STR(factorielle(5)))
PRINT ("Factorielle de 6 : " + STR(factorielle(6)))

-- Fonction pour vérifier si un nombre est pair
FUNCTION est_pair (nombre)
    IF nombre MOD 2 == 0 THEN
        RETURN TRUE
    ELSE
        RETURN FALSE
    ENDIF
ENDFUNCTION

PRINT ""
PRINT ("Est 10 pair ? " + STR(est_pair(10)))
PRINT ("Est 7 pair ? " + STR(est_pair(7)))

-- Fonction pour la somme des éléments d'une liste
FUNCTION somme_liste (liste)
    total = 0
    LOOP element IN liste DO
        total = total + element
    ENDLOOP
    RETURN total
ENDFUNCTION

nombres = (2 4 6 8 10)
PRINT ""
PRINT ("Somme de la liste : " + STR(somme_liste(nombres)))

-- Fonction pour trouver le maximum
FUNCTION trouver_max (liste)
    max = liste(1)
    LOOP element IN liste DO
        IF element > max THEN
            max = element
        ENDIF
    ENDLOOP
    RETURN max
ENDFUNCTION

valeurs = (5 12 3 19 7 15)
PRINT ("Maximum : " + STR(trouver_max(valeurs)))

-- Fonction avec message (sans retour)
FUNCTION afficher_info (titre contenu)
    PRINT ""
    PRINT ("═══ " + titre + " ═══")
    PRINT contenu
ENDFUNCTION

afficher_info("INFO" "Ceci est un message informatif")
afficher_info("ATTENTION" "Soyez prudent avec ce script")
