# Calcul Minute

Entraînement quotidien au calcul mental, en français : 10 questions, environ 3 minutes par jour.

- **Par cœur** : compléments à 10, additions jusqu'à 20, tables de multiplication (dans les deux sens).
- **Méthode** : doubles et moitiés, additions et soustractions à deux chiffres, grandes multiplications, pourcentages, soldes.

C'est une web app installable (PWA) : elle s'ajoute à l'écran d'accueil du téléphone, s'ouvre en plein écran et fonctionne hors ligne après la première visite. La progression est enregistrée dans le navigateur (`localStorage`).

## Fichiers

| Fichier | Rôle |
| --- | --- |
| `calcul-minute.html` | La source de l'app (HTML, CSS, JavaScript). C'est aussi le fragment publié comme artifact Claude. |
| `build.sh` | Assemble `index.html` à partir de la source. À relancer après chaque modification : `sh build.sh`. |
| `index.html` | La web app complète, générée. Ne pas la modifier à la main. |
| `manifest.webmanifest`, `icons/` | Nom, couleurs et icônes pour l'installation. |
| `fonts/` | Polices Anton et Work Sans (licence SIL Open Font License), servies avec l'app. |
| `sw.js` | Mode hors ligne. |

## Mise en ligne

La web app est servie par GitHub Pages depuis la branche `main` : **https://pittilloni.github.io/calcul-minute/**

Chaque `git push` sur `main` la met à jour en une à deux minutes.

**L'installer sur un téléphone :** ouvrir l'adresse, puis « Sur l'écran d'accueil » dans le menu de partage (Safari, iPhone) ou « Installer l'application » dans le menu (Chrome, Android).

## Liens

- **Web app** : https://pittilloni.github.io/calcul-minute/
- **Aperçu Claude** : https://claude.ai/artifact/BaY4a6BN3MzHuvqdK6782v (artifact Claude privé : seul son propriétaire, et les personnes à qui il le partage, peuvent l'ouvrir)
- **Code** : https://github.com/PITTILLONI/calcul-minute
- **Suivi du projet** : [SUIVI.md](SUIVI.md), mis à jour à la fin de chaque session de travail

## Sources

- Eduscol, ministère de l'Éducation nationale, [« Mémoriser des faits numériques et des procédures »](https://eduscol.education.gouv.fr/sites/default/files/document/2026evaluationdebutcm1mathematiquesficheinterventionmemoriserfaitsnumeriquesprocedures-129508.pdf), évaluations nationales de début de CM1.
- Roediger & Karpicke (2006), « Test-Enhanced Learning », *Psychological Science* 17(3).
- Cepeda et al. (2006), « Distributed practice in verbal recall tasks », *Psychological Bulletin* 132(3).
- Campbell & Graham (1985), *Canadian Journal of Psychology* (effet de taille en multiplication).
