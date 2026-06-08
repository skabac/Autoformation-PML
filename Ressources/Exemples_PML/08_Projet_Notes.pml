-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 08 : PROJET COMPLET - GESTIONNAIRE DE NOTES
-- ═══════════════════════════════════════════════════════════════════════════
-- Ce script combine tous les concepts pour un cas d'usage réel

-- Données des étudiants et leurs notes
etudiants = ("Alice" "Bob" "Charlie" "Diana" "Eva")
notes_math = (85 92 78 88 95)
notes_francais = (80 85 90 82 88)
notes_anglais = (90 88 85 92 87)

-- Fonction pour calculer la moyenne d'un étudiant
FUNCTION calculer_moyenne (note1 note2 note3)
    total = note1 + note2 + note3
    moyenne = total / 3
    RETURN moyenne
ENDFUNCTION

-- Fonction pour déterminer le grade
FUNCTION determiner_grade (moyenne)
    IF moyenne >= 90 THEN
        RETURN "A"
    ELSEIF moyenne >= 80 THEN
        RETURN "B"
    ELSEIF moyenne >= 70 THEN
        RETURN "C"
    ELSEIF moyenne >= 60 THEN
        RETURN "D"
    ELSE
        RETURN "F"
    ENDIF
ENDFUNCTION

-- Afficher le rapport des notes
PRINT "╔════════════════════════════════════════════════════════════════╗"
PRINT "║            RAPPORT DES NOTES DE L'ÉTABLISSEMENT               ║"
PRINT "╚════════════════════════════════════════════════════════════════╝"
PRINT ""

total_general = 0
compteur = 0

LOOP i FROM 1 TO LENGTH(etudiants) DO
    etudiant = etudiants(i)
    math = notes_math(i)
    francais = notes_francais(i)
    anglais = notes_anglais(i)
    
    moyenne = calculer_moyenne(math francais anglais)
    grade = determiner_grade(moyenne)
    
    PRINT ("Étudiant : " + etudiant)
    PRINT ("  Mathématiques : " + STR(math))
    PRINT ("  Français : " + STR(francais))
    PRINT ("  Anglais : " + STR(anglais))
    PRINT ("  Moyenne : " + STR(moyenne))
    PRINT ("  Grade : " + grade)
    PRINT ""
    
    total_general = total_general + moyenne
    compteur = compteur + 1
ENDLOOP

-- Calculer la moyenne générale
moyenne_generale = total_general / compteur

PRINT "╔════════════════════════════════════════════════════════════════╗"
PRINT ("Moyenne générale de la classe : " + STR(moyenne_generale))
PRINT "╚════════════════════════════════════════════════════════════════╝"

-- Déterminer le meilleur étudiant
PRINT ""
PRINT "═══ ANALYSE ═══"
meilleure_moyenne = 0
meilleur_etudiant = ""

LOOP i FROM 1 TO LENGTH(etudiants) DO
    moyenne = calculer_moyenne(notes_math(i) notes_francais(i) notes_anglais(i))
    IF moyenne > meilleure_moyenne THEN
        meilleure_moyenne = moyenne
        meilleur_etudiant = etudiants(i)
    ENDIF
ENDLOOP

PRINT ("Meilleur étudiant : " + meilleur_etudiant + " (moyenne : " + STR(meilleure_moyenne) + ")")
