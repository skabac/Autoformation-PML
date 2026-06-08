# 📖 Module 02 : Structures de contrôle

## 🎯 Objectifs

À la fin de ce module, tu sauras :
- Utiliser les conditions (IF/THEN/ELSE)
- Créer des boucles (LOOP)
- Déclarer et appeler des fonctions
- Combiner les structures de contrôle

---

## 1️⃣ Conditions : IF/THEN/ELSE

### Syntaxe de base

```pml
IF condition THEN
    -- Actions si condition vraie
ENDIF
```

### Exemple simple

```pml
age = 18

IF age >= 18 THEN
    statut = "Adulte"
ENDIF
```

### Avec ELSE

```pml
age = 15

IF age >= 18 THEN
    statut = "Adulte"
ELSE
    statut = "Mineur"
ENDIF
```

### Conditions multiples : ELSEIF

```pml
note = 75

IF note >= 90 THEN
    resultat = "Excellent"
ELSEIF note >= 80 THEN
    resultat = "Bon"
ELSEIF note >= 70 THEN
    resultat = "Satisfaisant"
ELSE
    resultat = "Insuffisant"
ENDIF
```

### Opérateurs logiques

```pml
-- ET (AND)
IF age > 18 AND permis == TRUE THEN
    peux_conduire = TRUE
ENDIF

-- OU (OR)
IF jour == "samedi" OR jour == "dimanche" THEN
    weekend = TRUE
ENDIF

-- NON (NOT)
IF NOT connecte THEN
    afficher_login_page = TRUE
ENDIF
```

---

## 2️⃣ Boucles : LOOP

### Boucle simple (FOR)

```pml
-- Boucle de 1 à 5
LOOP compteur FROM 1 TO 5 DO
    -- Afficher le compteur à chaque itération
    PRINT compteur
ENDLOOP
```

### Boucle avec incrément personnalisé

```pml
-- Boucle de 0 à 10 avec pas de 2
LOOP i FROM 0 TO 10 BY 2 DO
    PRINT i  -- Affiche : 0, 2, 4, 6, 8, 10
ENDLOOP
```

### Boucle décroissante

```pml
-- Compter de 5 à 1
LOOP i FROM 5 TO 1 BY -1 DO
    PRINT i  -- Affiche : 5, 4, 3, 2, 1
ENDLOOP
```

### Boucle sur une liste

```pml
fruits = ("pomme" "banane" "cerise")

LOOP fruit IN fruits DO
    PRINT fruit  -- Affiche chaque fruit
ENDLOOP
```

### BREAK et CONTINUE

```pml
-- Arrêter une boucle avec BREAK
LOOP i FROM 1 TO 10 DO
    IF i == 5 THEN
        BREAK  -- Arrête la boucle
    ENDIF
    PRINT i
ENDLOOP

-- Sauter une itération avec CONTINUE
LOOP i FROM 1 TO 5 DO
    IF i == 3 THEN
        CONTINUE  -- Saute à l'itération suivante
    ENDIF
    PRINT i  -- Affiche : 1, 2, 4, 5
ENDLOOP
```

---

## 3️⃣ Fonctions

### Déclarer une fonction

```pml
-- Fonction sans paramètre
FUNCTION bonjour
    RETURN "Bonjour !"
ENDFUNCTION

-- Appeler la fonction
message = bonjour()  -- "Bonjour !"
```

### Fonction avec paramètres

```pml
-- Fonction qui additionne deux nombres
FUNCTION ajouter (a b)
    resultat = a + b
    RETURN resultat
ENDFUNCTION

-- Appeler la fonction
somme = ajouter(5 3)  -- 8
```

### Fonction avec plusieurs paramètres

```pml
-- Fonction pour calculer la surface d'un rectangle
FUNCTION calculerSurface (longueur largeur)
    surface = longueur * largeur
    RETURN surface
ENDFUNCTION

-- Utilisation
surface = calculerSurface(10 5)  -- 50
```

### Fonction sans retour

```pml
FUNCTION afficherMessage (texte)
    PRINT texte
ENDFUNCTION

-- Utilisation (pas de retour)
afficherMessage("Ceci est un message")
```

### Fonction avec logique complexe

```pml
-- Fonction pour déterminer le grade
FUNCTION determinerGrade (note)
    IF note >= 90 THEN
        RETURN "A"
    ELSEIF note >= 80 THEN
        RETURN "B"
    ELSEIF note >= 70 THEN
        RETURN "C"
    ELSE
        RETURN "F"
    ENDIF
ENDFUNCTION

-- Utilisation
grade = determinerGrade(85)  -- "B"
```

---

## 4️⃣ Combinaisons et cas d'usage

### Boucle avec condition

```pml
-- Afficher les nombres pairs de 1 à 10
LOOP i FROM 1 TO 10 DO
    IF i MOD 2 == 0 THEN
        PRINT i  -- Affiche : 2, 4, 6, 8, 10
    ENDIF
ENDLOOP
```

### Fonction avec boucle

```pml
-- Calculer la somme des nombres de 1 à n
FUNCTION sommeJusqua (n)
    somme = 0
    LOOP i FROM 1 TO n DO
        somme = somme + i
    ENDLOOP
    RETURN somme
ENDFUNCTION

total = sommeJusqua(5)  -- 1+2+3+4+5 = 15
```

### Fonction avec boucle et condition

```pml
-- Compter les nombres pairs dans une liste
FUNCTION compterPairs (liste)
    compte = 0
    LOOP nombre IN liste DO
        IF nombre MOD 2 == 0 THEN
            compte = compte + 1
        ENDIF
    ENDLOOP
    RETURN compte
ENDFUNCTION

nombres = (1 2 3 4 5 6 7 8)
pairs = compterPairs(nombres)  -- 4
```

---

## 📝 Exercices pratiques

### Exercice 1 : Condition simple
Écris un programme qui :
- Demande l'âge
- Affiche "Adulte" si >= 18, sinon "Mineur"

```pml
-- Écris ici
```

### Exercice 2 : Boucle
Affiche tous les nombres de 1 à 10

```pml
-- Écris ici
```

### Exercice 3 : Fonction
Crée une fonction qui calcule le carré d'un nombre

```pml
-- Écris ici
```

### Exercice 4 : Boucle + Condition
Affiche les nombres impairs de 1 à 20

```pml
-- Écris ici
```

### Exercice 5 : Fonction complexe
Crée une fonction qui retourne le plus grand nombre d'une liste

```pml
-- Écris ici
```

---

## ✅ Résumé du module

| Concept | Syntaxe |
|---------|----------|
| **Condition** | `IF condition THEN ... ENDIF` |
| **Sinon si** | `ELSEIF condition THEN ...` |
| **Sinon** | `ELSE ...` |
| **ET logique** | `AND` |
| **OU logique** | `OR` |
| **NON logique** | `NOT` |
| **Boucle FOR** | `LOOP var FROM start TO end DO ... ENDLOOP` |
| **Boucle FOR IN** | `LOOP var IN liste DO ... ENDLOOP` |
| **Arrêter boucle** | `BREAK` |
| **Sauter itération** | `CONTINUE` |
| **Fonction** | `FUNCTION nom (params) ... RETURN ... ENDFUNCTION` |

---

**📍 Prochaine étape :** Module 03 - Manipulation d'objets