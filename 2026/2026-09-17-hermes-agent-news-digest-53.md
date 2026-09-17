# Новости Hermes Agent #53

Cette édition revient sur l'ouverture du catalogue de plugins de Hermes Agent,
sur le soixante-quinzième numéro des Wingtips consacré à l'effort de raisonnement
des tâches auxiliaires, sur un banc d'essai de Composio où Hermes Agent termine à
égalité en tête sur GPT-6 Astra, sur le modèle furtif Union Alpha d'OpenRouter
dont Hermes Agent est l'un des premiers clients, et sur dix-huit thèmes clairs
apportés au bureau par un membre de la communauté. Aucune release n'a été
publiée depuis la v0.21.3 du 14 сентября.

## Каталог плагинов Hermes Agent

Nous Research a annoncé le 16 сентября l'ouverture du catalogue de plugins de
Hermes Agent, avec quatre plugins officiels et quatre-vingt-seize issus de la
communauté. Teknium précise qu'il se parcourt depuis la section Capabilities de
l'application de bureau, où l'on peut chercher, explorer et soumettre ses propres
entrées, et witcheer rappelle que chaque entrée communautaire passe par une revue
de Nous Research avant d'être listée.

La page du catalogue recense à ce jour cent cinq entrées, dont quatre officielles
et cent une communautaires, réparties en neuf catégories : Desktop 23, Tools 26,
Platforms 15, Memory 10, Web & Browser 10, General 10, Voice 5, Automation 5 et
Models 1. Les quatre plugins officiels sont hermes-memory-wiki, un onglet de
tableau de bord qui expose un wiki de sujets et un journal tirés de l'historique
des sessions locales avec un panneau d'audit en lecture seule des mémoires
persistantes, hermes-telegram-business, un mode secrétaire sur Telegram Business
où chaque réponse rédigée attend la validation du propriétaire, snyk, qui
branche le serveur MCP du scanner de sécurité, et touchdesigner, qui pilote une
session TouchDesigner en direct via MCP.

witcheer a publié le lendemain les réponses aux questions les plus posées sous
l'annonce. La première rappelle que le catalogue n'introduit pas un nouveau
système : c'est un répertoire posé au-dessus du mécanisme de plugins existant,
une liste relue que l'on installe par nom avec `hermes plugins install`.

Le parcours d'une soumission communautaire est documenté par un cas réel. Le 17
сентября, iamlukethedev a ouvert la demande de tirage #113635 pour ajouter
hud-teach, un plugin macOS d'annotation à clics traversants qui incruste des
marques numérotées, des flèches et des étiquettes sur n'importe quelle fenêtre
vivante, d'un échiquier à un logiciel de musique. L'entrée déclare le dépôt et
son tag, un épinglage de commit sur quarante caractères, la licence MIT, la
catégorie desktop et le tier community, avec le verdict du garde-fou de plugins
et le passage de `hermes plugins doctor` à l'appui ; la relecture a relevé une
liste d'admission honnête, l'épinglage encore jeune étant laissé à
l'appréciation des mainteneurs.

> Источники: [@NousResearch, Hermes Agent now has a Plugin Catalog, 16 сентября 2026](https://x.com/NousResearch/status/2100266421020152114), [@Teknium, Introducing the Hermes Agent plugins catalog!, 16 сентября 2026](https://x.com/Teknium/status/2100267707870613877), [@witcheer, this is the one a lot of you have been asking for: a plugin catalog inside Hermes Agent, 16 сентября 2026](https://x.com/witcheer/status/2100268967939985735), [@witcheer, here are the answers to the questions you asked most under yesterday's plugin catalog announcement, 17 сентября 2026](https://x.com/witcheer/status/2100532064550302181), [@iamlukethedev, Hermes just crossed 100 plugins, 16 сентября 2026](https://x.com/iamlukethedev/status/2100269513304617269), [Plugin Catalog, documentation Hermes Agent](https://hermes-agent.nousresearch.com/docs/plugins) et [PR #113635, dépôt hermes-agent, 17 сентября 2026](https://github.com/NousResearch/hermes-agent/pull/113635)

## Wingtips #75: усилие рассуждения вспомогательных задач

Le soixante-quinzième numéro des Wingtips traite des appels de modèle que
l'agent fait en dehors de la conversation : le résumé écrit à la compaction d'un
long échange, le nom donné à une session, la lecture d'une image collée, le
contrôle qui décide si une commande exige une approbation. Ces tâches
auxiliaires ont leurs propres réglages, dont un effort de raisonnement.

La page de configuration décrit le mécanisme. Chaque bloc de tâche auxiliaire
accepte une clé `reasoning_effort` qui fixe le niveau de réflexion des appels
correspondants, parmi `none`, `minimal`, `low`, `medium`, `high`, `xhigh`, `max`
et `ultra`, laissée vide par défaut au profit de la valeur du fournisseur. C'est
le pendant par tâche du réglage global `agent.reasoning_effort` : passer la
compression à `low` ou la vision à `none` réduit la latence et le coût des
tâches de côté quand le modèle principal est un gros modèle de raisonnement,
sans toucher au comportement du chat. Le réglage couvre les tâches du client
auxiliaire comme `vision`, `compression`, `title_generation` et `curator`, sur
les trois formats de fil pris en charge (chat completions, Codex Responses,
Anthropic Messages), et un `extra_body.reasoning` explicite sur la même tâche
garde la priorité.

Une exception est documentée séparément. Une revue de fond qui réutilise le même
modèle hérite toujours de l'effort du parent : `auxiliary.background_review.reasoning_effort`
est ignoré sur ce chemin, y compris quand le fournisseur et le modèle du parent
sont explicitement choisis, afin de préserver l'égalité octet par octet du
prompt système, de l'instantané de conversation et des définitions d'outils pour
le cache de prompt.

> Источники: [@witcheer, Hermes Wingtips #75: reasoning_effort for side tasks, 17 сентября 2026](https://x.com/witcheer/status/2100460797239415168) et [Configuration, Auxiliary Models et Reasoning Effort, documentation Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

## Hermes Agent à égalité en tête du banc d'essai GPT-6 Astra de Composio

Composio a publié le 16 сентября une comparaison de six harnais d'agents sur
vingt-neuf tâches agentiques difficiles, tous tournant sur le même modèle
GPT-6 Astra. Codex, Hermes Agent et Command Code terminent à égalité en tête
avec vingt et une tâches réussies sur vingt-neuf, soit 72,4 pour cent, devant
Claude Code à vingt sur vingt-neuf, puis OpenCode et Pi Agent à dix-neuf sur
vingt-neuf. L'écart entre le premier et le dernier tient à environ sept points de
pourcentage, et seules trois tâches ont produit des résultats différents selon
le harnais.

Un autre constat porte sur le coût au moment de l'échec : quand ils échouent,
les harnais consomment trois à cinq fois plus de jetons, selon le harnais. Le
coût estimé par tâche réussie va de 1,06 dollar avec Pi Agent à 2,62 dollars
avec Claude Code, un facteur 2,5 que Composio attribue au seul choix du harnais.

La page récapitulative du banc donne le détail par modèle. Sur GPT-6 Astra, les
taux projetés de réussite au troisième essai (pass@3) placent Codex, Hermes
Agent et Command Code à 97,9 pour cent, devant Claude Code à 97,0, puis OpenCode
et Pi Agent à 95,9. La même grille contient une colonne DeepSeek V4 Pro restée à
trente tâches, où Command Code mène à dix-huit sur trente, Hermes Agent et Pi
Agent suivant à dix-sept sur trente.

> Источники: [@composio, We ran GPT-6 Astra across 6 agent harnesses, 16 сентября 2026](https://x.com/composio/status/2100308380980068538), [@composio, Here's how all 6 harnesses compared on task success rate, 16 сентября 2026](https://x.com/composio/status/2100308384247664866) et [Compare harnesses, Composio Bench](https://composio.dev/bench/compare/harnesses)

## Union Alpha, un modèle furtif dont Hermes Agent est un des premiers clients

OpenRouter a mis en ligne le 16 сентября Union Alpha, un modèle furtif signé
@unionalphaai. Il est présenté comme multimodal, destiné à la recherche, au code
et aux flux agentiques, avec un contexte de 256K, l'appel d'outils et des
performances de niveau frontière. Il est gratuit pendant la préversion et
développé par un fournisseur tiers qui reste anonyme ; les invites et les
complétions peuvent être conservées par ce fournisseur mais ne servent pas à
l'entraînement.

La fiche du modèle rassemble les mesures du jour. Union Alpha est sorti le
16 сентября 2026, avec un contexte de 262K, un score GPQA Diamond de 90,9 pour
cent en routage automatique, une latence médiane de 10,15 secondes et un débit
médian de 22 jetons par seconde. La même page classe les applications qui envoient
le plus de trafic vers le modèle : omp en tête avec 76 milliards de jetons,
Hermes Agent deuxième avec 45,1 milliards, puis Claude Code à 44,1 milliards.

tonbi a consacré une vidéo à l'énigme du jour. Il donne quelques tâches au
modèle, puis laisse Hermes Agent comparer son processus avec ceux des nombreux
modèles qu'il a testés. Son premier constat, publié la veille d'après un test
Three.js sur l'ouverture du Seigneur des Anneaux, est qu'Union Alpha s'en tire
très bien, nettement mieux que GLM 5.3 Flash et d'autres modèles ouverts
récents, sans atteindre le niveau de détail de Fable et Astra. Le second est plus
tranché : le modèle reste proche de Fable en performance pour un prix inférieur,
et la comparaison menée avec Hermes a conduit à une conclusion qu'il n'attendait
pas.

> Источники: [@OpenRouter, New stealth model: Union Alpha, 16 сентября 2026](https://x.com/OpenRouter/status/2100235351575191751), [Union Alpha, fiche modèle OpenRouter](https://openrouter.ai/stealth/union-alpha), [@tonbistudio, Union Alpha benchmarks near Fable at a lower price, but who is it?, 17 сентября 2026](https://x.com/tonbistudio/status/2100443637666422859) et [@tonbistudio, here's a quick comparison on the LOTR opening Three.js movie test, 16 сентября 2026](https://x.com/tonbistudio/status/2100354187662114962)

## Dix-huit thèmes clairs pour le bureau

witcheer a relayé le 17 сентября un plugin de thèmes créé par un membre de la
communauté, mykeura. Il apporte dix-huit palettes claires et chaudes pour Hermes
Desktop, à installer en un seul plugin, puis à choisir dans Settings, section
Appearance, aux côtés des thèmes intégrés.

Le dépôt donne le mode d'emploi. Sous Linux et macOS, on clone le dépôt et on
copie `plugin.js` dans `~/.hermes/desktop-plugins/minimalist-themes/`, le bureau
surveillant ce dossier et chargeant le plugin en quelques secondes ; s'il ne se
charge pas, la palette de commandes propose « Reload desktop plugins ». Le choix
d'un thème Minimalist est conservé d'un profil à l'autre, un thème non Minimalist
rendant la main au comportement normal par profil. Le dépôt est en version 1.0.1,
sous licence MIT, et comptait 38 étoiles au moment de la consultation. Les
palettes s'appellent Beetroot Juice, Blackberry Juice, Coffee With Milk, Green
Tea, Horchata, Mint, Snow Water, Ultramarine ou Yuzu, parmi d'autres.

Deux précisions cadrent l'usage. Les palettes sont volontairement claires et
chaudes, et la même palette est utilisée quand le bureau est en mode sombre
plutôt que de proposer des variantes sombres distinctes. Le plugin n'affecte que
Hermes Desktop et ne touche ni le CLI ni la TUI.

> Источники: [@witcheer, a Hermes Agent community member made eighteen light, warm themes for Hermes Desktop, 17 сентября 2026](https://x.com/witcheer/status/2100497828321673722) et [minimalist-themes-for-hermes, dépôt GitHub mykeura, version 1.0.1, 16 сентября 2026](https://github.com/mykeura/minimalist-themes-for-hermes)

## Licence

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
