# Новости Hermes Agent #45

> **Выпуск:** #45 · **Дата:** 9 сентября 2026  
> **Оригинал:** [hermes-agent-news-fr #45](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-09-09-hermes-agent-news-digest-45.md)

---

### Кратко в этом выпуске:
- [Perplexity Search API как поисковый движок Hermes](#perplexity-search-api-kak-poiskovyy-dvizhok-hermes)
- [Нативная поддержка Hermes в агентном дистрибутиве Omarchy](#nativnaya-podderzhka-hermes-v-agentnom-distributive-omarchy)
- [GPT-Image-2.5 в Hermes Agent через подписки Codex и fal](#gpt-image-25-v-hermes-agent-cherez-podpiski-codex-i-fal)
- [Wingtips #67: команда hermes debug share](#wingtips-67-komanda-hermes-debug-share)
- [Импорт сессий Claude Code и Codex в десктопный клиент Hermes](#import-sessiy-claude-code-i-codex-v-desktopnyy-klient-hermes)

---

## Perplexity Search API как поисковый движок Hermes

Команда NousResearch объявила об интеграции Perplexity Search API в Hermes Agent. Релиз синхронно поддержали разработчики Perplexity и сооснователь компании, представив новый веб-инструментарий для агента.

Согласно официальной документации интеграции, Hermes теперь может использовать Perplexity в качестве бэкенда для инструментов веб-доступа `web_search` и `web_extract`:
- `web_search` возвращает ранжированные поисковые результаты через Search API;
- `web_extract` извлекает наиболее релевантные фрагменты контента по целевым URL.

Интеграция расширяет возможности веб-тулов агента, не затрагивая при этом модель, которая им управляет. Для переключения поискового провайдера достаточно настроить переменные окружения:

- Задать ключ `PERPLEXITY_API_KEY` в файле `.env`.
- Установить параметры `web.backend`, `web.search_backend` и `web.extract_backend` со значением `perplexity`.

Поддержка провайдера включена в Hermes v0.21.1 (тег `v2026.9.7`) в рамках пулл-реквеста #102055. По данным команды Perplexity, Search API открывает агенту доступ к индексу из более чем 400 миллиардов URL в реальном времени, возвращая очищенные и отранжированные по релевантности выжимки.

> **Источники:**
> - [@NousResearch — You can now use the Perplexity Search API in Hermes Agent (9 сентября 2026)](https://x.com/NousResearch/status/2097485341250752979)
> - [@perplexitydevs — Perplexity Search API is now available in Hermes Agent (9 сентября 2026)](https://x.com/perplexitydevs/status/2097483428895801607)
> - [Perplexity Documentation — Perplexity web search in Hermes](https://docs.perplexity.ai/docs/getting-started/integrations/hermes)

---

## Нативная поддержка Hermes в агентном дистрибутиве Omarchy

NousResearch объявила о first-class интеграции Hermes в **Omarchy** — специализированном агентном дистрибутиве на базе Arch Linux, разрабатываемом Дэвидом Хейнемейером Ханссоном (DHH, создатель Ruby on Rails).

Разработчик @witcheer уточнил технические детали интеграции:
- Десктопное приложение Hermes можно установить в один клик напрямую из системного меню **AI**, как любую штатную программу Omarchy.
- При назначении Hermes терминальным агентом по умолчанию оформление системы автоматически адаптирует цветовую палитру Omarchy для десктопного клиента, TUI и CLI.

Официальный сайт Omarchy позиционирует дистрибутив как «гибкую ОС для эпохи агентов» с быстрой установкой, агентами для отладки системных неполадок и обширным каталогом плагинов от сообщества. Анонс также подтвердили @Teknium и @witcheer.

> **Источники:**
> - [@NousResearch — Hermes now has first-class support in Omarchy (8 сентября 2026)](https://x.com/NousResearch/status/2097403926072987986)
> - [@witcheer — Hermes Agent is now built into Omarchy (8 сентября 2026)](https://x.com/witcheer/status/2097405028076343661)
> - [Omarchy — Официальный сайт проекта](https://omarchy.org/)

---

## GPT-Image-2.5 в Hermes Agent через подписки Codex и fal

@Teknium сообщил, что модель генерации изображений **GPT-Image-2.5** стала доступна в Hermes Agent через подписки Codex и инференс-провайдера fal. В ближайшее время доступ также появится на Nous Portal.

Релиз приурочен к выходу обновления ChatGPT Images 2.5 от OpenAI:
- В API добавлены две вариации модели: **GPT-Image-2.5 Sunburst** и **GPT-Image-2.5 Flare**.
- Новое поколение отличается ускоренной генерацией, повышенной детализацией и точным следованием промптам.
- Обеспечивается высокая консистентность деталей и персонажей при итеративном редактировании.

Интеграция расширяет мультимодальные сценарии Hermes, позволяя агенту автономно создавать и редактировать графический контент в рамках рабочих задач.

> **Источники:**
> - [@Teknium — GPT-Image-2.5 now available in Hermes Agent through Codex subscriptions and @fal (8 сентября 2026)](https://x.com/Teknium/status/2097465800231883091)
> - [OpenAI — Introducing ChatGPT Images 2.5 (8 сентября 2026)](https://openai.com/index/introducing-chatgpt-images-2-5/)

---

## Wingtips #67: команда hermes debug share

В 67-м выпуске серии советов Wingtips @witcheer обратил внимание на утилиту `hermes debug share` — стандартный инструмент первичного сбора контекста при возникновении неполадок.

При оформлении issue или обращении за помощью в Discord разработчикам всегда требуются базовые вводные: версия Hermes, используемая модель, провайдер и логи выполнения. Чтобы не собирать эти параметры вручную, достаточно выполнить команду:

```bash
hermes debug share
```

Команда автоматически формирует диагностический пакет со всеми метаданными среды, исключая лишние уточняющие вопросы и ускоряя процесс траблшутинга.

> **Источники:**
> - [@witcheer — Hermes Wingtips #67 : hermes debug share (9 сентября 2026)](https://x.com/witcheer/status/2097565476435992883)

---

## Импорт сессий Claude Code и Codex в десктопный клиент Hermes

В накопительном релизе Hermes v0.21.1 появился инструмент миграции сессий: пулл-реквест #104229 от @teknium1 добавляет возможность импорта диалогов из Claude Code и Codex прямо в Hermes Desktop.

**Особенности работы с сессиями:**
- В командную палитру и сайдбар десктопного приложения добавлен пункт **Import session**.
- Hermes находит сохраненные транскрипты сторонних код-агентов на хосте и открывает их список.
- Выбранную сессию можно предварительно просмотреть в режиме «только чтение», а затем продолжить диалог, создав копию под выбранным профилем Hermes.

Нововведение стало графическим аналогом CLI-команд `hermes sessions import` и `hermes --resume @claude|@codex` — обе реализации используют один и тот же парсер и базу данных на уровне хоста.

> **Источники:**
> - [@witcheer — Hermes Agent v0.21.1 shipped on Monday as a rollup (9 сентября 2026)](https://x.com/witcheer/status/2097593332515938514)
> - [GitHub PR 104229 — feat(desktop): import foreign coding-agent sessions from the sidebar](https://github.com/NousResearch/hermes-agent/pull/104229)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
