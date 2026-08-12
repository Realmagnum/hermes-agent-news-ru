# Новости Hermes Agent #6

Первый официальный плагин Hermes Desktop с открытым SDK и доступный DeepSeek V4 Flash.

## Плагин Hermes Desktop: открытый SDK и первый плагин Kanban

Nous Research анонсировал 31 июля первый официальный плагин для Hermes Desktop: Kanban — нативную канбан-доску, доступную прямо из интерфейса desktop.

Главный анонс — не сам Kanban, а SDK, который его делает возможным. Hermes Desktop теперь расширяется как VS Code: система плагинов использует тот же интерфейс вклада, что и ядро Hermes, а не отдельный слой. Плагин может добавлять:

- полноценные страницы и панели
- навигацию в сайдбаре
- действия в палитре команд
- переназначаемые горячие клавиши
- темы
- контролы для Composer
- действия в строке состояния
- живые события Gateway
- собственные backend-эндпоинты

Развёртывание мгновенное: положить ESM-файл в папку plugins, сохранить — и Hermes делает hot-reload за несколько секунд. Никакого клонирования репозитория, пересборки Desktop или изменения приложения. Kanban — первое доказательство того, на что способен SDK.

Brooklyn (@imbabybrooklyn) продемонстрировал активацию: Settings → Plugins → Enable Kanban. Luke (@iamlukethedev) подробно описал работу SDK в своём треде.

> Источники: [@NousResearch, 31 июля 2026](https://x.com/NousResearch/status/2083257053338898730) — [@iamlukethedev, перепост @Teknium, 31 июля 2026](https://x.com/iamlukethedev/status/2083260429426446662) — [@imbabybrooklyn, перепост @Teknium, 31 июля 2026](https://x.com/imbabybrooklyn/status/2083260137301487939)

## DeepSeek V4 Flash доступен в Hermes Agent

Teknium анонсировал 31 июля, что DeepSeek V4 Flash теперь доступен в Hermes Agent через Nous Portal и OpenRouter.

DeepSeek выпустил официальную версию API V4 Flash в открытую бету в тот же день — с сильно улучшенными агентными возможностями по сравнению с preview V4 Pro. Модель нативно поддерживает формат Responses API и полностью адаптирована для Codex.

Первые отзывы показательны: elshayib_ сообщил, что запустил задачу одним промптом в Hermes Agent — выполнена за 32 минуты при общей стоимости 0,07 $. Teknium отмечает, что модель достаточно мощна, чтобы работать на двух NVIDIA Sparks. Brandon (@limchinhan) протестировал её с Hermes на анализе паттерна Codex и называет её очень впечатляющей — в 100 раз лучше preview.

Проблема с доступностью провайдеров в Nous Portal (который не ретранслирует модели, обучающиеся на пользовательских данных) была замечена и решена в тот же день. Теперь доступно больше провайдеров.

> Источники: [@Teknium, 31 июля 2026](https://x.com/Teknium/status/2083232881342902562) — [@Teknium, 1 августа 2026](https://x.com/Teknium/status/2083412067630055644) — [@elshayib_, перепост @Teknium, 1 августа 2026](https://x.com/elshayib_/status/2083243725447147595)

## Источники

- [@NousResearch — Плагин Kanban, 31 июля 2026](https://x.com/NousResearch/status/2083257053338898730)
- [@iamlukethedev, перепост @Teknium — SDK плагинов, 31 июля 2026](https://x.com/iamlukethedev/status/2083260429426446662)
- [@imbabybrooklyn, перепост @Teknium — Активация Kanban, 31 июля 2026](https://x.com/imbabybrooklyn/status/2083260137301487939)
- [@Teknium — DeepSeek V4 Flash, 31 июля 2026](https://x.com/Teknium/status/2083232881342902562)
- [@Teknium — Больше провайдеров, 1 августа 2026](https://x.com/Teknium/status/2083412067630055644)
- [@elshayib_, перепост @Teknium — Задача за 0,07 $, 1 августа 2026](https://x.com/elshayib_/status/2083243725447147595)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
