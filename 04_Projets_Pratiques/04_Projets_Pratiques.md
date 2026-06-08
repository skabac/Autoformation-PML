# 📖 Module 04 : Projets pratiques

## 🎯 Objectif

Appliquer les connaissances des modules précédents dans des cas d'usage réels en AVEVA Plant.

---

## 📋 Projet 1 : Audit d'équipements

**Objectif :** Vérifier la qualité des données pour tous les équipements du projet.

```pml
FUNCTION auditEquipements ()
    -- Récupérer tous les équipements
    equipements = DOCUMENT().ITEMS()
    
    -- Initialiser les compteurs
    total = 0
    avec_nom = 0
    avec_description = 0
    avec_position = 0
    problemes = ()
    
    -- Boucler sur chaque équipement
    LOOP equip IN equipements DO
        IF equip.TYPE == "EQUIP" THEN
            total = total + 1
            
            -- Vérifier le nom
            IF equip.NAME <> "" THEN
                avec_nom = avec_nom + 1
            ELSE
                problemes = problemes + ("Nom manquant pour ID " + equip.ID)
            ENDIF
            
            -- Vérifier la description
            IF equip.DESC <> "" THEN
                avec_description = avec_description + 1
            ELSE
                problemes = problemes + ("Description manquante pour " + equip.NAME)
            ENDIF
            
            -- Vérifier la position
            x = equip.X
            y = equip.Y
            z = equip.Z
            IF x <> 0 OR y <> 0 OR z <> 0 THEN
                avec_position = avec_position + 1
            ELSE
                problemes = problemes + ("Position manquante pour " + equip.NAME)
            ENDIF
        ENDIF
    ENDLOOP
    
    -- Afficher le rapport
    PRINT "=== AUDIT D'ÉQUIPEMENTS ==="
    PRINT ("Total d'équipements : " + STR(total))
    PRINT ("Avec nom : " + STR(avec_nom) + " (" + STR((avec_nom / total) * 100) + "%)")
    PRINT ("Avec description : " + STR(avec_description))
    PRINT ("Avec position : " + STR(avec_position))
    
    IF LENGTH(problemes) > 0 THEN
        PRINT ""
        PRINT "=== PROBLÈMES DÉTECTÉS ==="
        LOOP prob IN problemes DO
            PRINT prob
        ENDLOOP
    ENDIF
    
    RETURN (total avec_nom avec_description avec_position problemes)
ENDFUNCTION

-- Utilisation
auditEquipements()
```

---

## 📋 Projet 2 : Mise à jour en masse des matériaux

**Objectif :** Remplacer tous les tuyaux en acier carbone par de l'acier inoxydable.

```pml
FUNCTION remplacerMateriaux (ancien nouveau)
    equipements = DOCUMENT().ITEMS()
    modifies = ()
    non_modifies = ()
    
    LOOP equip IN equipements DO
        -- Vérifier si c'est un tuyau
        IF equip.TYPE == "PIPE" THEN
            -- Vérifier le matériau actuel
            IF equip.MATL == ancien THEN
                equip.MATL = nouveau
                modifies = modifies + (equip.NAME)
            ELSE
                non_modifies = non_modifies + (equip.NAME)
            ENDIF
        ENDIF
    ENDLOOP
    
    -- Rapport
    PRINT "=== MISE À JOUR MATÉRIAUX ==="
    PRINT ("Modification " + ancien + " -> " + nouveau)
    PRINT ""
    PRINT ("Modifiés : " + STR(LENGTH(modifies)))
    LOOP nom IN modifies DO
        PRINT ("  - " + nom)
    ENDLOOP
    
    PRINT ""
    PRINT ("Non modifiés : " + STR(LENGTH(non_modifies)))
    
    RETURN (modifies non_modifies)
ENDFUNCTION

-- Utilisation
remplacerMateriaux("CARBON STEEL" "STAINLESS STEEL")
```

---

## 📋 Projet 3 : Génération de liste d'équipements

**Objectif :** Créer un rapport détaillé de tous les équipements avec leurs propriétés.

```pml
FUNCTION genererListeEquipements ()
    equipements = DOCUMENT().ITEMS()
    rapport = ()
    
    -- En-tête du rapport
    entete = "NOM,TYPE,DESCRIPTION,X,Y,Z,MATÉRIAU"
    rapport = rapport + (entete)
    
    LOOP equip IN equipements DO
        IF equip.TYPE == "EQUIP" THEN
            -- Récupérer les propriétés
            nom = equip.NAME
            type = equip.TYPE
            desc = equip.DESC
            x = STR(equip.X)
            y = STR(equip.Y)
            z = STR(equip.Z)
            matl = equip.MATL
            
            -- Créer la ligne CSV
            ligne = nom + "," + type + "," + desc + "," + x + "," + y + "," + z + "," + matl
            rapport = rapport + (ligne)
        ENDIF
    ENDLOOP
    
    -- Afficher le rapport
    PRINT "=== LISTE D'ÉQUIPEMENTS ==="
    LOOP ligne IN rapport DO
        PRINT ligne
    ENDLOOP
    
    RETURN rapport
ENDFUNCTION

-- Utilisation
genererListeEquipements()
```

---

## 📋 Projet 4 : Validation de la numérotation

**Objectif :** Vérifier que tous les équipements ont une numérotation correcte.

```pml
FUNCTION validerNumerotation (prefix)
    equipements = DOCUMENT().ITEMS()
    esperee = 1
    problemes = ()
    
    LOOP equip IN equipements DO
        IF equip.TYPE == "EQUIP" THEN
            nom = equip.NAME
            
            -- Vérifier le format
            esperee_str = prefix + "-" + STR(esperee)
            
            IF nom <> esperee_str THEN
                problemes = problemes + ("Attendu : " + esperee_str + " | Réel : " + nom)
            ENDIF
            
            esperee = esperee + 1
        ENDIF
    ENDLOOP
    
    -- Rapport
    PRINT "=== VALIDATION NUMÉROTATION ==="
    PRINT ("Préfixe attendu : " + prefix)
    PRINT ""
    
    IF LENGTH(problemes) == 0 THEN
        PRINT "✅ Tous les équipements sont correctement numérotés !"
    ELSE
        PRINT "⚠️ Problèmes détectés :"
        LOOP prob IN problemes DO
            PRINT prob
        ENDLOOP
    ENDIF
    
    RETURN problemes
ENDFUNCTION

-- Utilisation
validerNumerotation("PUMP")
```

---

## 📋 Projet 5 : Statistiques du projet

**Objectif :** Générer un rapport statistique du projet complet.

```pml
FUNCTION statistiquesProjet ()
    equipements = DOCUMENT().ITEMS()
    
    -- Initialiser les compteurs
    stats = (
        ("Total équipements" 0)
        ("Pompes" 0)
        ("Compresseurs" 0)
        ("Tuyaux" 0)
        ("Raccords" 0)
        ("Instruments" 0)
    )
    
    -- Compter par type
    LOOP equip IN equipements DO
        type = equip.TYPE
        
        IF type == "PUMP" THEN
            stats = stats + (("Pompes" 1))
        ELSEIF type == "COMPRESSOR" THEN
            stats = stats + (("Compresseurs" 1))
        ELSEIF type == "PIPE" THEN
            stats = stats + (("Tuyaux" 1))
        ELSEIF type == "FITTING" THEN
            stats = stats + (("Raccords" 1))
        ELSEIF type == "INSTRUMENT" THEN
            stats = stats + (("Instruments" 1))
        ENDIF
        
        -- Incrémenter le total
        stats = stats + (("Total équipements" 1))
    ENDLOOP
    
    -- Afficher les statistiques
    PRINT "=== STATISTIQUES DU PROJET ==="
    PRINT ""
    LOOP stat IN stats DO
        nom = stat(1)
        nombre = stat(2)
        PRINT (nom + " : " + STR(nombre))
    ENDLOOP
    
    RETURN stats
ENDFUNCTION

-- Utilisation
statistiquesProjet()
```

---

## 🚀 Projets avancés (à explorer)

### Projet 6 : Extraction de données vers fichier
Exporter les données des équipements vers un fichier CSV.

### Projet 7 : Validation des connexions
Vérifier que tous les tuyaux sont correctement connectés aux équipements.

### Projet 8 : Génération automatique de nomenclature
Créer automatiquement des noms d'équipements basés sur des règles métier.

### Projet 9 : Analyse de la géométrie
Calculer les distances entre équipements ou la longueur totale des tuyaux.

### Projet 10 : Génération de rapports PDF
Créer des rapports formatés avec les données du projet.

---

## ✅ Conseils pour les projets

1. **Tester localement** : Teste d'abord sur une copie du projet
2. **Ajouter de la validation** : Vérifie toujours les entrées
3. **Documenter le code** : Ajoute des commentaires explicatifs
4. **Gérer les erreurs** : Prévois les cas d'erreur
5. **Optimiser la performance** : Évite les boucles imbriquées inutiles

---

**🎓 Félicitations ! Tu as terminé le cours fondamental de PML !**
