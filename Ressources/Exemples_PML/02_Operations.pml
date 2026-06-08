-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 02 : OPÉRATIONS ARITHMÉTIQUES ET CHAÎNES
-- ═══════════════════════════════════════════════════════════════════════════
-- Démonstration des opérateurs mathématiques et de manipulation de texte

-- Opérations arithmétiques
addition = 15 + 7           -- Résultat : 22
soustraction = 30 - 12      -- Résultat : 18
multiplication = 6 * 8      -- Résultat : 48
division = 100 / 4          -- Résultat : 25
modulo = 23 MOD 5           -- Résultat : 3

-- Opérations chaînées
total = 5 + 3 * 2           -- Résultat : 11 (respect de l'ordre)
calcul_complexe = (10 + 5) * 2  -- Résultat : 30

-- Opérations sur les chaînes
salutation = "Bonjour" + " " + "tout" + " " + "le" + " " + "monde"
texte_majuscule = UPCASE("pml")    -- Résultat : "PML"
texte_minuscule = DOWNCASE("HELLO") -- Résultat : "hello"
longueur_texte = LENGTH("PML")     -- Résultat : 3

-- Opérations de comparaison
x = 10
y = 20

est_egal = x == 10          -- TRUE
est_different = x <> y      -- TRUE
plus_grand = y > x          -- TRUE
plus_petit = x < y          -- TRUE
gte = x >= 10               -- TRUE
lte = y <= 30               -- TRUE

-- Opérations logiques
ET = TRUE AND TRUE          -- TRUE
OU = FALSE OR TRUE          -- TRUE
NON = NOT FALSE             -- TRUE

-- Affichage des résultats
PRINT "══ OPÉRATIONS ARITHMÉTIQUES ══"
PRINT ("Addition : 15 + 7 = " + STR(addition))
PRINT ("Soustraction : 30 - 12 = " + STR(soustraction))
PRINT ("Multiplication : 6 * 8 = " + STR(multiplication))
PRINT ("Division : 100 / 4 = " + STR(division))
PRINT ("Modulo : 23 MOD 5 = " + STR(modulo))

PRINT ""
PRINT "══ OPÉRATIONS CHAÎNES ══"
PRINT ("Concaténation : " + salutation)
PRINT ("Majuscule : " + texte_majuscule)
PRINT ("Minuscule : " + texte_minuscule)
PRINT ("Longueur : " + STR(longueur_texte))

PRINT ""
PRINT "══ COMPARAISONS ══"
PRINT ("10 == 10 ? " + STR(est_egal))
PRINT ("10 <> 20 ? " + STR(est_different))
PRINT ("20 > 10 ? " + STR(plus_grand))
