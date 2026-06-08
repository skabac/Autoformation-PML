# 📖 Module 03 : Manipulation d'objets

## 🎯 Objectifs

À la fin de ce module, tu sauras :
- Comprendre les objets en PML
- Accéder aux propriétés d'un objet
- Appeler les méthodes d'un objet
- Manipuler les collections d'objets

---

## 1️⃣ Concepts fondamentaux des objets

### Qu'est-ce qu'un objet ?

Un objet en PML est une entité qui représente quelque chose de réel dans le modèle d'ingénierie AVEVA. Par exemple :
- Un équipement (pompe, compresseur)
- Un tuyau
- Un raccord
- Un instrument

### Propriétés et méthodes

```pml
-- Propriété : attribute statique d'un objet
objet.propriete

-- Méthode : action que l'objet peut effectuer
objet.methode()

-- Méthode avec paramètres
objet.methode(parametre1 parametre2)
```

---

## 2️⃣ Accéder aux propriétés

### Lecture de propriété

```pml
-- Accéder à la propriété d'un objet
nom_equipement = equipement.NAME
coordX = tuyau.X
coordY = tuyau.Y
coordZ = tuyau.Z

-- Stocker dans une variable
description = equipement.DESCRIPTION
```

### Modification de propriété

```pml
-- Modifier une propriété
equipement.NAME = "Nouvelle Pompe"
equipement.DESCRIPTION = "Pompe centrifuge"
tuyau.DIAMETER = 100  -- Diamètre en mm
```

### Propriétés courantes

```pml
-- Propriétés standards dans AVEVA Plant
nom = objet.NAME              -- Nom de l'objet
type = objet.TYPE             -- Type (EQUIP, PIPE, etc.)
description = objet.DESC      -- Description
coordX = objet.X              -- Position X
coordY = objet.Y              -- Position Y
coordZ = objet.Z              -- Position Z
diametre = objet.BORE         -- Diamètre pour tuyau
materiau = objet.MATL         -- Matériau
```

---

## 3️⃣ Appeler les méthodes

### Méthodes simples (sans paramètre)

```pml
-- Appeler une méthode sans paramètre
objet.HIGHLIGHT()     -- Mettre en surbrillance

objet.DELETE()        -- Supprimer l'objet

resultat = objet.EXISTS()  -- Vérifie si l'objet existe
```

### Méthodes avec paramètres

```pml
-- Appeler une méthode avec un paramètre
objet.SETPOS(100 200 300)  -- Définir la position

objet.SETSIZE(1000)        -- Définir la taille

-- Appeler une méthode qui retourne une valeur
distance = objet.DISTANCE(autre_objet)
```

### Méthodes courantes

```pml
-- Récupérer les enfants/associations
enfants = objet.CHILDREN()
parents = objet.PARENTS()

-- Obtenir des informations
existe = objet.EXISTS()
est_visible = objet.VISIBLE()

-- Géométrie
longueur = objet.LENGTH()
superficie = objet.AREA()
```

---

## 4️⃣ Travailler avec les collections

### Obtenir une liste d'objets

```pml
-- Récupérer tous les équipements
equipements = DOCUMENT().ITEMS()

-- Récupérer les enfants d'un objet
enfants = equipement.CHILDREN()
```

### Itérer sur une collection

```pml
-- Boucler sur les équipements
LOOP equip IN equipements DO
    nom = equip.NAME
    PRINT nom
ENDLOOP

-- Boucler avec index
LOOP i FROM 1 TO LENGTH(equipements) DO
    equip = equipements(i)
    PRINT equip.NAME
ENDLOOP
```

### Filtrer une collection

```pml
-- Créer une liste filtrée
equipements_pompes = ()

LOOP equip IN equipements DO
    IF equip.TYPE == "PUMP" THEN
        equipements_pompes = equipements_pompes + (equip)
    ENDIF
ENDLOOP

-- equipements_pompes contient maintenant toutes les pompes
```

---

## 5️⃣ Cas d'usage pratiques

### Exemple 1 : Renommer tous les équipements

```pml
FUNCTION renommerEquipements (prefix)
    equipements = DOCUMENT().ITEMS()
    compteur = 0
    
    LOOP equip IN equipements DO
        IF equip.TYPE == "EQUIP" THEN
            compteur = compteur + 1
            nouveau_nom = prefix + "-" + STR(compteur)
            equip.NAME = nouveau_nom
        ENDIF
    ENDLOOP
    
    RETURN compteur
ENDFUNCTION

-- Utilisation
nombre = renommerEquipements("EQ")  -- EQ-1, EQ-2, EQ-3, etc.
```

### Exemple 2 : Obtenir des statistiques

```pml
FUNCTION compterParType ()
    equipements = DOCUMENT().ITEMS()
    compte_pompes = 0
    compte_compresseurs = 0
    
    LOOP equip IN equipements DO
        type = equip.TYPE
        IF type == "PUMP" THEN
            compte_pompes = compte_pompes + 1
        ELSEIF type == "COMPRESSOR" THEN
            compte_compresseurs = compte_compresseurs + 1
        ENDIF
    ENDLOOP
    
    RETURN (compte_pompes compte_compresseurs)
ENDFUNCTION

-- Utilisation
stats = compterParType()  -- Retourne (pompes compresseurs)
```

### Exemple 3 : Vérifier les propriétés

```pml
FUNCTION verifierEquipements ()
    equipements = DOCUMENT().ITEMS()
    problemes = ()
    
    LOOP equip IN equipements DO
        -- Vérifier que le nom n'est pas vide
        IF equip.NAME == "" THEN
            problemes = problemes + ("Nom vide : " + equip.ID)
        ENDIF
        
        -- Vérifier que la description existe
        IF equip.DESC == "" THEN
            problemes = problemes + ("Description vide : " + equip.NAME)
        ENDIF
    ENDLOOP
    
    RETURN problemes
ENDFUNCTION

-- Utilisation
issues = verifierEquipements()
```

### Exemple 4 : Modifier les propriétés en masse

```pml
FUNCTION miseAjourMateriaux (ancien_materiau nouveau_materiau)
    equipements = DOCUMENT().ITEMS()
    modifies = 0
    
    LOOP equip IN equipements DO
        IF equip.MATL == ancien_materiau THEN
            equip.MATL = nouveau_materiau
            modifies = modifies + 1
        ENDIF
    ENDLOOP
    
    RETURN modifies
ENDFUNCTION

-- Utilisation
nombre = miseAjourMateriaux("CARBON STEEL" "STAINLESS STEEL")
```

---

## 📝 Exercices pratiques

### Exercice 1 : Accéder aux propriétés
Écris un programme qui :
- Récupère le nom d'un équipement
- Affiche ses coordonnées (X, Y, Z)

```pml
-- Écris ici
```

### Exercice 2 : Itérer sur les objets
Écris un programme qui :
- Boucle sur tous les équipements
- Affiche le nom de chacun

```pml
-- Écris ici
```

### Exercice 3 : Filtrer les objets
Écris une fonction qui :
- Retourne la liste de tous les tuyaux

```pml
-- Écris ici
```

### Exercice 4 : Modifier les propriétés
Écris une fonction qui :
- Change la description de tous les équipements
- Retourne le nombre d'équipements modifiés

```pml
-- Écris ici
```

### Exercice 5 : Statistiques
Écris une fonction qui :
- Compte le nombre d'équipements par type
- Retourne un résumé

```pml
-- Écris ici
```

---

## ✅ Résumé du module

| Concept | Exemple |
|---------|---------|
| **Lire propriété** | `objet.NAME` |
| **Modifier propriété** | `objet.NAME = "Nouveau"` |
| **Appeler méthode** | `objet.DELETE()` |
| **Récupérer collection** | `DOCUMENT().ITEMS()` |
| **Itérer** | `LOOP item IN liste DO ... ENDLOOP` |
| **Filtrer** | Condition dans la boucle |
| **Obtenir enfants** | `objet.CHILDREN()` |

---

**📍 Prochaine étape :** Module 04 - Projets pratiques
