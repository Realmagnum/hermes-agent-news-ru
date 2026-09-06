# Новости Hermes Agent #42

Этот выпуск рассказывает о возможности закреплять поставщиков OpenRouter для каждой модели отдельно, о возобновлении в одно действие сессий Claude Code и Codex в Hermes, о шестьдесят четвёртом номере Wingtips, посвящённом личному файлу проекта AGENTS.override.md, а также о скидке вполовину на подписки Nous Portal до 9 сентября.

## Выбор поставщика OpenRouter для каждой модели отдельно

Teknium объявил 6 сентября, что пользователи OpenRouter могут теперь закреплять поставщиков по каждой модели в конфигурации Hermes Agent. Раньше приходилось фиксировать поставщика или набор поставщиков в глобальном масштабе, что усложняло смену модели при сохранении требований к поставщику.

Документация подробно описывает новый ключ. Секция `provider_routing` файла `config.yaml` принимает запись `models`, каждая подзапись которой, названная по идентификатору модели, повторяет настройки `sort`, `only`, `ignore`, `order`, `require_parameters` и `data_collection`, применяя их только к этой модели; всё, что не задано на уровне модели, откатывается к общим значениям. Документированный пример запрещает посреднику обслуживать `openai/gpt-6-astra` через `only: ["openai"]`, закрепляет `claude-fable-5.1` за `anthropic` или задаёт для `kimi-k2.6` порядок поставщиков с ранжированием по пропускной способности. Сопоставление допускает отклонения в написании и префикс `openrouter/`, а закрепление следует текущей модели: смена через `/model`, включение фолбэка, задачи cron и делегированные субагенты на другой модели получают каждая свои ограничения. Эти ключи настраиваются прямым редактированием `config.yaml`, поскольку идентификаторы моделей содержат точки, которые `hermes config set` читает как разделители пути. Маршрутизация по поставщику применима только к OpenRouter: Nous Portal решает маршрутизацию на своей стороне и не принимает предпочтения, пришедшего от вызывающего.

> Источники: [@Teknium, You can now pin providers per model in your Hermes Agent config, 6 сентября 2026](https://x.com/Teknium/status/2096569635948900404) и [Provider Routing, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/features/provider-routing)

## Продолжение сессии Claude Code или Codex в Hermes

Tonbi опубликовал 5 сентября видео, показывающее команду, которая позволяет продолжить в Hermes Agent разговор, начатый в Claude Code или Codex, и Teknium привлёк к нему внимание в тот же день.

Hermes читает журналы сессий Claude Code в `~/.claude/projects/` и развёртывания Codex CLI в `~/.codex/sessions/`, никогда не изменяя эти сторонние файлы. `hermes sessions import --from claude` импортирует разговор, а `--from codex`, за которым следует путь, указывает на конкретное развёртывание. `hermes --resume @claude` и `hermes --resume @codex` выполняют импорт, а затем напрямую открывают продолженный разговор. Импорт создаёт сессию с заголовком `Imported from Claude Code: <premier message utilisateur>`, или эквивалент для Codex, и выводит готовую к вставке команду `hermes --resume <id>`. Переносится упорядоченный разговор между пользователем и ассистентом, при этом активность инструментов сжимается в короткие заметки `[ran tool: ...]` в ходах ассистента; системные промпты, внедрённый контекст, трассы рассуждений и необработанные выводы инструментов остаются позади — ради чистого транскрипта, а не побайтового перечитывания.

> Источники: [@tonbistudio, Now there's a single command that makes this possible, 5 сентября 2026](https://x.com/tonbistudio/status/2096238168978645260), [@Teknium, Easily pick up your codex or Claude code sessions in Hermes, 5 сентября 2026](https://x.com/Teknium/status/2096239718824550439) и [Sessions, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/sessions)

## Wingtips #64: AGENTS.override.md, ваша личная надстройка проекта

В шестьдесят четвёртом номере Wingtips witcheer напоминает, что когда вы открываете Hermes Agent в проекте, он на каждом ходу читает `AGENTS.md` этого проекта — файл, где команда хранит свои правила: организацию кода, зоны, которых нельзя касаться, команды для запуска. Заданный вопрос — как применять собственные инструкции, не трогая файл, отслеживаемый репозиторием.

Документация отвечает с помощью `AGENTS.override.md`. За сессию загружается только один тип контекста проекта, побеждает первое совпадение: `.hermes.md`, затем `AGENTS.override.md`, затем `AGENTS.md`, затем `CLAUDE.md` и `.cursorrules`. Когда `AGENTS.override.md` находится рядом с `AGENTS.md`, надстройка загружается вместо отслеживаемого файла. Так вы храните личный файл, обычно игнорируемый git, с инструкциями, отличными от репозиторных, не редактируя отслеживаемый `AGENTS.md`.

> Источники: [@witcheer, Hermes Wingtips #64 : AGENTS.override.md, 6 сентября 2026](https://x.com/witcheer/status/2096481734388858931) и [Context Files, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/features/context-files)

## Скидка 50 % на подписки Nous Portal до 9 сентября

Nous Research объявила 5 сентября о снижении на 50 % на любую подписку Nous Portal до 9 сентября по коду `LMH4FMJ2`. witcheer, который видит в этом предложении знак, которого многие ждали, чтобы попробовать Hermes Agent, напоминает, что одна подписка портала открывает доступ к каталогу моделей, размещённому шлюзу инструментов и облачным агентам Nous Portal.

> Источники: [@NousResearch, Accelerate your labor with Hermes Agent, 5 сентября 2026](https://x.com/NousResearch/status/2096263611811320228) и [@witcheer, half price on any Nous Portal subscription, 5 сентября 2026](https://x.com/witcheer/status/2096265225183891468)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)

## Спонсор

Ежедневные новости Hermes Agent — это новости о Hermes Agent и Nous Research, а также всей экосистемы, с источниками, резюме и переводом каждый день, для вас. Вам нравится ежедневник? Он вам полезен? Экономит ваше время? Поддержите его, став спонсором: [github.com/sponsors/t1t4nium](https://github.com/sponsors/t1t4nium).
