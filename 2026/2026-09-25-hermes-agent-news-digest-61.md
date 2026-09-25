# Новости Hermes Agent #61

Этот выпуск посвящён появлению Fast Search — поиска Perplexity, ставшего бесплатным для всех абонентов Nous Portal, — выходу стабильной версии Cua Driver для Omarchy и его синтетическому курсору, бесплатной модели Space Bunny Alpha на Nous Portal, расширению интерфейса Hermes Desktop до девяти языков и Bot Screen, доступному с телефона через Herald.

## Fast Search от Perplexity стал поисковой системой по умолчанию в Hermes Agent

Nous Research объявила 24 сентября, что поиск в Hermes Agent теперь быстрый и бесплатный — Perplexity разработала Fast Search для агентов и предоставила его на всех уровнях подписки Nous Portal. Perplexity в тот же день уточнила, что Fast Search стал поисковой системой по умолчанию в Hermes Agent для абонентов Nous Portal, оптимизированной для агентных задач с задержкой вызова поиска 160 мс в p50 и 230 мс в p95.

Fast Search работает на базе Photon — движка извлечения и ранжирования, написанного Perplexity на Rust для замены предыдущего open-source движка, при участии небольшой команды инженеров с поддержкой кодовых агентов. Быстрое предустановление поискового API сокращает оценочную стоимость модели плюс поиск на задачу на 68 % по шести тестовым стендам при сопоставимом общем качестве, а внутренняя задержка p99 извлечения и ранжирования упала с ~800 мс до 65 мс, при этом потребление вычислительных ресурсов снизилось примерно на 20 %, а объём хранилища на документ вырос в 2,5 раза. Perplexity рекомендует быстрое предустановление для типичных агентных задач, тогда как стандартное остаётся надёжнее для неоднозначных вопросов.

По условиям активации, witcheer кратко описал порядок действий: если поиск уже идёт через подписку Nous Portal, он переключится автоматически при обновлении с первого ответа; иначе `hermes tools` направляет веб-трафик на маршрут Nous, и речь идёт об инструменте `web_search`. Документация Perplexity подтверждает, что Fast Search является движком по умолчанию в Hermes Agent и работает в нём бесплатно.

> Источники: [@NousResearch — Web search in Hermes Agent is now fast and free, 24 сентября 2026](https://x.com/NousResearch/status/2103244070407802905), [@perplexitydevs — Fast Search is now the default search in Hermes Agent for Nous Portal subscribers, 24 сентября 2026](https://x.com/perplexitydevs/status/2103241128216875283), [@witcheer — here is everything you need to know about Fast Search, 25 сентября 2026](https://x.com/witcheer/status/2103355797140918397), [Photon: Building a Retrieval and Ranking Engine From Scratch, Perplexity, 24 сентября 2026](https://www.perplexity.ai/hub/blog/photon) и [Perplexity web search in Hermes, documentation Perplexity](https://docs.perplexity.ai/docs/getting-started/integrations/hermes)

## Cua Driver стабилен для Omarchy с собственным синтетическим курсором

Cua объявила 25 сентября о выходе стабильной версии Cua Driver для Omarchy, представленной как новый фундамент для работы с компьютером, интегрированный в операционную систему с момента её проектирования. В течение месяца команда работала напрямую с dhh, SpencerGBull и vaxryy, чтобы добавить синтетический курсор в композитор Hyprland в Omarchy, что обеспечивает многокурсорный режим на уровне системы. Cua Driver — open source.

Разница с устоявшимися платформами очевидна. На macOS и Windows фоновая работа с компьютером по-прежнему опирается на компромиссы и обходные пути в их оконных серверах, чтобы поддержать несколько синтетических курсоров. В Omarchy композитор располагает двумя курсорами — агентом и человеком — и направляет их в нужные окна: ввод агента остаётся отдельным и не захватывает рабочий стол. Текущая интеграция доступна через канал Edge в Omarchy, а Cua Driver также публикует артефакты Linux ARM64.

witcheer отмечает, что работа с компьютером в Hermes Agent выполняется на Cua Driver, что делает этот переход к нативной реализации особенно значимым для экосистемы.

> Источники: [@trycua — Today we're announcing the stable Cua Driver release for Omarchy, 25 сентября 2026](https://x.com/trycua/status/2103498682532253734), [@witcheer — computer use in Hermes Agent runs on Cua Driver, 25 сентября 2026](https://x.com/witcheer/status/2103501253477040390), [trycua/cua — dépôt GitHub](https://github.com/trycua/cua) и [Omarchy](https://omarchy.org/)

## Space Bunny Alpha — бесплатная стелс-модель на Nous Portal

witcheer 25 сентября первым поделился отзывами о Space Bunny Alpha — стелс-модели, теперь доступной без дополнительной оплаты на Nous Portal: быстрая, с минимальными задержками и коротким рассуждением, что критично для агента, где каждый вызов инструмента ждёт модель. Модель предлагается с контекстом в миллион токенов и поддержкой изображений и видео, загружается в Hermes Agent через `/model stealth/space-bunny-alpha`. yeahfortommy объявил о запуске чуть раньше в тот же день: Space Bunny Alpha бесплатна на Nous Portal и готова к работе в Hermes Agent.

> Источники: [@witcheer — people first feedback about this model, 25 сентября 2026](https://x.com/witcheer/status/2103359553454940411) и [@yeahfortommy — another stealth model launch Space Bunny Alpha is now FREE on Nous Portal, 25 сентября 2026](https://x.com/yeahfortommy/status/2103302058103418906)

## Hermes Desktop стал доступен на девяти языках

witcheer 25 сентября объявил, что Hermes Desktop теперь доступен на девяти языках: английском, упрощённом и традиционном китайском, японском, арабском и русском, к которым недавно добавились французский, немецкий и испанский. Выбор языка выполняется в разделе «Регулировки» → «Внешний вид» → «Язык».

> Источники: [@witcheer — Hermes Desktop now comes in 9 languages, 25 сентября 2026](https://x.com/witcheer/status/2103429693412425915)

## Bot Screen появился на телефоне через Herald

iamlukethedev 24 сентября продемонстрировал Bot Screen на телефоне после добавления его поддержки в Herald. Можно открыть телефон и наблюдать, как бот Hermes использует компьютер в реальном времени, а при необходимости вмешательства вернуть управление с телефона, выполнить шаг самостоятельно и передать управление обратно.

> Источники: [@iamlukethedev — Hermes Bot Screen is now on my phone, 24 сентября 2026](https://x.com/iamlukethedev/status/2103002905959936334)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
