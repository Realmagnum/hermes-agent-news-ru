# Новости Hermes Agent #42

> **Выпуск:** #42 · **Дата:** 6 сентября 2026  
> **Оригинал:** [hermes-agent-news-fr #42](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-09-06-hermes-agent-news-digest-42.md)

---

### Кратко в этом выпуске:
- [Привязка провайдеров OpenRouter на уровне отдельных моделей](#привязка-провайдеров-openrouter-на-уровне-отдельных-моделей)
- [Бесшовный импорт сессий из Claude Code и Codex в Hermes](#бесшовный-импорт-сессий-из-claude-code-и-codex-в-hermes)
- [Wingtips #64: локальные инструкции через AGENTS.override.md](#wingtips-64-локальные-инструкции-через-agentsoverridemd)
- [Скидка 50% на подписки Nous Portal до 9 сентября](#скидка-50-на-подписки-nous-portal-до-9-сентября)

---

## Привязка провайдеров OpenRouter на уровне отдельных моделей

Разработчик @Teknium объявил, что пользователи OpenRouter теперь могут закреплять конкретных апстрим-провайдеров отдельно для каждой модели в конфигурации Hermes Agent. Раньше правила маршрутизации приходилось задавать глобально, из-за чего переключение моделей с сохранением специфических ограничений по хостам было неудобным.

В документации уже описан обновленный синтаксис:
- В секцию `provider_routing` файла `config.yaml` добавлен блок `models`.
- Для каждого идентификатора модели можно задать персональные параметры: `sort`, `only`, `ignore`, `order`, `require_parameters` и `data_collection`.
- Все неуказанные параметры автоматически наследуют глобальные значения.

**Примеры применения:**
- Запретить реселлерам отдавать модель `openai/gpt-6-astra`, зафиксировав оригинал через `only: ["openai"]`.
- Жестко закрепить `claude-fable-5.1` за `anthropic`.
- Выстроить приоритетный список провайдеров для `kimi-k2.6` с сортировкой по пропускной способности (throughput).

Парсер модели устойчив к неточностям написания и корректно обрабатывает префикс `openrouter/`. Правила маршрутизации динамически следуют за активной моделью: смена через команду `/model`, резервные фолбэки, фоновые cron-задачи и делегированные сабагенты получают строго свои ограничения. 

> **Важно:** эти параметры необходимо прописывать вручную в `config.yaml`. Консольная команда `hermes config set` воспринимает точки в именах моделей как разделители вложенных путей конфига. Маршрутизация актуальна только для OpenRouter — платформа Nous Portal управляет балансировкой самостоятельно и не принимает клиентские предпочтения.

> **Источники:**
> - [@Teknium — You can now pin providers per model in your Hermes Agent config (6 сентября 2026)](https://x.com/Teknium/status/2096569635948900404)
> - [Hermes Agent Docs — Provider Routing](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing)

---

## Бесшовный импорт сессий из Claude Code и Codex в Hermes

Разработчик Tonbi продемонстрировал возможность мгновенно подхватывать диалоги, начатые в Claude Code или Codex CLI, прямо внутри Hermes Agent. Нововведение также отметил @Teknium.

Hermes напрямую читает журналы сессий Claude Code (в каталоге `~/.claude/projects/`) и роллауты Codex CLI (в `~/.codex/sessions/`), работая с файлами исключительно в режиме чтения:

```bash
# Импорт сессии из Claude Code
hermes sessions import --from claude

# Импорт конкретного роллаута из Codex
hermes sessions import --from codex /path/to/rollout

# Импорт с немедленным продолжением диалога
hermes --resume @claude
hermes --resume @codex
```

После импорта создается сессия с понятным названием (например, `Imported from Claude Code: <первое сообщение пользователя>`) и выводится готовая команда вида `hermes --resume <id>`. 

В Hermes переносится вся последовательная переписка пользователя и ассистента, а вызовы инструментов лаконично сворачиваются в плейсхолдеры `[ran tool: ...]`. Системные промпты, промежуточные цепочки рассуждений (reasoning traces) и «сырые» выводы утилит отсекаются, что обеспечивает чистый контекст без избыточного шума.

> **Источники:**
> - [@tonbistudio — Now there's a single command that makes this possible (5 сентября 2026)](https://x.com/tonbistudio/status/2096238168978645260)
> - [@Teknium — Easily pick up your codex or Claude code sessions in Hermes (5 сентября 2026)](https://x.com/Teknium/status/2096239718824550439)
> - [Hermes Agent Docs — Sessions](https://hermes-agent.nousresearch.com/docs/user-guide/sessions)

---

## Wingtips #64: локальные инструкции через AGENTS.override.md

В 64-м выпуске заметок Wingtips автор @witcheer напомнил о механике контекста проекта: при запуске Hermes Agent на каждом шаге считывает `AGENTS.md` — файл, в котором команда фиксирует правила кодовой базы, ограничения на правки и стандартные команды сборки. Но как настроить поведение агента под себя, не загрязняя общий Git-репозиторий?

Решением служит файл `AGENTS.override.md`. За одну сессию агент подгружает только один файл контекста по следующему приоритету (выигрывает первое совпадение):
1. `.hermes.md`
2. `AGENTS.override.md`
3. `AGENTS.md`
4. `CLAUDE.md`
5. `.cursorrules`

Если положить `AGENTS.override.md` рядом с `AGENTS.md`, агент полностью проигнорирует командный файл и применит персональный оверрайд. Добавив этот файл в локальный `.gitignore`, можно гибко экспериментировать с собственными системными инструкциями без риска закоммитить их в проект.

> **Источники:**
> - [@witcheer — Hermes Wingtips #64: AGENTS.override.md (6 сентября 2026)](https://x.com/witcheer/status/2096481734388858931)
> - [Hermes Agent Docs — Context Files](https://hermes-agent.nousresearch.com/docs/user-guide/features/context-files)

---

## Скидка 50% на подписки Nous Portal до 9 сентября

Команда Nous Research объявила о временной скидке 50% на все планы подписки Nous Portal. Акция действует до 9 сентября 2026 года по промокоду `LMH4FMJ2`.

Как отметил @witcheer, это отличный повод протестировать экосистему Hermes Agent в облаке. Единая подписка открывает полный доступ к каталогу моделей, управляемому шлюзу инструментов (hosted tool gateway) и облачным агентам платформы.

> **Источники:**
> - [@NousResearch — Accelerate your labor with Hermes Agent (5 сентября 2026)](https://x.com/NousResearch/status/2096263611811320228)
> - [@witcheer — half price on any Nous Portal subscription (5 сентября 2026)](https://x.com/witcheer/status/2096265225183891468)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
