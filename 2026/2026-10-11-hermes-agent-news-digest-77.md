# Новости Hermes Agent #77

> **Выпуск:** #77 · **Дата:** 11 октября 2026  
> **Оригинал:** [hermes-agent-news-fr #77](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-10-11-hermes-agent-news-digest-77.md)

---

### Кратко в этом выпуске:
- [Монорепозиторий для официальных плагинов](#монорепозиторий-для-официальных-плагинов)
- [MISSINGNO.: stealth-модель в свободном доступе в Nous Portal](#missingno-stealth-модель-в-свободном-доступе-в-nous-portal)
- [Wingtips #97: пусть агент сначала задаст вопросы](#wingtips-97-пусть-агент-сначала-задаст-вопросы)
- [55 пулл-реквестов смерджено 10 октября](#55-пулл-реквестов-смерджено-10-октября)
- [Hermes Desktop умеет работать с удалённым бэкендом](#hermes-desktop-умеет-работать-с-удалённым-бэкендом)

---

## Монорепозиторий для официальных плагинов

11 октября Teknium объявил, что официальные плагины Hermes Agent переезжают в единый монорепозиторий — так проще отслеживать баг-репорты и держать код в одном месте. Репозиторий называется `NousResearch/hermes-official-plugins` и собирает first-party плагины, которые разрабатывает и поддерживает Nous Research.

**Девять плагинов:** Home Assistant, Spotify, Claude Subscription DirectSDK, Telegram Business Mode, Memory Wiki, Blender, Snyk, TouchDesigner и Accent Picker.

Как это устроено:
- каждый каталог — самостоятельный плагин; каталог устанавливает его по паре «репозиторий + подкаталог» на закреплённом коммите;
- Hermes забирает только нужный каталог через **sparse clone без истории** — установка Spotify не тянет за собой Home Assistant;
- CI прогоняет каждый плагин против актуального ядра на **Linux, macOS и Windows** — на каждый push, пулл-реквест и в ночной сборке.

Миграция продумана так, чтобы почти ничего не требовать от пользователя:
- **встроенные в ядро** Home Assistant и Spotify — плагин приедет автоматически при обновлении;
- **установленные из каталога** — переключатся на монорепозиторий при следующем `hermes plugins update`;
- **установленные по URL** — нужно один раз переустановить из каталога с флагом `--force`.

Старые репозитории архивированы и исправлений больше не получают.

> **Источники:**
> - [@Teknium — We are consolidating the official plugins for Hermes Agent into the following mono-repo (11 октября 2026)](https://x.com/Teknium/status/2109177877543682419)
> - [Hermes Official Plugins — репозиторий NousResearch на GitHub](https://github.com/NousResearch/hermes-official-plugins)

---

## MISSINGNO.: stealth-модель в свободном доступе в Nous Portal

10 октября Nous Research анонсировала «stealth»-модель под вывеской «Wild MISSINGNO.» — модель для кода и агентного рассуждения, по описанию очень **экономная по токенам**. Ограниченное время она бесплатна в Nous Portal; Teknium подчеркнул, что доступна она только там и только временно.

witcheer расписал, как поймать её в Hermes Agent:

```bash
# новичкам — подключиться к Nous Portal
hermes setup --portal
```

Дальше в любом диалоге:
- `/model stealth/missingno` — выбрать модель;
- `/model stealth/missingno --global` — сделать её моделью по умолчанию.

В посте упоминаются контекст **262K** и поддержка вызова инструментов.

> **Источники:**
> - [@NousResearch — Wild MISSINGNO. appeared! (10 октября 2026)](https://x.com/NousResearch/status/2109012611555840069)
> - [@Teknium — New stealth model, only on Nous Portal for a limited time! (10 октября 2026)](https://x.com/Teknium/status/2109012782897356985)
> - [@witcheer — a wild model on Nous Portal, here's how to catch it in Hermes Agent (10 октября 2026)](https://x.com/witcheer/status/2109016297375666268)

---

## Wingtips #97: пусть агент сначала задаст вопросы

97-й выпуск Wingtips от witcheer — про уточнения до старта. Допишите к сообщению «ask me a few questions first», и агент сверит детали, прежде чем браться за работу. В терминале он соберёт вопросы в одну панель — с вариантами-чекбоксами или полем для свободного ответа.

Под капотом — инструмент **`clarify`**:
- задаёт от **одного до пяти** вопросов;
- три формата: одиночный выбор максимум из четырёх вариантов (плюс пункт «Other» для своего ответа), множественный выбор или открытый вопрос;
- **терминал и TUI** показывают компактный список, **Desktop** — все вопросы на одной карточке, **мессенджеры** задают их по одному.

> **Источники:**
> - [@witcheer — Hermes Wingtips #97: let your agent ask before it starts (11 октября 2026)](https://x.com/witcheer/status/2109184368052777380)
> - [Toolsets Reference — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/reference/toolsets-reference/)

---

## 55 пулл-реквестов смерджено 10 октября

По подсчётам iamlukethedev (пост от 11 октября), 10 октября в Hermes смерджили 55 пулл-реквестов. В тексте выделены три изменения:
- **Desktop**: в «Настройки → О программе» появился выбор канала обновлений для установок из исходников — стабильные релизы или каждый коммит.
- `hermes update` и обновления Desktop по умолчанию идут по **стабильным релизам**.
- Обновления Desktop на **macOS** больше не отвергают собственный перезапуск.

### Как работает канал обновлений

Документация по обновлениям уточняет:
- установка из исходников теперь следует **каналу stable**: последний опубликованный на GitHub релиз `vX.Y.Z` (без черновиков, пре-релизов и canary-тегов), ровно на его коммите;
- переключение каналов:

```bash
hermes update --set-channel main    # каждый коммит main
hermes update --set-channel stable  # обратно на релизы
```

- выбор хранится отдельно для каждой установки в `update.installs` файла `config.yaml`.

### Что было с macOS

Блокировка обновления отвергала собственный перезапуск (код выхода 2) на установках старше определённого коммита. Решение об отказе принималось ещё до `git pull`, поэтому обновление падало раньше, чем успевало скачать исправление.

> **Источники:**
> - [@iamlukethedev — Hermes merged 55 PRs on October 10 (11 октября 2026)](https://x.com/iamlukethedev/status/2109076128594104448)
> - [Updating & Uninstalling — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/getting-started/updating)
> - [macOS Desktop in-app update deadlocks on pre-a28a5d03a9f installs — issue NousResearch/hermes-agent #135498](https://github.com/NousResearch/hermes-agent/issues/135498)

---

## Hermes Desktop умеет работать с удалённым бэкендом

11 октября witcheer ответил на частый вопрос: можно ли держать Hermes Desktop на ноутбуке, а самого агента — на другой машине? **Можно.** По умолчанию приложение поднимает собственный локальный бэкенд, но его можно направить на бэкенд Hermes на VPS, домашнем сервере или Mini за Tailscale.

Что говорит документация Desktop:
- удалённый бэкенд — это процесс `hermes dashboard` на удалённой машине; приложение его **не запускает** — держать его живым должен systemd-сервис или сам пользователь;
- в приложении: **«Настройки → Шлюзы → Удалённый шлюз»** — указать URL бэкенда (например, `http://хост:9119`), авторизоваться, сохранить и переподключиться;
- два способа авторизации: **OAuth через Nous Portal** (рекомендуется для любого бэкенда, доступного за пределами вашей машины) или пара логин/пароль;
- адрес удалённого шлюза задаётся **для каждого профиля** — каждый профиль может смотреть на свой бэкенд.

> **Источники:**
> - [@witcheer — Hermes Desktop on your laptop, your Hermes Agent on another machine (11 октября 2026)](https://x.com/witcheer/status/2109255720411574606)
> - [Hermes Desktop — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/desktop)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
