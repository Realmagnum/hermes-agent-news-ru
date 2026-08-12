# Новости Hermes Agent #13

В Hermes Agent приходят стандартные переносимые плагины, команда /learn превращает целые книги в скиллы, встроенный браузер desktop теперь работает и с удалённым gateway, а пользователь спроектировал целую игру внутри агента.

## Стандартные переносимые плагины: Hermes читает пакеты Agent Plugins v1

7 августа Teknium анонсировал, что Hermes Agent поддерживает стандарт переносимых плагинов, принятый несколькими крупными игроками ИИ-индустрии. Совместимый репозиторий устанавливается через обычный плагинный поток, и Hermes загружает его неймспейсные скиллы в режиме только для чтения, а также его MCP-серверы stdio.

Пакеты устанавливаются отключёнными и активируются только после явного согласия. Перед загрузкой Hermes проверяет манифест, метаданные скиллов, пути, симлинки и MCP-конфигурацию.

> «Agent plugins should not be trapped inside one platform.»
>
> «Portable plugins give you compatibility. Native Hermes plugins give you the full platform, including custom tools, slash commands, hooks, Desktop, Dashboard, and deeper APIs.»

Witcheer дополнил картину 8 августа: скиллы пакета попадают в обычный реестр скиллов, MCP-серверы проходят через существующий MCP-runtime, а нативный манифест всегда имеет приоритет, если он есть в пакете. Для slash-команд, GUI-плагинов, дашборда и скинов нативная API остаётся самой большой поверхностью.

> Источник: [@Teknium, 7 августа 2026](https://x.com/Teknium/status/2085780613005504687) — [@witcheer, 8 августа 2026](https://x.com/witcheer/status/2086108907685003306) — [Документация переносимых плагинов](https://hermes-agent.nousresearch.com/docs/developer-guide/plugins#portable-agent-plugins-v1-packages)

## /learn превращает целые книги в технические скиллы

7 августа Teknium анонсировал, что команда /learn интегрирует работу репозитория book-to-skill. Hermes Agent может поглотить целую книгу — PDF или другую — и извлечь из неё подробные технические скиллы.

> «Integrated the work of book-to-skill repo into our /learn command, and now Hermes Agent can ingest full books to create comprehensive detailed technical skills! Just /learn and point it to any pdf or book you have!»

Исходный репозиторий — github.com/virgiliojr94/book-to-skill. Первый отзыв об использовании пришёл уже 8 августа: @b3pl33 накормил специализированного агента по вязанию крючком двадцатью открытыми книгами в одной папке, а затем позволил агенту Hermes по умолчанию оркестрировать всё — для проекта выкройки сумки.

> Источники: [@Teknium, 7 августа 2026](https://x.com/Teknium/status/2085761587550519420) — [@b3pl33, 8 августа 2026](https://x.com/b3pl33/status/2086041266421424238)

## Встроенный браузер работает и с удалённым gateway

Выпуск #11 сообщал, что встроенный браузер Hermes Desktop остаётся ограничен локальным приложением и не работает через удалённый gateway. Ограничение снято: Brooklyn! (@imbabybrooklyn) подтвердил 7 августа, что браузер теперь работает и с удалённым gateway.

> «So if you were previously having issues with this when using remote gateway (it was only for local), @imbabybrooklyn confirmed it now works with remote gateway too!»

Tonbi перепостил подтверждение в своей демонстрации сценариев браузера, которую в свою очередь перепостил Teknium: пролистать ленту X и попросить сводку, посмотреть видео-туториал и извлечь транскрипт или реализовать концепции, или открыть ссылки из поиска и проанализировать их вместе.

> Источники: [@tonbistudio, перепост @Teknium, 7 августа 2026](https://x.com/tonbistudio/status/2085600678156882389) — [@imbabybrooklyn, 7 августа 2026](https://x.com/imbabybrooklyn/status/2085576851947221338)

## Целая игра, спроектированная внутри Hermes Agent

@Da7_Tech показал 7 августа игру, чьи ассеты сгенерированы с MiniMax M3, а всё остальное — включая полный дизайн игры — создано с DeepSeek Flash, целиком внутри Hermes Agent. Nous Research перепостил пост, подчеркнув, что всё сделано в агенте.

> Источник: [@Da7_Tech, перепост @NousResearch, 7 августа 2026](https://x.com/Da7_Tech/status/2085763279696122149)

## Источники

- [@Teknium — Стандартные переносимые плагины, 7 августа 2026](https://x.com/Teknium/status/2085780613005504687)
- [@witcheer — Детали переносимых плагинов, 8 августа 2026](https://x.com/witcheer/status/2086108907685003306)
- [Документация Hermes Agent — Переносимые плагины](https://hermes-agent.nousresearch.com/docs/developer-guide/plugins#portable-agent-plugins-v1-packages)
- [@Teknium — /learn и книги, 7 августа 2026](https://x.com/Teknium/status/2085761587550519420)
- [@b3pl33 — Отзыв об использовании /learn, 8 августа 2026](https://x.com/b3pl33/status/2086041266421424238)
- [@tonbistudio, перепост @Teknium — Браузер и удалённый gateway, 7 августа 2026](https://x.com/tonbistudio/status/2085600678156882389)
- [@imbabybrooklyn — Works remotely now, 7 августа 2026](https://x.com/imbabybrooklyn/status/2085576851947221338)
- [@Da7_Tech, перепост @NousResearch — Игра, созданная в Hermes, 7 августа 2026](https://x.com/Da7_Tech/status/2085763279696122149)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
