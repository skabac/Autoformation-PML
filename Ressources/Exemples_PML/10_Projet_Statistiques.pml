-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 10 : PROJET COMPLET - ANALYSE STATISTIQUE
-- ═══════════════════════════════════════════════════════════════════════════
-- Script pour calculer des statistiques sur des données

-- Données de ventes mensuelles (en milliers)
ventes = (50 65 45 80 72 88 95 78 82 90 85 92)

-- Fonction pour trouver le maximum
FUNCTION trouver_maximum (liste)
    max_val = liste(1)
    LOOP val IN liste DO
        IF val > max_val THEN
            max_val = val
        ENDIF
    ENDLOOP
    RETURN max_val
ENDFUNCTION

-- Fonction pour trouver le minimum
FUNCTION trouver_minimum (liste)
    min_val = liste(1)
    LOOP val IN liste DO
        IF val < min_val THEN
            min_val = val
        ENDIF
    ENDLOOP
    RETURN min_val
ENDFUNCTION

-- Fonction pour calculer la moyenne
FUNCTION calculer_moyenne_liste (liste)
    somme = 0
    LOOP val IN liste DO
        somme = somme + val
    ENDLOOP
    moyenne = somme / LENGTH(liste)
    RETURN moyenne
ENDFUNCTION

-- Afficher le rapport d'analyse
PRINT "╔════════════════════════════════════════════════════════════════╗"
PRINT "║                  ANALYSE DES VENTES ANNUELLES                 ║"
PRINT "╚════════════════════════════════════════════════════════════════╝"
PRINT ""

-- Calculs
total = 0
LOOP vente IN ventes DO
    total = total + vente
ENDLOOP

moyenne = calculer_moyenne_liste(ventes)
maximum = trouver_maximum(ventes)
minimum = trouver_minimum(ventes)

-- Affichage
PRINT "Ventes par mois (en milliers) :"
LOOP i FROM 1 TO LENGTH(ventes) DO
    vente = ventes(i)
    mois = i
    PRINT ("  Mois " + STR(mois) + " : " + STR(vente))
ENDLOOP

PRINT ""
PRINT "═══ STATISTIQUES ═══"
PRINT ("Vente totale annuelle : " + STR(total))
PRINT ("Vente moyenne par mois : " + STR(moyenne))
PRINT ("Vente maximale : " + STR(maximum))
PRINT ("Vente minimale : " + STR(minimum))
PRINT ("Nombre de mois : " + STR(LENGTH(ventes)))

-- Analyser les performances
PRINT ""
PRINT "═══ ANALYSE DES PERFORMANCES ═══"
mois_forts = 0
mois_faibles = 0

LOOP vente IN ventes DO
    IF vente > moyenne THEN
        mois_forts = mois_forts + 1
    ELSEIF vente < moyenne THEN
        mois_faibles = mois_faibles + 1
    ENDIF
ENDLOOP

PRINT ("Mois supérieurs à la moyenne : " + STR(mois_forts))
PRINT ("Mois inférieurs à la moyenne : " + STR(mois_faibles))

-- Tendance
premiere_moitie = (ventes(1) + ventes(2) + ventes(3) + ventes(4) + ventes(5) + ventes(6)) / 6
deuxieme_moitie = (ventes(7) + ventes(8) + ventes(9) + ventes(10) + ventes(11) + ventes(12)) / 6

PRINT ""
PRINT "═══ TENDANCES ═══"
PRINT ("Moyenne H1 : " + STR(premiere_moitie))
PRINT ("Moyenne H2 : " + STR(deuxieme_moitie))

IF deuxieme_moitie > premiere_moitie THEN
    PRINT "Tendance : ⬆️ Croissance"
ELSE
    PRINT "Tendance : ⬇️ Baisse"
ENDIF
