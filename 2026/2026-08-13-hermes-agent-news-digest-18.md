# Новости Hermes Agent #18

Профили Hermes становятся портируемыми с помощью /export и /import, новый официальный скилл превращает API-вызовы сайта в переиспользуемый клиент, в Hermes Agent появляется Grok 4.6, команда hermes claw migrate импортирует установку OpenClaw, а desktop намекает на стиль inbox и bot mode.

## /export и /import: профили Hermes становятся портируемыми

12 августа Nous Research объявил, что профили Hermes теперь можно переносить и делиться ими. Команда /export сохраняет профиль в один файл, без учётных данных: скиллы, память, персона, cron-задачи, плагины, настройки, темы и раскладки desktop. /import загружает файл — и окружение готово к работе.

Tonbistudio показал применение на видео: экспорт своего агента по умолчанию с ПК на DGX Spark под новым именем, чтобы на новой машине были доступны накопленные скиллы и воспоминания. Witcheer подытожил: агент больше не привязан к машине, на которой он «вырос», и никакие учётные данные не путешествуют вместе с файлом.

> Источники: [@NousResearch, 12 августа 2026](https://x.com/NousResearch/status/2087592096769147377) — [@tonbistudio, 12 августа 2026](https://x.com/tonbistudio/status/2087642578128921068) — [@witcheer, 12 августа 2026](https://x.com/witcheer/status/2087596872378601748)

## Официальный скилл: превращаем сайт в переиспользуемый API

12 августа Teknium представил новый опциональный скилл: har-derived-api-client. Hermes выполняет на сайте одну или несколько операций, наблюдает за происходящими при этом API-вызовами, а затем создаёт статический API, который агент или его скрипты могут использовать в дальнейшем. Установка — командой:

hermes skills install official/web-development/har-derived-api-client

Witcheer прокомментировал на следующий день: лучшие инструменты его агента — те, что он построил сам, потому что они встроены в его контекст. Hermes один раз управляет сайтом, смотрит на API-вызовы под капотом и превращает их в простой HTTP-клиент, который переиспользуют его скрипты. Каждый следующий запуск обходится без браузера: дешёвый запрос вместо полной загрузки страницы.

> Источники: [@Teknium, 12 августа 2026](https://x.com/Teknium/status/2087686461822996905) — [@witcheer, 13 августа 2026](https://x.com/witcheer/status/2087775808374878524)

## Grok 4.6 доступен в Hermes Agent

12 августа Tommy (yeahfortommy) объявил, что Grok 4.6 доступен в Hermes Agent. Модель xAI представлена как значительное улучшение по сравнению с Grok 4.5 — по той же цене. Анонс перепостили Teknium и Nous Research.

> Источники: [@yeahfortommy, 12 августа 2026](https://x.com/yeahfortommy/status/2087596559110185388)

## Hermes Wingtips #45: hermes claw migrate

13 августа witcheer опубликовал сорок пятый номер серии Hermes Wingtips. Тема: импорт существующей установки OpenClaw в Hermes Agent командой hermes claw migrate, которая переносит настройки, воспоминания и скиллы.

Два полезных уточнения: ключи API и токены не переносятся, если явно не передать --migrate-secrets, а перед любым применением создаётся zip-архив для восстановления папки Hermes home — так что перенос можно отменить. Опция --dry-run показывает только план, ничего не меняя.

> Источник: [@witcheer, 13 августа 2026](https://x.com/witcheer/status/2087812081110147134)

## Desktop: стиль inbox и bot mode в разработке

13 августа Brooklyn (imbabybrooklyn) показал на видео стиль inbox для Hermes Agent Desktop. Nous Research и Teknium перепостили демонстрацию.

В тот же день Teknium намекнул, что в desktop-приложении может появиться bot mode, — со скриншотом в подтверждение. Пока ничего не подтверждено.

> Источники: [@imbabybrooklyn, 13 августа 2026](https://x.com/imbabybrooklyn/status/2087737281683620196) — [@Teknium, 13 августа 2026](https://x.com/Teknium/status/2087819329605919196)

## Источники

- [@NousResearch — Портативные профили, 12 августа 2026](https://x.com/NousResearch/status/2087592096769147377)
- [@tonbistudio — Демо export/import, 12 августа 2026](https://x.com/tonbistudio/status/2087642578128921068)
- [@witcheer — Комментарий о портируемости, 12 августа 2026](https://x.com/witcheer/status/2087596872378601748)
- [@Teknium — Скилл har-derived-api-client, 12 августа 2026](https://x.com/Teknium/status/2087686461822996905)
- [@witcheer — Комментарий о скилле API, 13 августа 2026](https://x.com/witcheer/status/2087775808374878524)
- [@yeahfortommy — Grok 4.6 в Hermes, 12 августа 2026](https://x.com/yeahfortommy/status/2087596559110185388)
- [@witcheer — Wingtips #45, 13 августа 2026](https://x.com/witcheer/status/2087812081110147134)
- [@imbabybrooklyn — Стиль inbox для desktop, 13 августа 2026](https://x.com/imbabybrooklyn/status/2087737281683620196)
- [@Teknium — Bot mode в разработке, 13 августа 2026](https://x.com/Teknium/status/2087819329605919196)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
