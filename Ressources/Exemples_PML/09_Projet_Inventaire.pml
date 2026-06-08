-- ═══════════════════════════════════════════════════════════════════════════
-- EXEMPLE 09 : PROJET COMPLET - GESTION D'INVENTAIRE
-- ═══════════════════════════════════════════════════════════════════════════
-- Simulation de gestion de stock pour un entrepôt

-- Données d'inventaire
produits = ("Pompe" "Valve" "Tuyau" "Raccord" "Joint")
quantites = (15 8 100 50 200)
prix_unitaires = (150.00 75.50 5.00 12.00 2.50)

-- Fonction pour calculer la valeur du stock
FUNCTION calculer_valeur_stock (quantite prix)
    valeur = quantite * prix
    RETURN valeur
ENDFUNCTION

-- Afficher l'inventaire
PRINT "╔════════════════════════════════════════════════════════════════╗"
PRINT "║                    INVENTAIRE DE L'ENTREPÔT                   ║"
PRINT "╚════════════════════════════════════════════════════════════════╝"
PRINT ""

valeur_totale = 0

LOOP i FROM 1 TO LENGTH(produits) DO
    produit = produits(i)
    quantite = quantites(i)
    prix = prix_unitaires(i)
    valeur = calculer_valeur_stock(quantite prix)
    
    PRINT ("Produit : " + produit)
    PRINT ("  Quantité : " + STR(quantite))
    PRINT ("  Prix unitaire : " + STR(prix))
    PRINT ("  Valeur totale : " + STR(valeur))
    
    -- Vérifier le niveau de stock
    IF quantite < 20 THEN
        PRINT ("  ⚠️  Stock faible - À réapprovisionner")
    ELSEIF quantite < 50 THEN
        PRINT ("  ⏳ Stock moyen")
    ELSE
        PRINT ("  ✅ Stock bon")
    ENDIF
    
    PRINT ""
    valeur_totale = valeur_totale + valeur
ENDLOOP

-- Résumé
PRINT "╔════════════════════════════════════════════════════════════════╗"
PRINT ("Valeur totale du stock : " + STR(valeur_totale))
PRINT ("Nombre de produits différents : " + STR(LENGTH(produits)))

-- Compter produits en stock faible
produits_faibles = 0
LOOP quantite IN quantites DO
    IF quantite < 20 THEN
        produits_faibles = produits_faibles + 1
    ENDIF
ENDLOOP

PRINT ("Produits avec stock faible : " + STR(produits_faibles))
PRINT "╚════════════════════════════════════════════════════════════════╝"
