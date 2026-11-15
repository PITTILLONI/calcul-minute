# Suivi du projet Calcul Minute

Journal tenu à la fin de chaque session de travail. La session la plus récente est en haut.

## Session du 15 novembre 2026

### Ce qui a été fait

1. **Version 1 de l'app.** Un seul fichier `calcul-minute.html` : 10 étapes (amis de 10, additions jusqu'à 20, doubles et moitiés, additions à deux chiffres, soustractions, tables, divisions, grandes multiplications, pourcentages, soldes), séance du jour de 10 questions, entraînement libre, sprint de 60 s, XP, niveaux, série de jours, étoiles par étape, carte des tables.
2. **Refonte du design** avec le skill design-combo (Taste + UI UX Pro Max). Direction « l'objet est la page » : l'app est une ardoise d'écolier, les leçons sont des feuilles de cahier perforées. Polices Anton et Work Sans. Pensé d'abord pour le téléphone.
3. **Vérification des contenus.** Ajout d'une section Sources dans l'app. Deux affirmations corrigées : le seuil de 3 secondes (présenté maintenant comme un repère d'enseignants, pas un résultat de recherche) et la liste des tables « les plus coriaces » (remplacée par l'effet de taille).
4. **Mise sur GitHub** dans un dépôt privé, avec README, liens et ce journal.

### Décisions

- **Par cœur ou méthode** : la distinction suit la fiche Eduscol (faits numériques à mémoriser, procédures à appliquer).
- **Répétition** : système de boîtes de type Leitner par fait numérique ; un fait raté revient plus souvent.
- **Sauvegarde** : progression dans le `localStorage` du navigateur, pas de compte ni de serveur.
- **Design** : un seul thème sombre (ardoise). Pas de photos, pas de vidéo, peu d'animations : c'est un outil, pas une vitrine.
- **Règle de contenu** : ne rien inventer. Toute affirmation vient d'une source lue ou d'une identité arithmétique vérifiée.

### Vérifications

- Test automatique : 30 000 questions générées (3 000 par étape), toutes avec la bonne réponse.
- Contrôles design du skill Taste : 0 erreur, 0 avertissement sur l'accueil et l'écran d'exercice, à 390, 768 et 1440 px.
- **Pas vérifié** : l'app sur un vrai téléphone ; les trois articles de recherche (seules les références et leur conclusion générale ont été contrôlées, pas le texte des articles).

### Points ouverts

- La référence « Glénans » demandée comme source n'a pas été identifiée (seule l'école de voile est connue sous ce nom). À préciser.
- La progression ne suit pas l'utilisateur d'un appareil à l'autre.
- Le dépôt est privé et l'artifact aussi : les liens ne s'ouvrent que pour le propriétaire.
- Le fichier est un fragment pour artifact Claude (sans `<html>`, `<head>`, `<body>`). Une publication ailleurs, par exemple GitHub Pages, demanderait une page complète.

### Liens

- App : https://claude.ai/artifact/BaY4a6BN3MzHuvqdK6782v
- Dépôt : https://github.com/PITTILLONI/calcul-minute
