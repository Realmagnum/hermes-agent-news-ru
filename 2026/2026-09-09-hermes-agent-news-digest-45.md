# Новости Hermes Agent #45

В этом выпуске — о Perplexity Search API, теперь доступной в качестве движка веб-инструментов Hermes, о первоклассной интеграции агента в Omarchy — агентном дистрибутиве Linux от DHH, о появлении GPT-Image-2.5 в Hermes через подписки Codex и fal, о совете Wingtips, посвящённом команде общей диагностики, и об импорте диалогов Claude Code и Codex в десктоп Hermes.

## Perplexity Search API как поисковый движок Hermes

NousResearch объявил 9 сентября, что в Hermes Agent теперь можно использовать API Perplexity Search, — объявление сопровождается анонсом Perplexity и сообщением поддержки от сооснователя Perplexity. Серия ночных статусов освещает тот же запуск веб-инструмента для агента.

Документация по интеграции Perplexity уточняет механизм. Hermes может использовать Perplexity как бэкенд своих инструментов `web_search` и `web_extract`: `web_search` возвращает ранжированные результаты Search API, а `web_extract` — релевантные фрагменты каждого URL. Интеграция меняет веб-инструменты, а не модель, управляющую агентом, и настраивается установкой ключа `PERPLEXITY_API_KEY` в `.env` и последующей установкой значений `web.backend`, `web.search_backend` и `web.extract_backend` на `perplexity`. Провайдер включён в Hermes v0.21.1 (тег v2026.9.7) и новее, через запрос на слияние 102055. Статус команды Perplexity указывает, что Search API даёт доступ к индексу из более чем 400 миллиардов URL с результатами в реальном времени и фрагментами, ранжированными по релевантности. Тема продолжает обзор возможных движков для веб-инструментов, где бесключевая карусель уже занимает место, документированное этим ежедневником.

> Источники: [@NousResearch, You can now use the Perplexity Search API in Hermes Agent, 9 сентября 2026](https://x.com/NousResearch/status/2097485341250752979), [@perplexitydevs, Perplexity Search API is now available in Hermes Agent, 9 сентября 2026](https://x.com/perplexitydevs/status/2097483428895801607) и [Perplexity web search in Hermes, документация Perplexity](https://docs.perplexity.ai/docs/getting-started/integrations/hermes)

## Hermes первоклассно интегрирован в Omarchy

NousResearch объявил 8 сентября о первоклассной поддержке Hermes в Omarchy — агентном дистрибутиве Linux на базе Arch, созданном Дэвидом Хайнемайером Ханссоном, автором Ruby on Rails. Десктоп-приложение устанавливается из меню AI, или Hermes настраивается как терминальный агент по умолчанию, и тогда тема Omarchy задаёт цвета десктоп-приложения, TUI и CLI.

witcheer описывает практическую пользу: десктоп-приложение устанавливается из меню AI, как любое приложение Omarchy, а назначение Hermes терминальным агентом по умолчанию заставляет его перенять тему Omarchy в приложении, TUI и CLI — единый набор цветов. Официальный сайт Omarchy описывает дистрибутив как податливую ОС для эпохи агентов, с быстрой установкой, агентами, которые отлаживают проблемы, и тысячами плагинов сообщества. Teknium и witcheer каждый перепечатывают анонс в одном временном окне.

> Источники: [@NousResearch, Hermes now has first-class support in Omarchy, 8 сентября 2026](https://x.com/NousResearch/status/2097403926072987986), [@witcheer, Hermes Agent is now built into Omarchy, 8 сентября 2026](https://x.com/witcheer/status/2097405028076343661) и [Omarchy, официальный сайт](https://omarchy.org/)

## GPT-Image-2.5 появляется в Hermes через Codex и fal

Teknium объявил 8 сентября, что GPT-Image-2.5 теперь доступен в Hermes Agent через подписки Codex и инференс fal, а доступ вскоре появится на Nous Portal. Объявление сопровождает выход ChatGPT Images 2.5 в OpenAI, представленный как более быстрый, более чёткий и более точный.

Коммюнике OpenAI от 8 сентября подтверждает две модели изображений GPT-Image-2.5 Sunburst и GPT-Image-2.5 Flare, доступные в API, с более быстрой генерацией изображений, лучшей точностью для более естественных и узнаваемых изображений и согласованными деталями при множественных правках. Тема продолжает недавние анонсы моделей, уже освещавшиеся этим ежедневником, — интерес здесь в добавлении генерации изображений как возможности, используемой из Hermes.

> Источники: [@Teknium, GPT-Image-2.5 now available in Hermes Agent through Codex subscriptions and @fal, 8 сентября 2026](https://x.com/Teknium/status/2097465800231883091) и [Introducing ChatGPT Images 2.5, OpenAI, 8 сентября 2026](https://openai.com/index/introducing-chatgpt-images-2-5/)

## Wingtips #67: hermes debug share

В шестьдесят седьмом номере Wingtips witcheer представляет `hermes debug share` — команду, которую стоит запускать, когда хочешь задать вопрос о том, что сделал Hermes Agent, в Discord или в issue. Первые вопросы всегда одни и те же: какая версия, какая модель, какой провайдер, что говорят журналы. У Hermes есть единственная команда, которая собирает весь пакет.

Совет повторяет форму серии: показать команду, что она собирает и когда её применять. Она избавляет от переспрашивания одних и тех же базовых вопросов о версии, модели и провайдере перед любой просьбой о помощи и присоединяется к коллекции Wingtips, уже представленной этим ежедневником.

> Источники: [@witcheer, Hermes Wingtips #67: hermes debug share, 9 сентября 2026](https://x.com/witcheer/status/2097565476435992883)

## Импорт диалогов Claude Code и Codex в десктоп

witcheer перечислил 9 сентября пять изменений релиза v0.21.1, собранного в понедельник и доступного уже сегодня. Первое — запрос на слияние 104229 — позволяет переносить свои диалоги Claude Code и Codex в Hermes Desktop: открыть палитру команд, выбрать Import session, просмотреть диалог и продолжить его в десктоп-приложении.

Запрос на слияние, подготовленный teknium1 и озаглавленный «import foreign coding-agent sessions from the sidebar», добавляет запись Import session в боковую панель десктопа. Она перечисляет транскрипты сторонних агентов кодирования, присутствующие на хост-машине, предпросматривает их в режиме только для чтения и продолжает копию под выбранным профилем. Это десктоп-эквивалент `hermes sessions import` и `hermes --resume @claude|@codex`, построенный на том же анализаторе и том же хранении в базе. Тема дополняет освещение релиза v0.21.1, уже сделанное этим ежедневником, указывая на одну из его конкретных возможностей.

> Источники: [@witcheer, Hermes Agent v0.21.1 shipped on Monday as a rollup, 9 сентября 2026](https://x.com/witcheer/status/2097593332515938514) и [feat(desktop): import foreign coding-agent sessions from the sidebar, PR 104229, репозиторий hermes-agent](https://github.com/NousResearch/hermes-agent/pull/104229)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)

## Спонсор

Ежедневник Hermes Agent — это новости о Hermes Agent и Nous Research, а также всей экосистеме, с источниками, резюме и переводом каждый день, для вас. Вам нравится ежедневник? Он вам полезен? Экономит ваше время? Поддержите его, став спонсором: [github.com/sponsors/t1t4nium](https://github.com/sponsors/t1t4nium).
