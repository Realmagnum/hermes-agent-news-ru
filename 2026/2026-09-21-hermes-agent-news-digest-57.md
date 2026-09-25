# Новости Hermes Agent #57

Эта редакция посвящена статье Nous Research о чистке репозитория Hermes Agent 1 393 агентами, 74-му выпуску Wingtips о выборе хоста, обслуживающего модель на OpenRouter, одному композеру для нескольких сессий в рабочем столе, странице со всеми промптами Autopilot и семейному голосовому хабу на холодильнику. После v0.21.3 от 14 сентября новой релиза не было.

## Каталог плагинов доступен

> Источники: [@tonbistudio — Hermes Agent now has a built-in Plugins Catalog!, 21 сентября 2026](https://x.com/tonbistudio/status/2101912099689840645), [@Teknium — Just FYI it's all live now, 21 сентября 2026](https://x.com/Teknium/status/2101932350821257289), [@witcheer — the plugin catalog pages are live, 21 сентября 2026](https://x.com/witcheer/status/2101937414465864080), [@witcheer — how the catalog works, in four lines, 21 сентября 2026](https://x.com/witcheer/status/2101918193568641162) и [Plugin Catalog — documentation Hermes Agent, 21 сентября 2026](https://hermes-agent.nousresearch.com/docs/plugins)

## Wingtips #79: agent.disabled_toolsets

74-й выпуск Wingtips посвящён `agent.disabled_toolsets`. Hermes Agent выбирает инструменты по платформам: CLI, Telegram, Discord и другие хранят каждый свой собственный список игр инструментов, настраивается в `hermes tools`. Этот ключ — список, размещённый над всеми остальными: игра инструментов, названная здесь, удаляется везде.

> Источники: [@witcheer — Hermes Wingtips #79: agent.disabled_toolsets, 21 сентября 2026](https://x.com/witcheer/status/2100156876209139106) и [Configuration — Global Toolset Disable, documentation Hermes Agent, 21 сентября 2026](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

## Компактация для локальных моделей с малым окном

21 сентября witcheer объявил о смене компактации, объединённой в тот же день, предназначенной для тех, кто использует Hermes Agent на локальной модели с окном 8 000–32 000 токенов. Когда контекст заполняется, Hermes резюмирует старую часть разговора и сохраняет новую часть слово в слово. Этот защищённый сегмент измерялся в токенах.

> Источники: [@witcheer — a compaction change merged today for local model 8k-32k windows, 21 сентября 2026](https://x.com/witcheer/status/2101948838407863)

## Рекордный день слияний и процесс-провайдеры как плагины

21 сентября iamlukethedev сообщил, что Hermes объединил 419 запросов на слияние за один день и выделил два изменения для внимания. Внешние процесс-провайдеры (process providers) теперь поставляются как самостоятельные плагины, так что поставщики OAuth и процесс-обработчики вне дерева появляются во всех селекторах моделей. В режиме бота и на рабочем столе GPT Live и голосовая синтезия следуют конфигурации бота.

> Источники: [@iamlukethedev — Hermes merged 419 PRs today, 21 сентября 2026](https://x.com/iamlukethedev/status/2101911386721009758)

## GLM-5.3 FlashX доступен в Hermes Agent

20 сентября Teknium объявил, что GLM-5.3 FlashX теперь доступен в Hermes Agent через Nous Portal и OpenRouter. Объявление сопровождается ссылкой на каталог моделей, который расширяет выбор для пользователей на этих двух каналах.

> Источники: [@Teknium — GLM-5.3 FlashX is now available in Hermes Agent through Nous Portal and OpenRouter, 20 сентября 2026](https://x.com/Teknium/status/2101773802418139526)

## Подключение к веб-сайтам настраивается за одну фразу

21 сентября witcheer кратко описал пять непосредственных применений двух последних тегов Hermes Agent, выпущенных на прошлой неделе, v0.21.2 и v0.21.3, первый из которых — подключение к веб-сайтам. Сказав «Подключи меня к GitHub», агент заполняет пароль из 1Password, Bitwarden или встроенного зашифрованного хранилища Hermes. Возможность основана на запросах на слияние #106480 и #107585.

> Источники: [@witcheer — two Hermes Agent tags went out last week, v0.21.2 and v0.21.3, 21 сентября 2026](https://x.com/witcheer/status/2101982106486287787)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
