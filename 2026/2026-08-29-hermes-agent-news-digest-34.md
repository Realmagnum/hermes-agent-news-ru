# Новости Hermes Agent #34

Этот выпуск посвящён серии Hermes Wingtips #57 с `delegate_task`, автономным плагином BackSearch, бесплатной моделью Ling-3.0-flash в Nous Portal, командой `/btw` и приватным порталем поиска на Hermes headless.

## Hermes Wingtips #57: delegation с `delegate_task`

Пятый семьдесят седьмой номер серии от witcheer посвящён `delegate_task`, встроенному инструменту, заменяющему ручную сборку многоагентских команд. Вместо нескольких профилей, общих папок и координатора, который в итоге делает всё сам, `delegate_task` сжимает всю эту схему в одну команду.

Документация Hermes описывает работу: `delegate_task` запускает под-агентов с изолированным контекстом, ограниченным набором инструментов и собственными сессиями терминала. По умолчанию работают три параллельных под-агента, настраиваемый порог. Родительский агент можно предварительно настроить, чтобы делегирование имело доступ к вебу, терминалу или файлам до начала конвертации.

> Источник: [@witcheer, Hermes Wingtips #57, delegate_task, 29 августа 2026](https://x.com/witcheer/status/2093591294740168760)
> Источник: [Delegation & Parallel Work, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/guides/delegation-patterns)

## Плагин Hermes для BackSearch

Teknium опубликовал автономный плагин, приносящий Hermes Agent BackSearch. BackSearch — SaaS, близкий к wayback machine, предназначенный для агентов: каждый запрос содержит дату `as_of`, поиск возвращает только документы, заархивированные на эту дату или ранее, а восстановление выдаёт текст, сохранённый в это время.

Плагин регистрирует два инструмента, `backsearch` и `backfetch`, оба условия наличия ключа `OPENREWARD_API_KEY`, без которого они не появляются в схеме моделей. Архив предварительного просмотра покрывает новостовые домены декабря 2025 — июля 2026. Изначально разработан в PR #71207 Hermes Agent, плагин вынесен в отдельный репозиторий, в соответствии с политикой, требующей, чтобы сторонние интеграции жили в плагинах, а не в сердце.

> Источник: [@Teknium, plugin Hermes pour BackSearch, 29 августа 2026](https://x.com/Teknium/status/2093693127500648752)
> Источник: [hermes-plugin-backsearch, репозиторий GitHub](https://github.com/NousResearch/hermes-plugin-backsearch)

## Ling-3.0-flash бесплатно в Nous Portal

witcheer объявляет о новом бесплатном модели в Nous Portal: Ling-3.0-flash, модель MoE от Ant Group через AntLingAGI. Всего 124 млрд параметров, из которых 5,1 млрд активировано на токен, быстрый формат выполнения и предназначен для workloads агентов: кодирование, поиск, документный поиск и использование инструментов.

> Источник: [@witcheer, nouveau modèle gratuit dans Nous Portal, 28 августа 2026](https://x.com/witcheer/status/2093434928478224885)
> Источник: [@yeahfortommy, Ling-3.0-flash gratuit dans Nous Portal, 28 августа 2026](https://x.com/yeahfortommy/status/2093434483793866931)

## Команда `/btw` для параллельных задач

iamlukethedev выделяет `/btw`, малоизвестную команду Hermes. Когда агент находится посреди задачи и появляется совершенно иной необходимость — прочитать другой файл, извлечь документацию, просмотреть последние коммиты или проверить безопасность, `/btw` позволяет сделать это без прерывания текущей работы или отслеживания другой окна. Teknium повторяет вопрос в своём сообществе, спрашивая, кто использует `/btw`.

> Источник: [@iamlukethedev, Hermes hidden gem, /btw, 29 августа 2026](https://x.com/iamlukethedev/status/2093660966093541409)
> Источник: [@Teknium, do you use /btw, 29 августа 2026](https://x.com/Teknium/status/2093686619081679120)

## Приватный портал поиска, управляемый Hermes headless

witcheer рассказывает о создании, членом сообщества, полностью приватного портала поиска, где движок — Hermes Agent headless. Запрос вводится в локальном веб-интерфейсе, а за сценой выполнение Hermes разворачивает весь проход поиска: поиск, извлечение и crawl через MCP-сервер.

> Источник: [@witcheer, portail de recherche privé propulsé par un Hermes headless, 29 августа 2026](https://x.com/witcheer/status/2093627322700005819)

## Источники

- [@witcheer — Hermes Wingtips #57, delegate_task, 29 августа 2026](https://x.com/witcheer/status/2093591294740168760)
- [Delegation & Parallel Work — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/guides/delegation-patterns)
- [@Teknium — plugin Hermes pour BackSearch, 29 августа 2026](https://x.com/Teknium/status/2093693127500648752)
- [hermes-plugin-backsearch — репозиторий GitHub](https://github.com/NousResearch/hermes-plugin-backsearch)
- [@witcheer — nouveau modèle gratuit dans Nous Portal, 28 августа 2026](https://x.com/witcheer/status/2093434928478224885)
- [@yeahfortommy — Ling-3.0-flash gratuit dans Nous Portal, 28 августа 2026](https://x.com/yeahfortommy/status/2093434483793866931)
- [@iamlukethedev — Hermes hidden gem, /btw, 29 августа 2026](https://x.com/iamlukethedev/status/2093660966093541409)
- [@Teknium — do you use /btw, 29 августа 2026](https://x.com/Teknium/status/2093686619081679120)
- [@witcheer — portail de recherche privé propulsé par un Hermes headless, 29 августа 2026](https://x.com/witcheer/status/2093627322700005819)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)