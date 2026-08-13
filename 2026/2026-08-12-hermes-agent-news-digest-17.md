# Новости Hermes Agent #17

У куратора появилась кнопка отмены, Hermes работает на Raspberry Pi с 2 ГБ RAM, Centaur принимает Hermes как harness первого класса, CopilotKit встраивает Hermes в любое приложение, а скидка 20 % на Nous Portal продлена на две недели.

## Hermes Wingtips #44: у куратора появилась кнопка отмены

12 августа witcheer опубликовал сорок четвёртый выпуск своей серии Hermes Wingtips. Тема: автоматические снимки куратора и команда восстановления.

Куратор — фоновый процесс, который наводит порядок в скиллах, созданных агентом: устаревшие навыки архивируются, пересекающиеся — объединяются. Witcheer напоминает, что перед каждым запуском этот автоматический проход делает снимок всей папки со скиллами. Для навигации по истории достаточно трёх команд:

- `hermes curator rollback --list` показывает все доступные снимки.
- `hermes curator rollback` восстанавливает самый свежий.
- Даже сам откат сначала делает снимок — так что ничего никогда не теряется.

> Источник: [@witcheer, 12 августа 2026](https://x.com/witcheer/status/2087482141118435477)

## Hermes Agent работает на Raspberry Pi 4 с 2 ГБ RAM

12 августа witcheer перепостил достижение сообщества: пользователь запустил Hermes Agent на Raspberry Pi 4 — мини-компьютере размером с кредитную карту ценой около 50 $.

Ключ к успеху: Hermes Agent разделяет работу. Сам агент работает на Pi (цикл агента, память и инструменты), а модель запрашивается удалённо через API. Pi никогда не запускает модель локально — вся тяжёлая нагрузка делегируется внешнему серверу.

В результате — постоянно включённый агент без затрат на VPS, на железе с очень низким энергопотреблением. Witcheer отмечает, что Pi 4 использует 2 ГБ RAM — меньше, чем большинство современных телефонов.

> Источник: [@witcheer, 12 августа 2026](https://x.com/witcheer/status/2087509716746326124)

## Centaur принимает Hermes Agent как harness первого класса

11 августа Georgios Konstantopoulos (gakonst) объявил, что pull request Teknium по интеграции Hermes Agent в Centaur был принят. Centaur — платформа Paradigm для развёртывания агентов кодинга в защищённых песочницах, уже совместимая с Codex, Claude Code, Amp и Nanocodex.

Интеграция сохраняет особенности Hermes:

- Непрерывность сессии: постоянный шлюз на каждую песочницу поддерживает сессию Hermes от хода к ходу, даже после перезапуска песочницы.
- Цикл обучения: ревью памяти и навыков после каждого хода сохраняются в `HERMES_HOME` и накапливаются между песочницами, если смонтирован том.
- Cron-задачи: фоновый процесс выполняет `hermes cron tick`, чтобы задачи, запланированные в беседе, продолжали работать, пока песочница жива.

Активация — флагом `--hermes` в Slack, `harness: hermes` в конфигурации каналов или переменной окружения `CENTAUR_DEFAULT_HARNESS=hermes`. PR прошёл проверку юнит-тестами (10/10), тестом непрерывности сессии на два хода и набором тестов Slack (45/45). 12 августа witcheer перепостил новость, подчеркнув, что агент остаётся развёрнутым на собственной инфраструктуре пользователя.

> Источники: [@gakonst, 11 августа 2026](https://x.com/gakonst/status/2087301140849569851) — [@witcheer, 12 августа 2026](https://x.com/witcheer/status/2087420375214792957) — [PR #1333 paradigmxyz/centaur](https://github.com/paradigmxyz/centaur/pull/1333)

## CopilotKit: встройте Hermes в любое приложение через AG-UI

10 августа CopilotKit объявил об интеграции Hermes Agent в любое приложение через протокол AG-UI. Агента можно встроить в приложения React, React Native, Next.js, Angular, Slack и Microsoft Teams.

Демонстрационное видео показывает агента Hermes, взаимодействующего с интерфейсом приложения-хоста: генерация UI в реальном времени и контроль человека в цикле. Nous Research перепостил анонс.

> Источники: [@CopilotKit, 10 августа 2026](https://x.com/CopilotKit/status/2086846776116686973) — [@NousResearch, 11 августа 2026](https://x.com/NousResearch/status/2087128736210813258)

## Nous Portal: скидка 20 % на все модели продлена на две недели

11 августа Nous Research объявил о продлении скидки 20 % на все модели Nous Portal ещё на две недели. Скидка распространяется на весь каталог, включая самые дорогие frontier-модели, за исключением тех, на которые уже действует большая скидка, или бесплатных.

Teknium отметил, что продлением стоит благодарить Tommy Tibo (yeahfortommy). Среди других действующих акций — бесплатные модели (Solar Pro 4 на неделю, Hy3, Step 3.7 Flash, Laguna S и XS), скидка 90 % на DeepSeek V4 Flash ещё примерно на два дня и 50 % на GPT-5.6 Terra и Luna.

> Источники: [@NousResearch, 11 августа 2026](https://x.com/NousResearch/status/2087250500110450863) — [@NousResearch, 11 августа 2026](https://x.com/NousResearch/status/2087250998423085065) — [@Teknium, 11 августа 2026](https://x.com/Teknium/status/2087253636477080038)

## Источники

- [@witcheer — Wingtips #44, 12 августа 2026](https://x.com/witcheer/status/2087482141118435477)
- [@witcheer — Hermes на Raspberry Pi, 12 августа 2026](https://x.com/witcheer/status/2087509716746326124)
- [@gakonst — Centaur + Hermes, 11 августа 2026](https://x.com/gakonst/status/2087301140849569851)
- [@witcheer — Перепост Centaur, 12 августа 2026](https://x.com/witcheer/status/2087420375214792957)
- [@CopilotKit — Hermes in ANY app, 10 августа 2026](https://x.com/CopilotKit/status/2086846776116686973)
- [@NousResearch — Перепост CopilotKit, 11 августа 2026](https://x.com/NousResearch/status/2087128736210813258)
- [@NousResearch — 20 % off 2 weeks, 11 августа 2026](https://x.com/NousResearch/status/2087250500110450863)
- [@NousResearch — Сводка акций, 11 августа 2026](https://x.com/NousResearch/status/2087250998423085065)
- [@Teknium — Благодарность Tommy, 11 августа 2026](https://x.com/Teknium/status/2087253636477080038)
- [PR #1333 — paradigmxyz/centaur](https://github.com/paradigmxyz/centaur/pull/1333)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
