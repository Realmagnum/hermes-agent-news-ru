# Новости Hermes Agent #16

Двенадцать инструментов браузера заменены одним (Browser Use CLI 3.0), команда `hermes journey` показывает эволюцию агента, Solar Pro 4 бесплатно в Nous Portal, Hermes Pixel Office для визуализации агентов в VS Code и гайд по Telegram-топикам против профилей.

## Автоматизация браузера: один инструмент вместо двенадцати

10 августа Nous Research объявил, что двенадцать браузерных инструментов Hermes заменены одним, управляемым Browser Use CLI 3.0. Вместо схемы на каждый инструмент и вызова на каждый клик агент пишет скрипт для всего потока.

Teknium описал механизм: схема сократилась с восьми дорогих по контексту инструментов до одного, и агент управляет браузером через код вместо отдельных действий. В их внутренних тестах расход токенов на задачу снизился на 48–66 % без потери точности.

Настройка — через `browser.backend: browser-use`. Teknium уточнил, что это работает для всех: локальный браузер, Browserbase, headless и все поддерживаемые бэкенды, кроме локального camofox.

Nous Research перепостил со ссылкой на полную документацию по автоматизации браузера в Hermes.

> Источники: [@NousResearch, 10 августа 2026](https://x.com/NousResearch/status/2086881660658663469) — [@Teknium, 10 августа 2026](https://x.com/Teknium/status/2086881909209252209) — [@Teknium, 10 августа 2026](https://x.com/Teknium/status/2086882821910782270) — [@Teknium, 10 августа 2026](https://x.com/Teknium/status/2086884484818096543)

## `hermes journey`: хронология вашего агента

11 августа witcheer представил новую команду CLI. `hermes journey` рисует в терминале временную шкалу всех навыков и воспоминаний, накопленных агентом, день за днём.

Команда показывает и скиллы, и воспоминания, позволяя увидеть, когда агент чему-то научился и в каком контексте. Witcheer проиллюстрировал на своём агенте: девять месяцев траектории видны одним взглядом.

> Источник: [@witcheer, 11 августа 2026](https://x.com/witcheer/status/2087150634654896516)

## Solar Pro 4 бесплатно в Nous Portal, плюс ещё четыре модели

11 августа Nous Research объявил, что Solar Pro 4 — новая агентная модель Upstage — доступна бесплатно в течение недели, эксклюзивно в Nous Portal. Созданная для многоэтапных задач с длинными документами, она умеет распознавать, когда ей нужно больше информации, а не выдумывать ответ.

Witcheer дополнил картину: подписка Nous Portal также даёт доступ к четырём другим бесплатным моделям: Hy3, Step 3.7 Flash, Laguna S и Laguna XS. В дополнение к скидке 90 % на DeepSeek V4 Flash (продлена) и 20 % на остальной каталог.

> Источники: [@NousResearch, 11 августа 2026](https://x.com/NousResearch/status/2087197502415974634) — [@witcheer, 11 августа 2026](https://x.com/witcheer/status/2087202510314303789)

## Hermes Pixel Office: наблюдайте за агентами в VS Code

11 августа Teknium опубликовал Hermes Pixel Office. Расширение VS Code (ищите на marketplace по «Hermes Pixel Office») и соответствующий плагин Hermes Agent на GitHub позволяют видеть всех своих агентов Hermes за работой в реальном времени — в виде пиксельных персонажей в виртуальном офисе.

Teknium собрал всё за одну сессию, исходный код открыт:

- Расширение VS Code: github.com/teknium1/hermes-pixel-office-vscode
- Плагин Hermes Agent: github.com/teknium1/hermes-pixel-office

Сообщество встретило инициативу с энтузиазмом, несколько пользователей просят прямую интеграцию в Hermes Desktop или Kanban.

> Источники: [@Teknium, 11 августа 2026](https://x.com/Teknium/status/2086975696786829471) — [@Teknium, 11 августа 2026](https://x.com/Teknium/status/2086975901829632363)

## Hermes Wingtips #43: Telegram-топики или второй агент

11 августа witcheer опубликовал сорок третий номер серии Hermes Wingtips. Тема: как организовать несколько проектов при использовании одного Telegram-бота.

Есть два варианта, и они делают разное:

- `/topic`: параллельные беседы в одном DM бота. Агент всегда один и тот же, то, что он узнаёт по одному проекту, питает остальные.
- `hermes profile create <имя>`: второй полноценный агент со своим ботом и своей памятью.

Witcheer рекомендует топики, когда проекты должны питать один мозг, и профили, когда нужны настоящие барьеры между ними. Оба варианта могут работать на одной машине.

> Источник: [@witcheer, 11 августа 2026](https://x.com/witcheer/status/2087071761040896227)

## Источники

- [@NousResearch — Browser Use mode, 10 августа 2026](https://x.com/NousResearch/status/2086881660658663469)
- [@Teknium — Browser Use ~60% tokens, 10 августа 2026](https://x.com/Teknium/status/2086881909209252209)
- [@Teknium — Schema + CLI, 10 августа 2026](https://x.com/Teknium/status/2086882821910782270)
- [@Teknium — Works for everyone, 10 августа 2026](https://x.com/Teknium/status/2086884484818096543)
- [@witcheer — hermes journey, 11 августа 2026](https://x.com/witcheer/status/2087150634654896516)
- [@NousResearch — Solar Pro 4 бесплатно, 11 августа 2026](https://x.com/NousResearch/status/2087197502415974634)
- [@witcheer — Бесплатные модели Portal, 11 августа 2026](https://x.com/witcheer/status/2087202510314303789)
- [@Teknium — Hermes Pixel Office, 11 августа 2026](https://x.com/Teknium/status/2086975696786829471)
- [@Teknium — Репозиторий Pixel Office, 11 августа 2026](https://x.com/Teknium/status/2086975901829632363)
- [@witcheer — Wingtips #43, 11 августа 2026](https://x.com/witcheer/status/2087071761040896227)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
