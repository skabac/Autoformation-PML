-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 06 : OBJETS - PROPRIÉTÉS ET MÉTHODES
-- ═══════════════════════════════════════════════════════════════════════════
-- Démonstration de la manipulation d'objets (concept AVEVA Plant)

-- REMARQUE : Ce script montre la syntaxe PML pour les objets.
-- Dans AVEVA Plant, ces objets seraient réels (équipements, tuyaux, etc.)

-- Lecture de propriétés (simulation)
-- En vrai contexte AVEVA, ce serait des objets du modèle 3D
-- objet.NAME, objet.TYPE, objet.DESC, etc.

FUNCTION exemple_proprietes ()
    -- Les propriétés typiques des objets AVEVA :
    -- .NAME - Nom de l'objet
    -- .TYPE - Type (EQUIP, PIPE, FITTING, INSTRUMENT)
    -- .DESC - Description
    -- .X, .Y, .Z - Coordonnées 3D
    -- .BORE - Diamètre (pour tuyaux)
    -- .MATL - Matériau
    -- .STATUS - État
    
    PRINT "═══ PROPRIÉTÉS TYPIQUES DES OBJETS AVEVA ═══"
    PRINT "• NAME : Nom unique de l'objet"
    PRINT "• TYPE : Type de composant"
    PRINT "• DESC : Description textuelle"
    PRINT "• X, Y, Z : Position dans l'espace 3D"
    PRINT "• BORE : Diamètre nominal (tuyaux)"
    PRINT "• MATL : Matériau de construction"
    PRINT "• STATUS : État (ACTIVE, DELETED, etc.)"
ENDFUNCTION

FUNCTION exemple_methodes ()
    -- Les méthodes typiques des objets AVEVA :
    -- .HIGHLIGHT() - Mettre en surbrillance
    -- .DELETE() - Supprimer l'objet
    -- .EXISTS() - Vérifier l'existence
    -- .VISIBLE() - Vérifier la visibilité
    -- .LENGTH() - Obtenir la longueur
    -- .DISTANCE(objet) - Calculer distance avec autre objet
    -- .CHILDREN() - Récupérer les enfants
    -- .PARENTS() - Récupérer les parents
    
    PRINT ""
    PRINT "═══ MÉTHODES TYPIQUES DES OBJETS AVEVA ═══"
    PRINT "• HIGHLIGHT() : Mettre en surbrillance"
    PRINT "• DELETE() : Supprimer l'objet"
    PRINT "• EXISTS() : Vérifier si existe"
    PRINT "• VISIBLE() : Vérifier visibilité"
    PRINT "• LENGTH() : Obtenir la longueur"
    PRINT "• DISTANCE(obj) : Distance avec autre objet"
    PRINT "• CHILDREN() : Récupérer les enfants"
    PRINT "• PARENTS() : Récupérer les parents"
ENDFUNCTION

-- Appeler les démonstrations
exemple_proprietes()
exemple_methodes()

-- Simulation de manipulation d'objets
PRINT ""
PRINT "═══ EXEMPLE : Manipulation d'objets simulée ═══"

-- Simuler des objets avec des propriétés
equip_nom = "PUMP-001"
equip_type = "PUMP"
equip_desc = "Pompe centrifuge horizontale"
equip_x = 100
equip_y = 200
equip_z = 50
equip_matl = "CARBON STEEL"

PRINT ("Nom : " + equip_nom)
PRINT ("Type : " + equip_type)
PRINT ("Description : " + equip_desc)
PRINT ("Position : (" + STR(equip_x) + ", " + STR(equip_y) + ", " + STR(equip_z) + ")")
PRINT ("Matériau : " + equip_matl)

-- Modification de propriétés
equip_desc = "Pompe centrifuge horizontale - Mise à jour"
equip_matl = "STAINLESS STEEL"

PRINT ""
PRINT "Après modification :"
PRINT ("Description : " + equip_desc)
PRINT ("Matériau : " + equip_matl)

-- Fonction pour afficher les propriétés d'un objet (simulation)
FUNCTION afficher_objet (nom type desc x y z matl)
    PRINT ""
    PRINT ("═════════════════════════════════════════")
    PRINT ("Objet : " + nom)
    PRINT ("Type : " + type)
    PRINT ("Description : " + desc)
    PRINT ("Position (X, Y, Z) : (" + STR(x) + ", " + STR(y) + ", " + STR(z) + ")")
    PRINT ("Matériau : " + matl)
    PRINT ("═════════════════════════════════════════")
ENDFUNCTION

afficher_objet("PIPE-001" "PIPE" "Tuyau principal" 0 0 0 "CARBON STEEL")
afficher_objet("VALVE-001" "VALVE" "Vanne d'isolement" 150 200 75 "BRONZE")
