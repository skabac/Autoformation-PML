# 📚 Guide des Projets Forked PML

**Date**: 8 juin 2026  
**Statut**: ✅ Tous les projets clonés et opérationnels  

---

## 📋 Résumé des Projets

| Projet | Branch | Commit | Fichiers | Taille | Purpose |
|--------|--------|--------|----------|--------|---------|
| **AVEVA_PML** | main | 2d3a872 | 14 | 0.09 MB | 📖 Matériel d'apprentissage PML |
| **pml_language_extension** | master | 4a0fce2 | 35 | 6.6 MB | 🎨 Extension VSCode |
| **PMLNet** | main | 01b2f68 | 32 | 0.05 MB | 🔗 Intégration C# |
| **PmlUnit** | master | 0cbcf6b | 238 | 1.14 MB | 🧪 Framework de test |
| **AVEVA-Samples** | main | 46ead11 | 27 | 1.19 MB | 💼 Exemples officiels |

---

## 🗂️ Structure Locale

```
C:\Users\baccouche.skander\Documents\Autoformation_PML\
├── 01_Fondamentaux/
├── 02_Controle/
├── 03_Objets/
├── 04_Projets_Pratiques/
├── Ressources/
├── Projets_Forked/
│   ├── AVEVA_PML/
│   ├── pml_language_extension/
│   ├── PMLNet/
│   ├── PmlUnit/
│   └── AVEVA-Samples/
├── README.md
├── COMPTE_RENDU.md
└── GUIDE_PROJETS_FORKED.md (CE FICHIER)
```

---

## 🚀 Commandes Git Courantes

### Synchroniser avec le dépôt original (upstream)

```powershell
# Ajouter le dépôt original en tant que "upstream"
cd "C:\Users\baccouche.skander\Documents\Autoformation_PML\Projets_Forked\AVEVA_PML"
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe remote add upstream https://github.com/shivangKheradiya/AVEVA_PML.git

# Récupérer les mises à jour du dépôt original
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe fetch upstream

# Fusionner les changements
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe merge upstream/main
```

### Créer une branche de travail

```powershell
cd "C:\Users\baccouche.skander\Documents\Autoformation_PML\Projets_Forked\AVEVA_PML"
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe checkout -b feature/mon-amelioration
```

### Committer et pusher

```powershell
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe add .
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe commit -m "Description des changements"
C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe push origin feature/mon-amelioration
```

---

## 📖 Description Détaillée des Projets

### 1. **AVEVA_PML** ⭐⭐⭐⭐⭐
**Meilleur pour**: Apprentissage complet du langage PML

**Contenu**:
- Documentation du langage PML
- Exemples de syntaxe
- Cas d'usage réels
- Tutoriels pas à pas

**Comment l'utiliser**:
1. Lire la documentation principale
2. Étudier les exemples fournis
3. Appliquer les concepts dans tes propres projets

**Fichiers clés**:
- `README.md` - Point de départ
- `docs/` - Documentation détaillée
- `examples/` - Code d'exemple

---

### 2. **pml_language_extension** 🎨
**Meilleur pour**: Support VSCode et coloration syntaxe

**Contenu**:
- Extension VSCode pour PML
- Coloration syntaxe
- IntelliSense/autocomplétion
- Formatage de code

**Comment l'utiliser**:
1. Installer l'extension dans VSCode
2. Copier les fichiers dans le dossier extensions de VSCode
3. Redémarrer VSCode pour activer

**Installation manuelle**:
```powershell
# Copier dans le dossier extensions VSCode
Copy-Item -Recurse "C:\Users\baccouche.skander\Documents\Autoformation_PML\Projets_Forked\pml_language_extension" `
  -Destination "C:\Users\baccouche.skander\AppData\Roaming\Code\User\extensions"
```

---

### 3. **PMLNet** 🔗
**Meilleur pour**: Intégration PML avec C#/.NET

**Contenu**:
- Bindings C# pour PML
- Exemples d'intégration
- Documentation API
- Projets démos

**Comment l'utiliser**:
1. Inclure la bibliothèque dans ton projet C#
2. Consulter les exemples
3. Utiliser l'API dans ton code

**Fichiers clés**:
- `.dll` ou sources de la bibliothèque
- `examples/` - Projets démos
- `docs/` - Documentation API

---

### 4. **PmlUnit** 🧪
**Meilleur pour**: Testing et validation de code PML

**Contenu**:
- Framework de test unitaire pour PML
- Assertions et matchers
- Exemples de tests
- Documentation

**Comment l'utiliser**:
1. Écrire des tests pour ton code PML
2. Exécuter les tests avec le framework
3. Valider la qualité du code

**Structure typique**:
```pml
-- Mon_Test.pml
FUNCTION TestExample()
  ASSERT(1 + 1 = 2)
ENDFUNCTION
```

---

### 5. **AVEVA-Samples** 💼
**Meilleur pour**: Exemples officiels et cas réels

**Contenu**:
- Exemples officiels d'AVEVA
- Cas d'usage de production
- Meilleures pratiques
- Modèles et templates

**Comment l'utiliser**:
1. Explorer les exemples correspondant à ton besoin
2. Adapter le code à ta situation
3. Appliquer les meilleures pratiques

**Catégories**:
- `plant-design/` - Design de plantes
- `automation/` - Automation et scripting
- `integration/` - Intégration système
- `utilities/` - Utilitaires et helpers

---

## 🎯 Plan d'Apprentissage Recommandé

### Semaine 1: Fondamentaux
1. Commencer par **AVEVA_PML** (documentation + exemples)
2. Installer **pml_language_extension** dans VSCode
3. Lire les fondamentaux du langage

### Semaine 2-3: Pratique
1. Étudier **AVEVA-Samples** (exemples réels)
2. Créer tes propres scripts PML
3. Utiliser **PmlUnit** pour écrire des tests

### Semaine 4+: Avancé
1. Explorer **PMLNet** pour l'intégration C#
2. Contribuer aux projets (pull requests)
3. Créer tes propres extensions

---

## 🔄 Synchronisation avec les Dépôts Originaux

Pour rester à jour avec les changements originaux:

```powershell
# Pour chaque projet
cd "Projets_Forked\[NOM_DU_PROJET]"

# Ajouter upstream (une seule fois)
git remote add upstream https://github.com/[AUTEUR_ORIGINAL]/[REPO].git

# Régulièrement: synchroniser
git fetch upstream
git merge upstream/[BRANCHE_PRINCIPALE]
git push origin [BRANCHE_PRINCIPALE]
```

---

## 📝 Bonnes Pratiques

### 1. **Organiser ton travail**
- Créer une branche pour chaque feature
- Faire des commits atomiques
- Écrire des messages de commit clairs

### 2. **Documenter ton code**
- Ajouter des commentaires en français ou anglais
- Documenter les fonctions complexes
- Créer un README pour tes modifications

### 3. **Tester ton code**
- Utiliser PmlUnit pour écrire des tests
- Valider avant de committer
- Créer des tests de régression

### 4. **Contribuer**
- Créer des pull requests vers les dépôts originaux
- Respecter le style de code existant
- Communiquer clairement tes intentions

---

## 🛠️ Outils Recommandés

### VSCode Extensions
- **pml_language_extension** (installé depuis les projets forked)
- **Git Graph** - Visualiser l'historique Git
- **GitLens** - Annotations Git avancées
- **Markdown Preview Enhanced** - Pour les README

### Command Line
```powershell
# Créer un alias PowerShell pour git (permanent)
Add-Content $PROFILE 'Set-Alias -Name git -Value "C:\Users\baccouche.skander\AppData\Local\Programs\Git\cmd\git.exe" -Force'

# Recharger le profil
. $PROFILE
```

---

## 📞 Support et Ressources

### Documentation
- AVEVA PML Official: https://github.com/shivangKheradiya/AVEVA_PML
- AVEVA Samples: https://github.com/AVEVA/AVEVA-Samples
- AVEVA Documentation Portal

### Communauté
- GitHub Discussions
- Issues et Pull Requests
- Stack Overflow (tag: PML)

### Dépôt Principal
- Repository: https://github.com/skabac/Autoformation-PML
- Tes forks: https://github.com/skabac/[REPO]

---

## ✅ Checklist de Configuration

- [x] Git installé et configuré
- [x] 5 repositories clonés localement
- [x] Structure de dossiers créée
- [x] Alias Git configuré
- [ ] Extension VSCode pml_language_extension installée
- [ ] Premier test du code PML
- [ ] Configuration upstream pour synchronisation

---

**Prochaine étape**: Ouvre VSCode et commence à explorer les projets! 🚀

```powershell
# Ouvrir le dossier dans VSCode
code "C:\Users\baccouche.skander\Documents\Autoformation_PML"
```
