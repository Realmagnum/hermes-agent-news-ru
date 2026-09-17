# Hermes Agent Quotidien #51

Cette édition revient sur la release v0.21.3, sur le catalogue de plugins
officiel, sur le récit du refactor de Hermes mené par 1 393 sous-agents, sur
l'ouverture de Hermes Business sur le portail Nous, sur un comparatif de six
harnais d'agents, sur dix-huit thèmes clairs pour le bureau et sur un
raccourci qui joint une capture d'écran à la session active.

## Hermes Agent v0.21.3 (v2026.9.14)

Le 14 сентября, teknium1 a publié Hermes Agent v0.21.3 (tag v2026.9.14), une
release de correctifs qui regroupe les quelque 338 demandes de tirage fusionnées
depuis v0.21.2 en un tag stable pour les consommateurs en aval, images Docker,
Hermes Cloud et déploiements hébergés. Elle existe pour que les correctifs de
connexion à la passerelle distante ci-dessous atteignent les agents du Cloud,
qui se mettent à jour automatiquement vers le tag le plus récent.

Mesurée au commit de référence, la fenêtre depuis v0.21.2 compte 1 036 commits
hors fusion sur 2 642 fichiers modifiés (+131 690 / -37 096 lignes) et 338
demandes de tirage fusionnées.

Les changements notables :
- Les sessions du tableau de bord distant ne se terminent plus sur les rafales
  de rafraîchissement : les deux chemins de rafraîchissement de la passerelle
  (le contrôle par cookie et la route porteuse native du bureau) fusionnent
  désormais les requêtes concurrentes qui portent le même jeton de
  rafraîchissement rotatif, si bien qu'une rafale de réveil du bureau ne peut
  plus rejouer un jeton déjà tourné dans la détection de réutilisation du
  portail et révoquer toute la session. Le rafraîchissement sort aussi de la
  boucle d'événements, un fournisseur d'identité lent ne figeant plus
  `/api/status`. Côté portail, la paire s'appuie sur un horizon d'inactivité
  glissant de trente jours et une grâce de cinq minutes sur le jeton tourné.
- Les processus de longue durée cessent de fuir des poignées d'écrivain
  dupliquées de `state.db` : la passerelle, le moteur du tableau de bord et du
  bureau, l'ACP et les lecteurs CLI s'attachent en lecture seule et les
  écrivains en processus partagent la poignée du registre, si bien que les
  poignées de SessionDB vivantes cessent de tirer sur une topologie saine.

La fenêtre embarque aussi, non documentés ici à dessein, des requêtes
JSON-RPC serveur vers client et un registre de contrat filaire Pydantic avec
génération TypeScript et OpenRPC pour la passerelle TUI et bureau, la sélection
de l'effort de raisonnement sur chaque sélecteur de modèle, une pastille de
composeur et un contrôle par auxiliaire dans le bureau, la connexion OAuth
PKCE OpenRouter, le décodage d'images HEIF, HEIC et AVIF, la refonte du
réglage des modèles pairs Honcho, des jetons de rafraîchissement MCP OAuth
liés à leur émetteur, un rappel quotidien de ré-authentification MCP dans le
bureau, Wan 3.0, Kling 3.0 et Kling Image v3, MiniMax H3 Max Turbo, Gemini
Omni Flash 1.1 et Meta Muse dans les catalogues FAL, les tableaux collés Slack
et l'API des sessions d'agents, l'isolation des profils multiplexés et des
correctifs de vivacité de passerelle, et le refus du WAL de `state.db` sur les
systèmes de fichiers inter-machines. Les notes complètes de la fenêtre
accompagnent v0.22.0, qui documentera tout depuis v0.21.0.

> Источники: [Release Hermes Agent v0.21.3 (v2026.9.14), notes de release, 14 сентября 2026](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.9.14)

## Официальный каталог плагинов

Nous Research a annoncé le 16 сентября que Hermes Agent dispose désormais d'un
catalogue de plugins, qui démarre avec 4 plugins officiels et 96 issus de la
communauté, couvrant les modifications du bureau, de nouvelles plateformes, la
navigation, des outils spécialisés et plus encore. L'équipe relit chaque plugin
communautaire et en ajoutera régulièrement.

La documentation du catalogue détaille le dispositif. C'est un répertoire
relu par des humains, installable par nom avec une seule commande,
`hermes plugins install <nom>`, consultable visuellement sur la page des
plugins, où les entrées sont rangées par catégorie (mémoire, bureau,
plateformes, web et navigateur, outils, voix, automatisation, modèles) avec
recherche, filtres de niveau (officiel ou communautaire), pastilles de
capacités et boutons d'installation. Dans le bureau, l'onglet Parcourir du
panneau des plugins ouvre la vue native du catalogue. Le catalogue complète le
système de plugins existant sans le remplacer : tout ce qui s'installe depuis
le catalogue est un plugin normal, le catalogue ajoute seulement la découverte
et une couche de relecture.

Le modèle de confiance repose sur quatre piliers. L'admission se fait par
demande de tirage fusionnée par un mainteneur, rien n'entre automatiquement.
Chaque entrée épingle un commit exact, pas une branche, si bien que pousser du
nouveau code ne change pas ce que le catalogue installe, la mise à jour de
l'épingle exigeant une autre demande de tirage relue. L'admission exécute le
même scanner de sécurité que l'installateur, un verdict dangereux faisant
échouer l'entrée et les constats de prudence étant listés pour le relecteur.
Chaque entrée déclare ses outils, accroches et variables d'environnement, pour
juger de son rayon d'action avant l'installation. Les plugins retirés du
catalogue vont sur une liste de retrait avec motif et date, et l'installateur
refuse tout ce qui s'y trouve. Installer ne signifie pas activer : un plugin
du catalogue se pose sur le disque et doit encore être activé avant de se
charger. Le catalogue se rafraîchit au plus toutes les six heures depuis le
site de documentation, sans mise à jour de Hermes.

witcheer a répondu le 17 сентября aux questions les plus posées sous
l'annonce. Le catalogue est un répertoire posé sur le même système de plugins,
une liste relue installable par nom. Chaque entrée entre par une demande de
tirage qu'un mainteneur relit et fusionne, épinglée à un commit exact, et
déclare les outils, accroches et variables d'environnement qu'elle utilise.
L'épingle est le chemin de mise à jour : quand l'auteur pousse du nouveau code,
l'installation ne change pas tant qu'une nouvelle épingle n'a pas passé la même
relecture, et un plugin retiré va sur la liste de retrait que l'installateur
refuse ensuite. Pas besoin de mettre à jour Hermes pour voir les nouvelles
entrées, le catalogue se rafraîchit au plus toutes les six heures. Installer
pose le plugin sur le disque, `hermes plugins enable <nom>` l'active, et
`hermes plugins list` montre lesquels viennent du catalogue. On peut toujours
installer ses propres dépôts par URL git, non relus et avec une bannière
d'avertissement. Pour soumettre un plugin, une demande de tirage qui ajoute un
fichier yaml au dossier du catalogue, en possédant le dépôt, avec une release
et la validation verte.

> Источники: [@NousResearch, Hermes Agent now has a Plugin Catalog, 16 сентября 2026](https://x.com/NousResearch/status/2100266421020152114), [Plugin Catalog, documentation Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/features/plugin-catalog) et [@witcheer, here are the answers to the questions you asked most under yesterday's plugin catalog announcement, 17 сентября 2026](https://x.com/witcheer/status/2100532064550302181)

## Рефакторинг Hermes с 1 393 агентами

Nous Research a publié le 15 сентября un article de blog qui raconte comment
Hermes Agent a nettoyé environ un million de lignes de Python du dépôt. Le 2
сентября, Teknium a demandé à son agent habituel de faire le ménage ; la
session principale a duré environ dix-neuf heures actives et a délégué 1 393
sous-agents, jusqu'à 218 en même temps. Après un redémarrage, une session de
reprise et deux tours de relecture et de correctifs communautaires, la demande
de tirage a été fusionnée le 4 сентября, réduisant le code Python hors test
de 34,4 %.

L'article détaille la méthode. L'orchestrateur a mesuré le code et l'a découpé
en 36 groupes sans chevauchement, puis a préparé des missions écrites à partir
de l'objectif et des leçons accumulées, sans que Teknium ait à briefer chaque
travailleur. Les travailleurs utilisaient des worktrees git, des extractions
séparées où ils pouvaient modifier sans écraser les fichiers des autres, et
certains ont délégué des parties de leur mission, l'arbre descendant à trois
niveaux sous l'agent d'origine, qui coordonnait plutôt qu'il n'éditait. Hermes
coordonnait les agents dans un seul processus Python sur un bureau i7 avec 64
Go de RAM, leurs outils tournant en sous-processus locaux tandis que Claude
Fable 5.1 faisait l'inférence à distance. Environ cinquante minutes après le
début, le jeton d'authentification du fournisseur a expiré et les échecs ont
tué la session ; les commits et les missions des travailleurs ont survécu, et
une session Hermes séparée a diagnostiqué l'échec et préparé une passation
avant la reprise. Pour `gateway/run.py`, le plus gros fichier, les travailleurs
ont séparé la distribution des messages, le streaming, le RPC et la gestion du
cycle de vie en modules ; ailleurs, ils ont regroupé les aides dupliquées et
remplacé les longues chaînes de `if/elif` par des tables de distribution.

Les mesures avant et après montrent l'ampleur du changement : le code Python
hors test passe de 1 063 826 à 698 363 lignes, les fichiers de plus de 5 000
lignes de 37 à 6, les fonctions de plus de 300 lignes de 192 à 2, la plus
longue chaîne de `if/elif` de 92 branches à 9, et `gateway/run.py` de 34 847
à 5 512 lignes. Une simulation de recherches de 4 000 symboles dans les deux
versions montre que les jetons moyens renvoyés par recherche passent de 2 218
à 993 et que les recherches exigeant une autre fenêtre de lecture passent de
628 à 184. Le coût estimé du modèle était d'environ 19 300 dollars pour la
session principale, soit environ 25 000 avec les sessions de suivi, contre une
estimation de 150 000 à 1,8 million de dollars pour un travail manuel. Les
leçons tirées ont mis à jour les skills de Teknium, partageables avec l'équipe.

> Источники: [@NousResearch, New blog post: We had a million lines of Python to clean up, 15 сентября 2026](https://x.com/NousResearch/status/2099984561451028913) et [Refactoring Hermes with 1,393 agents, article de blog Nous Research, 15 сентября 2026](https://nousresearch.com/refactoring-hermes-with-1393-agents)

## Hermes Business открывается на портале Nous

Nous Research a annoncé le 14 сентября que Hermes Agent est ouvert aux
affaires. Le portail Nous permet désormais d'inviter des collègues sur un
compte Hermes Business : l'équipe obtient des agents sur plusieurs canaux tout
en partageant un solde central avec des plafonds par membre et des skills
partagées qui se composent en propriété intellectuelle propre. Hermes
Enterprise apporte les mêmes capacités sur site ou dans le cloud de son choix,
une pile IA souveraine et auto-améliorante déjà utilisée par certaines des plus
grandes entreprises du monde.

witcheer a précisé le même jour que Hermes Business répond à la question qu'il
a le plus reçue des équipes ce mois-ci, comment faire tourner Hermes pour
plusieurs personnes sans donner un compte à chacun : une équipe, un solde, on
invite des collègues par courriel depuis la page d'équipe, on fixe un plafond
de dépense. Il a aussi relevé le 17 сентября qu'il cherche à comprendre
comment les gens font tourner Hermes pour plus d'une personne, à la maison ou
au travail, entre un profil par personne sur la même machine, une passerelle
qui sert plusieurs personnes, un agent hébergé chacun sur un solde d'équipe
avec Hermes Business, ou autre chose.

> Источники: [@NousResearch, Hermes Agent is open for business, 14 сентября 2026](https://x.com/NousResearch/status/2099599032037388404), [@witcheer, Hermes Business is live on Nous Portal, 14 сентября 2026](https://x.com/witcheer/status/2099600221596438738) et [@witcheer, I'm trying to get a read on how people run Hermes Agent for more than one person, 17 сентября 2026](https://x.com/witcheer/status/2100563751355187344)

## Сравнение шести harnais агентов по успеху

composio a publié le 16 сентября un comparatif de six harnais d'agents sur le
taux de réussite des tâches. Codex, Hermes Agent et Command Code se partagent
la tête à 21/29, Claude Code est une tâche derrière, et OpenCode et Pi Agent
finissent à 19/29. L'écart est d'environ sept points de pourcentage, et seules
trois tâches ont produit des résultats différents.

Teknium a relevé le 17 сентября que Hermes Agent est au sommet en précision,
coût et vitesse, en citant ce comparatif.

> Источники: [@composio, Here's how all 6 harnesses compared on task success rate, 16 сентября 2026](https://x.com/composio/status/2100308384247664866) et [@Teknium, Hermes Agent is top tier on accuracy, cost, and speed, 17 сентября 2026](https://x.com/Teknium/status/2100419715562979420)

## Восемнадцать светлых тем для рабочего стола

witcheer a relevé le 17 сентября qu'un membre de la communauté a fait dix-huit
thèmes clairs et chauds pour Hermes Desktop, pour qui préfère un écran plus
doux que l'apparence par défaut : un plugin à déposer, puis on choisit sa
palette dans les réglages d'apparence comme n'importe quel thème intégré.

Le dépôt du projet détaille le fonctionnement. Minimalist Themes fournit
dix-huit palettes chaudes et claires, chacune apparaissant dans les réglages
d'apparence aux côtés des thèmes intégrés de Hermes. Quand on choisit un thème
Minimalist, le plugin le garde sélectionné quand on change de profil du bureau,
et choisir un thème non Minimalist rend la main au comportement normal par
profil. Le plugin ne touche qu'au bureau, pas au CLI ni à la TUI. L'installation
passe par le clonage du dépôt et la copie du plugin dans le répertoire des
plugins du bureau, que Hermes Desktop surveille et charge en quelques secondes,
avec une commande de rechargement des plugins du bureau si les thèmes
n'apparaissent pas. Les palettes portent des noms de boissons et de couleurs,
de Beetroot Juice à Yuzu.

> Источники: [@witcheer, a Hermes Agent community member made eighteen light, warm themes for Hermes Desktop, 17 сентября 2026](https://x.com/witcheer/status/2100497828321673722) et [mykeura/minimalist-themes-for-hermes, dépôt GitHub](https://github.com/mykeura/minimalist-themes-for-hermes)

## Прикрепление скриншота к активной сессии

imbabybrooklyn a annoncé le 17 сентября qu'on peut désormais appuyer sur les
deux touches commande, gauche et droite, ensemble pour joindre une capture
d'écran de la fenêtre active directement à la session Hermes Desktop en cours.

> Источник: [@imbabybrooklyn, You can now press left + right command together to attach a screenshot of the focused window, 17 сентября 2026](https://x.com/imbabybrooklyn/status/2100380048037404744)

## Licence

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
