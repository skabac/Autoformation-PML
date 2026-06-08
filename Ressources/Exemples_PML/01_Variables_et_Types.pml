-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 01 : VARIABLES ET TYPES DE DONNÉES
-- ═══════════════════════════════════════════════════════════════════════════
-- Ce script démontre les différents types de variables en PML

-- Types numériques
age = 30
hauteur = 1.75
temperature = -5.2

-- Chaînes de caractères
nom = "Jean Dupont"
description = "Ingénieur en génie civil"
adresse = "123 Rue de la Paix, Paris"

-- Booléens
actif = TRUE
approuve = FALSE
validation = TRUE

-- Listes
nombres = (1 2 3 4 5 6 7 8 9 10)
fruits = ("pomme" "banane" "cerise" "orange")
donnees_mixtes = (1 "deux" 3.0 TRUE)

-- Listes imbriquées (matrices)
matrice_2x3 = ((1 2 3) (4 5 6))
coordonnees = ((0 0 0) (10 20 30) (5 15 25))

-- Assignation de variables
compteur = 0
resultat = 0
message = "Prêt à commencer"

-- Affichage des variables
PRINT "══ VARIABLES CRÉÉES ══"
PRINT ("Nom : " + nom)
PRINT ("Âge : " + STR(age))
PRINT ("Actif : " + STR(actif))
PRINT ("Nombres : " + STR(LENGTH(nombres)) + " éléments")
PRINT ""
