-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 03 : CONDITIONS IF/THEN/ELSE
-- ═══════════════════════════════════════════════════════════════════════════
-- Démonstration des structures conditionnelles

-- Condition simple
age = 25

IF age >= 18 THEN
    statut = "Adulte"
ELSE
    statut = "Mineur"
ENDIF

PRINT "Statut : " + statut

-- Condition multiple avec ELSEIF
note = 78

IF note >= 90 THEN
    grade = "A - Excellent"
ELSEIF note >= 80 THEN
    grade = "B - Bon"
ELSEIF note >= 70 THEN
    grade = "C - Satisfaisant"
ELSEIF note >= 60 THEN
    grade = "D - Passable"
ELSE
    grade = "F - Insuffisant"
ENDIF

PRINT "Grade : " + grade

-- Condition avec opérateurs logiques (AND)
permis = TRUE
age_conducteur = 25

IF age_conducteur >= 18 AND permis == TRUE THEN
    peux_conduire = "OUI"
ELSE
    peux_conduire = "NON"
ENDIF

PRINT "Peut conduire ? " + peux_conduire

-- Condition avec opérateur logique (OR)
jour = "samedi"

IF jour == "samedi" OR jour == "dimanche" THEN
    type_jour = "Week-end"
ELSE
    type_jour = "Jour de semaine"
ENDIF

PRINT "Type de jour : " + type_jour

-- Condition avec opérateur logique (NOT)
connecte = FALSE

IF NOT connecte THEN
    action = "Afficher la page de connexion"
ELSE
    action = "Afficher le tableau de bord"
ENDIF

PRINT "Action : " + action

-- Condition imbriquée
temperature = 25

IF temperature > 30 THEN
    avis = "Très chaud"
    action_climat = "Activez la climatisation"
ELSEIF temperature > 20 THEN
    avis = "Agréable"
    action_climat = "Pas d'action nécessaire"
ELSE
    avis = "Froid"
    action_climat = "Activez le chauffage"
ENDIF

PRINT ""
PRINT "Température : " + STR(temperature) + "°C"
PRINT "Avis : " + avis
PRINT "Action : " + action_climat
