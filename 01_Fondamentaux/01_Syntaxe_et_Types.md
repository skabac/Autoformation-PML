# 📖 Module 01 : Fondamentaux du PML

## 🎯 Objectifs

À la fin de ce module, tu comprendras :
- La syntaxe de base du PML
- Les types de données
- Comment créer et manipuler les variables
- Les conventions de nommage

---

## 1️⃣ Syntaxe de base

Le PML utilise une syntaxe simple et lisible basée sur des expressions.

### Commentaires

```pml
-- Ceci est un commentaire sur une seule ligne

-- Les commentaires aident à documenter ton code
```

### Structure générale

```pml
-- Déclaration simple
variable = valeur

-- Appel de fonction
resultat = fonction argument1 argument2

-- Assignation de fonction
x = ajouter 5 3  -- Ajoute 5 et 3
```

---

## 2️⃣ Types de données

Le PML supporte plusieurs types de données :

### Nombres

```pml
-- Entiers
entier = 42
negatif = -10
zero = 0

-- Décimaux
decimal = 3.14159
prix = 99.99
```

### Chaînes de caractères

```pml
-- Chaîne simple
nom = "Alice"
message = "Bonjour, monde !"

-- Chaîne avec apostrophes
texte = 'Peut aussi être entre guillemets simples'
```

### Booléens

```pml
-- Vrai ou Faux
actif = TRUE
desactive = FALSE
```

### Listes

```pml
-- Liste de nombres
nombres = (1 2 3 4 5)

-- Liste de chaînes
noms = ("Alice" "Bob" "Charlie")

-- Liste mixte
mixte = (1 "deux" TRUE)

-- Liste imbriquée
matrice = ((1 2) (3 4) (5 6))
```

---

## 3️⃣ Variables et assignation

### Déclaration de variable

```pml
age = 30              -- Un nombre
nom = "Jean"          -- Une chaîne
actif = TRUE          -- Un booléen
scores = (85 90 92)   -- Une liste
```

### Réassignation

```pml
compteur = 0
compteur = compteur + 1  -- Compteur = 1
compteur = compteur + 1  -- Compteur = 2
```

### Conventions de nommage

```pml
-- ✅ BON
nomUtilisateur = "Alice"
agePersonne = 25
dateCreation = "2024-01-15"
nombreElements = 42

-- ❌ MAUVAIS (éviter)
nomutilisateur = "Alice"  -- Pas de majuscule
n = 25                      -- Nom trop court
x_y_z = 42                  -- Pas de tirets bas
```

---

## 4️⃣ Opérations de base

### Opérations arithmétiques

```pml
-- Addition
somme = 5 + 3         -- 8

-- Soustraction
difference = 10 - 4   -- 6

-- Multiplication
produit = 6 * 7       -- 42

-- Division
quotient = 20 / 4     -- 5

-- Modulo (reste)
reste = 17 MOD 5      -- 2
```

### Opérations sur les chaînes

```pml
-- Concaténation
salutation = "Bonjour" + " " + "monde"  -- "Bonjour monde"

-- Longueur
longueur = LENGTH("PML")  -- 3

-- Minuscules/Majuscules
texte1 = UPCASE("pml")    -- "PML"
texte2 = DOWNCASE("PML")  -- "pml"
```

### Opérations de comparaison

```pml
-- Égalité
est_egal = 5 == 5       -- TRUE
est_different = 5 <> 3  -- TRUE

-- Supérieur/Inférieur
plus_grand = 10 > 5     -- TRUE
plus_petit = 3 < 7      -- TRUE
gte = 5 >= 5            -- TRUE
lte = 4 <= 10           -- TRUE
```

---

## 📝 Exercices pratiques

### Exercice 1 : Variables simples
Crée des variables pour :
- Ton nom
- Ton âge
- Ton année de naissance

```pml
-- Écris ici
mon_nom = ???
mon_age = ???
annee_naissance = ???
```

### Exercice 2 : Calculs
Calcule :
- La somme de 15 et 27
- Le produit de 8 et 9
- Le reste de 25 divisé par 4

```pml
-- Écris ici
```

### Exercice 3 : Listes
Crée une liste :
- De 5 nombres
- De tes 3 fruits préférés

```pml
-- Écris ici
```

---

## ✅ Résumé du module

| Concept | Description |
|---------|-------------|
| **Commentaires** | Commencent par `--` |
| **Nombres** | Entiers et décimaux |
| **Chaînes** | Entre guillemets `"` ou `'` |
| **Booléens** | `TRUE` ou `FALSE` |
| **Listes** | Entre parenthèses `(item1 item2)` |
| **Variables** | Assignation avec `=` |
| **Opérateurs** | `+`, `-`, `*`, `/`, `MOD`, `==`, `<>`, `>`, `<`, `>=`, `<=` |

---

**📍 Prochaine étape :** Module 02 - Structures de contrôle
