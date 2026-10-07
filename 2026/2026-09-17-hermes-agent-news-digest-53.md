# Новости Hermes Agent #53

> **Выпуск:** #53 · **Дата:** 17 сентября 2026  
> **Оригинал:** [hermes-agent-news-fr #53](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-09-17-hermes-agent-news-digest-53.md)

---

### Кратко в этом выпуске:
- [Каталог плагинов Hermes Agent](#katalog-plaginov-hermes-agent)
- [Wingtips #75: глубина рассуждений для вспомогательных задач](#wingtips-75-glubina-rassuzhdeniy-dlya-vspomogatelnyh-zadach)
- [Hermes Agent делит первое место в бенчмарке GPT-6 Astra от Composio](#hermes-agent-delit-pervoe-mesto-v-benchmarke-gpt-6-astra-ot-composio)
- [Union Alpha: скрытая модель, где Hermes Agent стал одним из главных клиентов](#union-alpha-skrytaya-model-gde-hermes-agent-stal-odnim-iz-glavnyh-klientov)
- [18 светлых тем оформления для десктопного приложения](#18-svetlyh-tem-oformleniya-dlya-desktopnogo-prilozheniya)

---

## Каталог плагинов Hermes Agent

Команда Nous Research объявила об открытии официального каталога плагинов Hermes Agent. На старте в нем доступно 4 официальных и 96 плагинов от сообщества. По словам @Teknium, витрина доступна прямо в десктопном приложении в разделе **Capabilities**: там можно искать, изучать и отправлять на модерацию собственные расширения. Как отметил @witcheer, каждый плагин сообщества проходит обязательное ревью со стороны Nous Research перед публикацией.

На текущий момент в каталоге представлено уже 105 позиций (4 официальных и 101 от сообщества), разбитых по девяти категориям: **Desktop** (23), **Tools** (26), **Platforms** (15), **Memory** (10), **Web & Browser** (10), **General** (10), **Voice** (5), **Automation** (5) и **Models** (1).

Официальный набор включает четыре расширения:
- `hermes-memory-wiki` — вкладка дашборда со структурированной вики по темам и журналом сессий из локальной истории, а также панелью аудита персистентной памяти в режиме «только чтение»;
- `hermes-telegram-business` — режим секретаря для Telegram Business, в котором каждый сгенерированный агентом черновик ответа ожидает подтверждения владельца;
- `snyk` — прямое подключение MCP-сервера сканера безопасности Snyk;
- `touchdesigner` — управление запущенной сессией TouchDesigner в реальном времени через MCP.

Отвечая на частые вопросы, @witcheer подчеркнул, что каталог не меняет архитектуру расширений: это курируемый реестр поверх существующего механизма плагинов. Любой плагин из каталога устанавливается стандартной командой:

```bash
hermes plugins install <plugin-name>
```

Жизненный цикл добавления плагина наглядно показан на примере пулл-реквеста #113635 от разработчика @iamlukethedev. Он добавил плагин `hud-teach` — инструмент для macOS, позволяющий накладывать поверх любого активного окна сквозные кликабельные аннотации, стрелки и нумерованные маркеры. В спецификации плагина фиксируются репозиторий, тег, точный 40-значный хэш коммита, лицензия MIT, категория `desktop` и уровень `community`, а также отчет встроенного линтера и результат проверки через `hermes plugins doctor`.

> **Источники:**
> - [@NousResearch — Hermes Agent now has a Plugin Catalog (16 сентября 2026)](https://x.com/NousResearch/status/2100266421020152114)
> - [@Teknium — Introducing the Hermes Agent plugins catalog! (16 сентября 2026)](https://x.com/Teknium/status/2100267707870613877)
> - [@witcheer — Plugin catalog inside Hermes Agent (16 сентября 2026)](https://x.com/witcheer/status/2100268967939985735)
> - [@witcheer — Plugin catalog Q&A (17 сентября 2026)](https://x.com/witcheer/status/2100532064550302181)
> - [@iamlukethedev — Hermes just crossed 100 plugins (16 сентября 2026)](https://x.com/iamlukethedev/status/2100269513304617269)
> - [Документация Hermes Agent — Plugin Catalog](https://hermes-agent.nousresearch.com/docs/plugins)
> - [GitHub hermes-agent — PR #113635 (17 сентября 2026)](https://github.com/NousResearch/hermes-agent/pull/113635)

---

## Wingtips #75: глубина рассуждений для вспомогательных задач

Юбилейный 75-й выпуск заметок Wingtips посвящен вызовам моделей вне основного диалога: суммаризации при сжатии контекста, генерации заголовка сессии, распознаванию прикрепленных изображений и проверке прав перед выполнением опасных команд. Теперь для этих фоновых операций можно гибко настраивать вычислительные ресурсы.

В конфигурации каждого блока вспомогательной задачи появился параметр `reasoning_effort`. Он принимает значения `none`, `minimal`, `low`, `medium`, `high`, `xhigh`, `max` и `ultra` (по умолчанию поле пустое и наследует дефолт провайдера). Это точечный аналог глобального параметра `agent.reasoning_effort`:
- Установка сжатия контекста в режим `low` или распознавания изображений в `none` существенно снижает задержку и стоимость сессий, если в качестве основной модели задействована тяжелая reasoning-LLM.
- Поведение основного чата при этом не меняется.
- Настройка поддерживается для задач `vision`, `compression`, `title_generation` и `curator` во всех трех форматах API (Chat Completions, Codex Responses, Anthropic Messages). Прямое указание параметров в `extra_body.reasoning` сохраняет наивысший приоритет.

Важное исключение: если фоновый аудит (`background_review`) использует ту же модель, что и основной агент, параметр `auxiliary.background_review.reasoning_effort` игнорируется. Он принудительно наследует настройки родителя, чтобы сохранить байт-в-байт системный промпт, снапшот диалога и схемы инструментов для корректной работы кэширования промптов (prompt caching).

> **Источники:**
> - [@witcheer — Hermes Wingtips #75: reasoning_effort for side tasks (17 сентября 2026)](https://x.com/witcheer/status/2100460797239415168)
> - [Документация Hermes Agent — Configuration, Auxiliary Models and Reasoning Effort](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

---

## Hermes Agent делит первое место в бенчмарке GPT-6 Astra от Composio

Платформа Composio опубликовала результаты сравнительного тестирования 6 агентных обвязок (harnesses) на 29 комплексных практических задачах. Все агенты запускались на одной и той же модели — **GPT-6 Astra**.

Лидирующую позицию разделили **Codex**, **Hermes Agent** и **Command Code**, успешно решившие 21 задачу из 29 (72,4%). Следом расположились Claude Code (20/29), а также OpenCode и Pi Agent (19/29). Разрыв между лидером и аутсайдером составил около 7 процентных пунктов, при этом лишь на трех задачах результаты агентных сред разошлись.

Ключевые выводы бенчмарка:
- **Расход токенов на ошибках:** при неудачной попытке агентные обвязки расходуют в 3–5 раз больше токенов.
- **Стоимость успешного решения:** средняя цена успешного закрытия задачи варьируется от $1,06 (Pi Agent) до $2,62 (Claude Code). Разницу в 2,5 раза аналитики Composio связывают исключительно с внутренней архитектурой промптов и циклов исполнения конкретного фреймворка.
- **Метрика pass@3:** прогнозируемая успешность с трех попыток на GPT-6 Astra вывела Codex, Hermes Agent и Command Code на уровень 97,9% (у Claude Code — 97,0%, у OpenCode и Pi Agent — 95,9%).
- **Тесты на DeepSeek V4 Pro (30 задач):** лидерство удерживает Command Code (18/30), а Hermes Agent и Pi Agent делят вторую строчку с 17 закрытыми задачами.

> **Источники:**
> - [@composio — We ran GPT-6 Astra across 6 agent harnesses (16 сентября 2026)](https://x.com/composio/status/2100308380980068538)
> - [@composio — Harness task success rate comparison (16 сентября 2026)](https://x.com/composio/status/2100308384247664866)
> - [Composio Bench — Compare harnesses](https://composio.dev/bench/compare/harnesses)

---

## Union Alpha: скрытая модель, где Hermes Agent стал одним из главных клиентов

OpenRouter открыл доступ к Union Alpha — скрытой (stealth) модели от разработчика @unionalphaai. Модель позиционируется как мультимодальное frontier-решение для ресерча, написания кода и агентных пайплайнов с контекстным окном 256K и поддержкой tool calling. На этапе превью доступ предоставляется бесплатно; разработчик сохраняет анонимность, а промпты и ответы могут сохраняться провайдером, но не используются для дообучения.

Текущие метрики модели:
- Контекстное окно: 262K токенов;
- Точность на GPQA Diamond: 90,9% в режиме авто-роутинга;
- Медианная задержка первого токена: 10,15 с;
- Медианная скорость генерации: 22 токена в секунду.

Hermes Agent оказался на втором месте по объему трафика к Union Alpha с показателем **45,1 млрд токенов**, уступая лишь платформе omp (76 млрд) и опережая Claude Code (44,1 млрд).

Технический обозреватель @tonbi протестировал модель, используя Hermes Agent для сравнительного анализа логов рассуждений. В тесте генерации сцены на Three.js по мотивам «Властелина колец» Union Alpha показала результат значительно лучше GLM 5.3 Flash и других свежих открытых весов, хотя и уступила по детализации топовым Astra и Fable. При этом по общей производительности модель вплотную приближается к Fable при заметно меньшей себестоимости.

> **Источники:**
> - [@OpenRouter — New stealth model: Union Alpha (16 сентября 2026)](https://x.com/OpenRouter/status/2100235351575191751)
> - [OpenRouter — Карточка модели Union Alpha](https://openrouter.ai/stealth/union-alpha)
> - [@tonbistudio — Union Alpha benchmarks near Fable at a lower price (17 сентября 2026)](https://x.com/tonbistudio/status/2100443637666422859)
> - [@tonbistudio — Three.js movie test comparison (16 сентября 2026)](https://x.com/tonbistudio/status/2100354187662114962)

---

## 18 светлых тем оформления для десктопного приложения

Разработчик @mykeura представил плагин с пакетом оформления для Hermes Desktop, добавляющий 18 теплых светлых тем. Набор устанавливается единым плагином и становится доступен в меню **Settings → Appearance** наряду со стандартными системными темами.

Для установки под Linux и macOS достаточно скопировать файл `plugin.js` в каталог плагинов:

```bash
mkdir -p ~/.hermes/desktop-plugins/minimalist-themes/
cp plugin.js ~/.hermes/desktop-plugins/minimalist-themes/
```

Десктопный клиент отслеживает изменения директории и подхватывает плагин за несколько секунд (при необходимости плагины можно перезагрузить вручную через командную палитру действием *Reload desktop plugins*).

Особенности пакета:
- Среди доступных палитр: Beetroot Juice, Blackberry Juice, Coffee With Milk, Green Tea, Horchata, Mint, Snow Water, Ultramarine и Yuzu;
- Выбор темы из пакета Minimalist сохраняется между профилями пользователя (переключение на стандартную тему возвращает профиле-зависимое поведение);
- Все темы намеренно выполнены в теплой светлой гамме и не переключаются на темные инверсии при смене системной темы ОС;
- Плагин модифицирует только оформление Hermes Desktop и не затрагивает CLI и TUI интерфейсы.

> **Источники:**
> - [@witcheer — Eighteen light, warm themes for Hermes Desktop (17 сентября 2026)](https://x.com/witcheer/status/2100497828321673722)
> - [GitHub mykeura/minimalist-themes-for-hermes — v1.0.1 (16 сентября 2026)](https://github.com/mykeura/minimalist-themes-for-hermes)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
