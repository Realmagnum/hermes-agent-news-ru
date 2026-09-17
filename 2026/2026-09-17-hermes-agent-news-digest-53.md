# Новости Hermes Agent #53

Эта редакция посвящена открытию каталога плагинов Hermes Agent, 75-му выпуску Wingtips об усилии рассуждения вспомогательных задач, сравнению шести платформ для агентов Composio, где Hermes Agent закончила равной во главе на GPT-6 Astra, скрытой модели Union Alpha от OpenRouter, первым клиентом которого является Hermes Agent, и 18 светлым темам от участника сообщества. После v0.21.3 от 14 сентября новой релиза не было.

## Каталог плагинов Hermes Agent

Nous Research объявила 16 сентября об открытии каталога плагинов Hermes Agent: четыре официальных и 96 сообщественных плагинов. Teknium уточнил, что каталог доступен в разделе Capabilities десктопного приложения, где можно искать, изучать и предлагать свои записи; witcheer напомнил, что каждая сообщественная запись проходит проверку Nous Research перед публикацией.

На текущий момент каталог насчитует 105 записей: четыре официальных и 101 сообщественная, распределённых по девяти категориям — Desktop 23, Tools 26, Platforms 15, Memory 10, Web & Browser 10, General 10, Voice 5, Automation 5 и Models 1. Четыре официальных плагина: hermes-memory-wiki — вкладка дашборда с вики тем и журналем на основе истории локальных сессий и панелью аудита постоянных памятей в режиме read-only; hermes-telegram-business — режим секретаря в Telegram Business, где каждый ответ ожидает подтверждения владельца; snyk — подключает MCP-сервер сканера безопасности; touchdesigner — управление сессией TouchDesigner напрямую через MCP.

18 сентября witcheer опубликовал ответы на частые вопросы. Каталог не вводит новую систему: это реестр поверх существующего механизма плагинов, проверяемый список, устанавливаемый по имени `hermes plugins install`.

Путь подачи сообщественной заявки документирован на реальном примере. 17 сентября iamlukethedev открыл pull request #113635 для добавления hud-teach — плагина macOS с перекрёстными кликами, накладывающими пронумерованные метки, стрелки и ярлыки на любое активное окно, от шахмат до музыкального ПО. Запись декларирует репозиторий и тег, 40-символьный pin коммита, лицензию MIT, категорию desktop и tier community, вердикт guards и результат `hermes plugins doctor`; проверка честно указала на открытость списка допуска, а молодое закрепление оставлено на усмотрение мейнтейнеров.

> Источники: [@NousResearch — Hermes Agent now has a Plugin Catalog, 16 сентября 2026](https://x.com/NousResearch/status/2100266421020152114), [@Teknium — Introducing the Hermes Agent plugins catalog!, 16 сентября 2026](https://x.com/Teknium/status/2100267707870613877), [@witcheer — this is the one a lot of you have been asking for: a plugin catalog inside Hermes Agent, 16 сентября 2026](https://x.com/witcheer/status/2100268967939985735), [@witcheer — here are the answers to the questions you asked most under yesterday's plugin catalog announcement, 17 сентября 2026](https://x.com/witcheer/status/2100532064550302181), [@iamlukethedev — Hermes just crossed 100 plugins, 16 сентября 2026](https://x.com/iamlukethedev/status/2100269513304617269), [Plugin Catalog — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/plugins) и [PR #113635 — репозиторий hermes-agent, 17 сентября 2026](https://github.com/NousResearch/hermes-agent/pull/113635)

## Wingtips #75: усилие рассуждения вспомогательных задач

75-й выпуск Wingtips разбирает вызовы модели вне разговора: резюме при компакции длинного обмена, имя сессии, чтение вложенного изображения, решение о необходимости утверждения команды. У вспомогательных задач есть свои настройки, включая усилие рассуждения.

Страница настроек описывает механизм. Каждый блок вспомогательной задачи принимает ключ `reasoning_effort`, задающий уровень рассуждения соответствующих вызовов среди `none`, `minimal`, `low`, `medium`, `high`, `xhigh`, `max` и `ultra`; по умолчанию он пуст и использует значение поставщика. Это перк-задачный аналог глобальной настройки `agent.reasoning_effort`: снижение сжатия до `low` или зрения до `none` уменьшает задержку и расход побочных задач, когда основной модель крупная, не меняя поведение чата. Настройка покрывает задачи клиента: `vision`, `compression`, `title_generation` и `curator`, три формата фильтра (chat completions, Codex Responses, Anthropic Messages), а явный `extra_body.reasoning` на той же задаче сохраняет приоритет.

Исключение задокументировано отдельно. Фоновый обзор, переиспользующий ту же модель, всегда наследует усилие родителя: `auxiliary.background_review.reasoning_effort` игнорируется на этом пути, в том числе когда поставщик и модель родителя явно выбраны, чтобы сохранить байт-в-байт равенство системного промпта, мгновенного снимка разговора и определений инструментов для кэша промпта.

> Источники: [@witcheer — Hermes Wingtips #75: reasoning_effort for side tasks, 17 сентября 2026](https://x.com/witcheer/status/2100460797239415168) и [Configuration, Auxiliary Models et Reasoning Effort — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

## Сравнение шести платформ для агентов по успешности задач

Composio опубликовала 16 сентября сравнение шести платформ для агентов по успешности задач на 29 сложных задачах, все на одной модели GPT-6 Astra. Codex, Hermes Agent и Command Code разделили первое место с 21/29; Claude Code отстала на одну задачу, OpenCode и Pi Agent завершили с 19/29. Разница между лидером и последним местом — около семи процентных пунктов, и лишь три задачи дали разные результаты по платформам.

Ещё один вывод — стоимость сбоя: при ошибке платформы потребляют в 3-5 раз больше токенов. Расчётная стоимость на успешную задачу — от $1.06 у Pi Agent до $2.62 у Claude Code, множитель 2.5, который Composio объясняет только выбором платформы.

Сводная страница даёт детали по модели. На GPT-6 Astra проецируемый pass@3 ставит Codex, Hermes Agent и Command Code на 97.9%, Claude Code — 97.0%, OpenCode и Pi Agent — 95.9%. Та же сетка содержит столбец DeepSeek V4 Pro, остановившийся на 30 задачах, где Command Code ведёт с 18/30, Hermes Agent и Pi Agent следуют с 17/30.

> Источники: [@composio — We ran GPT-6 Astra across 6 agent harnesses, 16 сентября 2026](https://x.com/composio/status/2100308380980068538), [@composio — Here's how all 6 harnesses compared on task success rate, 16 сентября 2026](https://x.com/composio/status/2100308384247664866) и [Compare harnesses — Composio Bench](https://composio.dev/bench/compare/harnesses)

## Union Alpha, модель-невидимка, в числе первых клиентов Hermes Agent

OpenRouter 16 сентября выпустил Union Alpha — скрытую модель от @unionalphaai. Модель мультимодальная, для исследований, кода и агентских процессов, с контекстом 256K, инструментальным вызовом и пограничной производительностью. Бесплатна на период предпросмотра; разработчик третьей стороны остаётся анонимным, приглашения и дополнения могут сохраняться поставщиком, но не используются для обучения.

Страница модели собирает актуальные метрики. Union Alpha вышла 16 сентября 2026, контекст 262K, GPQA Diamond 90.9% при авто-маршрутизации, медианная латентность 10.15 сек и медианный пропуск 22 токена/сек. Та же страница ранжирует приложения по трафику к модели: omp первый с 76 млрд токенов, Hermes Agent второй с 45.1 млрд, затем Claude Code 44.1 млрд.

tonbi посвятил видео сегодняшней загадке: дал модели задачи, затем позволил Hermes Agent сравнить свой процесс с теми, что он тестировал. Первый вывод, опубликованный накануне после теста Three.js на открытие «Властелина колец»: Union Alpha справляется очень хорошо, заметно лучше GLM 5.3 Flash и других недавних открытых моделей, хотя до детализации Fable и Astra не дотягивает. Второй вывод резче: модель близка к Fable по производительности за меньшие деньги, и сравнение с Hermes привело к неожиданному для него заключению.

> Источники: [@OpenRouter — New stealth model: Union Alpha, 16 сентября 2026](https://x.com/OpenRouter/status/2100235351575191751), [Union Alpha — карточка модели OpenRouter](https://openrouter.ai/stealth/union-alpha), [@tonbistudio — Union Alpha benchmarks near Fable at a lower price, but who is it?, 17 сентября 2026](https://x.com/tonbistudio/status/2100443637666422859) и [@tonbistudio — here's a quick comparison on the LOTR opening Three.js movie test, 16 сентября 2026](https://x.com/tonbistudio/status/2100354187662114962)

## Восемнадцать светлых тем для рабочего стола

witcheer 17 сентября пересказал плагин тем от участника mykeura. Он добавляет 18 светлых и тёплых палитр для Hermes Desktop, устанавливается одним плагином, затем выбирается в Settings, раздел Appearance, рядом со встроенными темами.

Репозиторий содержит инструкцию. На Linux и macOS клонируют репозиторий и копируют `plugin.js` в `~/.hermes/desktop-plugins/minimalist-themes/`; Hermes Desktop следит за папкой и загружает плагин за несколько секунд; если не загрузился, в палитре команд есть «Reload desktop plugins». Тема Minimalist сохраняется между профилями; выбор другой темы возвращает обычное поведение по профилю. Репозиторий версии 1.0.1, лицензия MIT, 38 звёзд на момент проверки. Палитры названы Beetroot Juice, Blackberry Juice, Coffee With Milk, Green Tea, Horchata, Mint, Snow Water, Ultramarine и Yuzu.

Два уточнения. Палитры намеренно светлые и тёплые; та же палитра используется, когда рабочий стол в тёмном режиме, а не отдельные тёмные варианты. Плагин затрагивает только рабочий стол, не CLI и не TUI.

> Источники: [@witcheer — a Hermes Agent community member made eighteen light, warm themes for Hermes Desktop, 17 сентября 2026](https://x.com/witcheer/status/2100497828321673722) и [minimalist-themes-for-hermes — репозиторий GitHub mykeura, версия 1.0.1, 16 сентября 2026](https://github.com/mykeura/minimalist-themes-for-hermes)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)