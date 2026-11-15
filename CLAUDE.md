# Règles de travail sur Calcul Minute

Ces règles viennent du propriétaire du projet. Elles s'appliquent à chaque session.

1. **Rien en local.** Tout ce qui compte va sur git : code, notes, décisions, liens. Ne pas proposer de déplacer ou de garder le projet dans un dossier local. Chaque session se termine par un commit poussé sur `main`.
2. **Suivi en fin de session.** Ajouter une entrée datée en haut de `SUIVI.md` (ce qui a été fait, décisions, vérifications et ce qui n'a pas été vérifié, points ouverts, liens).
3. **Liens accessibles depuis GitHub.** Tenir à jour les sections « Liens » et « Sources » du `README.md`.
4. **Ne rien inventer.** Tout contenu pédagogique vient d'une source lue (Eduscol en priorité) ou d'une identité arithmétique vérifiée par test. Dire ce qui n'a pas été vérifié.
5. **Design.** Passer par le skill design-combo, mobile d'abord. Direction actuelle : l'ardoise d'écolier (voir `SUIVI.md`).

## Repères

- Web app en ligne (GitHub Pages, branche `main`, dépôt public) : https://pittilloni.github.io/calcul-minute/ — ne rien committer de privé.
- La source est `calcul-minute.html`, un fragment pour artifact Claude (sans `<html>`, `<head>`, `<body>`). Après chaque modification, lancer `sh build.sh` pour régénérer `index.html` (la web app installable), et changer le nom du cache dans `sw.js` (`calcul-minute-vN`).
- L'app doit se comporter comme une app, pas comme une page web : écran fixe, onglets en bas, bouton d'action ancré, pas de longue page qui défile.
- Artifact à mettre à jour, sans en créer un nouveau : https://claude.ai/artifact/BaY4a6BN3MzHuvqdK6782v
