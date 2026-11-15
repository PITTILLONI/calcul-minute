# Suivi du projet Calcul Minute

Journal tenu à la fin de chaque session de travail. La session la plus récente est en haut.

## Session du 15 novembre 2026

### Ce qui a été fait

1. **Version 1 de l'app.** Un seul fichier `calcul-minute.html` : 10 étapes (amis de 10, additions jusqu'à 20, doubles et moitiés, additions à deux chiffres, soustractions, tables, divisions, grandes multiplications, pourcentages, soldes), séance du jour de 10 questions, entraînement libre, sprint de 60 s, XP, niveaux, série de jours, étoiles par étape, carte des tables.
2. **Refonte du design** avec le skill design-combo (Taste + UI UX Pro Max). Direction « l'objet est la page » : l'app est une ardoise d'écolier, les leçons sont des feuilles de cahier perforées. Polices Anton et Work Sans. Pensé d'abord pour le téléphone.
3. **Vérification des contenus.** Ajout d'une section Sources dans l'app. Deux affirmations corrigées : le seuil de 3 secondes (présenté maintenant comme un repère d'enseignants, pas un résultat de recherche) et la liste des tables « les plus coriaces » (remplacée par l'effet de taille).
4. **Mise sur GitHub** dans un dépôt d'abord privé, avec README, liens et ce journal.

5. **Structure d'app.** Retour de l'utilisateur : « ça ressemble encore à du web ». L'écran est maintenant fixe, avec quatre onglets en bas (Séance, Parcours, Progrès, Repères), un bouton d'action ancré, des écrans qui glissent et une correction qui monte du bas.
6. **Web app installable.** Ajout de `build.sh`, `index.html`, `manifest.webmanifest`, `sw.js` et des icônes. Vérifié en local : manifeste lu, service worker enregistré, polices chargées, pas de défilement horizontal à 375 px.

7. **Mise en ligne.** Avec l'accord du propriétaire, le dépôt est passé en public et GitHub Pages est activé sur `main` : https://pittilloni.github.io/calcul-minute/

### Décisions

- **Par cœur ou méthode** : la distinction suit la fiche Eduscol (faits numériques à mémoriser, procédures à appliquer).
- **Répétition** : système de boîtes de type Leitner par fait numérique ; un fait raté revient plus souvent.
- **Sauvegarde** : progression dans le `localStorage` du navigateur, pas de compte ni de serveur.
- **Design** : un seul thème sombre (ardoise). Pas de photos, pas de vidéo, peu d'animations : c'est un outil, pas une vitrine.
- **Rien en local** : tout va sur git (code, notes, règles de travail dans `CLAUDE.md`). La session n'est pas déplacée dans un dossier local.
- **Règle de contenu** : ne rien inventer. Toute affirmation vient d'une source lue ou d'une identité arithmétique vérifiée.

### Vérifications

- Test automatique : 30 000 questions générées (3 000 par étape), toutes avec la bonne réponse.
- Contrôles design du skill Taste : 0 erreur, 0 avertissement sur l'accueil et l'écran d'exercice, à 390, 768 et 1440 px.
- **Pas vérifié** : l'app sur un vrai téléphone ; les trois articles de recherche (seules les références et leur conclusion générale ont été contrôlées, pas le texte des articles).

### Points ouverts

- L'installation sur un vrai téléphone (iOS et Android) n'a pas été testée.

- La référence « Glénans » demandée comme source n'a pas été identifiée (seule l'école de voile est connue sous ce nom). À préciser.
- La progression ne suit pas l'utilisateur d'un appareil à l'autre.
- L'artifact Claude reste privé : seul le propriétaire peut l'ouvrir.

### Liens

- Web app : https://pittilloni.github.io/calcul-minute/
- Aperçu Claude : https://claude.ai/artifact/BaY4a6BN3MzHuvqdK6782v
- Dépôt : https://github.com/PITTILLONI/calcul-minute
