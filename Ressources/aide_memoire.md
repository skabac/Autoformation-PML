# 📚 Ressources PML

## 🔗 Liens utiles

### Documentation officielle
- [AVEVA Plant Documentation](https://aveva.com)
- AVEVA E3D Documentation
- AVEVA Product Portal

### Communautés
- Forum AVEVA Plant
- Stack Overflow PML
- GitHub PML repositories

---

## 📖 Livres et guides recommandés

### Pour débuter
- "PML Scripting Guide" - AVEVA
- "Plant Design Guide" - AVEVA
- Tutoriels vidéo AVEVA Academy

### Pour approfondir
- "Advanced PML Programming"
- Documentation API AVEVA
- Best practices AVEVA

---

## 📝 Aide-mémoire PML

### Syntaxe rapide

```pml
-- Commentaire
-- Variable
x = 10

-- Condition
IF x > 5 THEN PRINT "Grand" ELSE PRINT "Petit" ENDIF

-- Boucle
LOOP i FROM 1 TO 10 DO PRINT i ENDLOOP

-- Fonction
FUNCTION double (x) RETURN x * 2 ENDFUNCTION

-- Objet
objet.NAME = "Test"
objet.DELETE()
```

### Opérateurs

```pml
-- Arithmétiques
+ - * / MOD

-- Comparaison
== <> > < >= <=

-- Logiques
AND OR NOT
```

### Fonctions intégrées couantes

```pml
-- Chaînes
LENGTH(str)      -- Longueur
UPCASE(str)      -- Majuscules
DOWNCASE(str)    -- Minuscules
STR(nombre)      -- Convertir en chaîne

-- Collections
LENGTH(liste)    -- Nombre d'éléments
```

---

## 🛠️ Outils utiles

### Éditeurs
- AVEVA Plant Built-in Editor
- Visual Studio Code (avec extensions PML)
- Sublime Text

### Debugging
- AVEVA Plant Debug Console
- Trace et PRINT statements
- Breakpoints

---

## 📚 Structure de dossier - Recommandations

```
Autoformation_PML/
├── README.md                      -- Guide principal
├── 01_Fondamentaux/
│   ├── 01_Syntaxe_et_Types.md
│   ├── exercices.pml
│   └── solutions.pml
├── 02_Controle/
│   ├── 02_Conditions_et_Boucles.md
│   ├── exercices.pml
│   └── solutions.pml
├── 03_Objets/
│   ├── 03_Manipulation_Objets.md
│   ├── exercices.pml
│   └── solutions.pml
├── 04_Projets_Pratiques/
│   ├── 04_Projets_Pratiques.md
│   ├── projet1_audit.pml
│   ├── projet2_materiaux.pml
│   ├── projet3_liste.pml
│   ├── projet4_numerotation.pml
│   └── projet5_statistiques.pml
└── Ressources/
    └── aide_memoire.md
```

---

## 💡 Conseils d'apprentissage

### Phase 1 : Les bases (1-2 semaines)
- [ ] Lire le Module 01
- [ ] Faire les exercices du Module 01
- [ ] Expérimenter dans AVEVA Plant

### Phase 2 : Logique (2-3 semaines)
- [ ] Lire le Module 02
- [ ] Faire les exercices du Module 02
- [ ] Créer tes propres scripts

### Phase 3 : Objets (2-3 semaines)
- [ ] Lire le Module 03
- [ ] Faire les exercices du Module 03
- [ ] Explorer les objets AVEVA

### Phase 4 : Projets (3-4 semaines)
- [ ] Lire le Module 04
- [ ] Implémenter les projets pratiques
- [ ] Créer tes propres scripts

---

## 🎯 Points de contrôle

Après chaque module, tu dois être capable de :

### Module 01
- [ ] Comprendre les types de données
- [ ] Déclarer des variables
- [ ] Effectuer des opérations arithmétiques

### Module 02
- [ ] Écrire des conditions IF/ELSE
- [ ] Créer des boucles LOOP
- [ ] Déclarer et appeler des fonctions

### Module 03
- [ ] Accéder aux propriétés d'un objet
- [ ] Modifier les propriétés
- [ ] Appeler les méthodes
- [ ] Itérer sur une collection

### Module 04
- [ ] Combiner tous les concepts
- [ ] Écrire des scripts d'automatisation
- [ ] Générer des rapports

---

## ❓ Questions fréquemment posées (FAQ)

**Q: Par où commencer ?**
A: Commence par le Module 01 (Fondamentaux).

**Q: Combien de temps faut-il pour apprendre le PML ?**
A: Comptez environ 4-6 semaines pour les bases, plusieurs mois pour la maîtrise.

**Q: Faut-il avoir AVEVA Plant pour apprendre ?**
A: Oui, pour tester tes scripts. Mais tu peux d'abord apprendre la syntaxe théorique.

**Q: Où trouver de l'aide ?**
A: Forums AVEVA, documentation officielle, communauté.

**Q: Quel est le meilleur éditeur pour PML ?**
A: L'éditeur intégré d'AVEVA Plant est recommandé, avec Visual Studio Code en alternative.

---

## 📞 Support et feedback

Si tu as des questions ou du feedback sur ce cours :
1. Consulte d'abord la documentation officielle AVEVA
2. Posez sur les forums AVEVA
3. Contacte le support technique AVEVA

---

**Bonne chance dans ton apprentissage du PML ! 🚀**
