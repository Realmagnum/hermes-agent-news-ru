# Новости Hermes Agent #4

Патч-релиз v0.19.1, FLUX 3 Preview в Hermes Agent, официальная интеграция с Buzz и voice activation.

## Hermes Agent v0.19.1 (v2026.7.30): консолидация месяца работы

30 июля Nous Research затегал Hermes Agent v0.19.1 — патч-релиз, который собирает в одну стабильную версию более 1000 pull request'ов, смерженных с момента v0.19.0 (20 июля). Заявленная цель — дать надёжную точку отсчёта downstream-потребителям: Docker-образам, хостинг-развёртываниям, свежим установкам.

Покрытое окно огромно: примерно 2789 коммитов, 4748 изменённых файлов, 442 000 вставок и 392 000 удалений в ветке main. Содержимое в основном составляют исправления и операции восстановления в gateway, голосовой подсистеме, desktop-приложении и установщике, а также платформенная работа: канал Buzz/Nostr, генерация и доставка видео FLUX 3, надёжность медиа в Telegram и регрессии голосового режима.

Полные курируемые заметки к релизу этого окна будут опубликованы вместе с v0.20.0. А пока обновление делается через `hermes update` (или скрипт установки для свежей установки).

> Источник: [Релиз Hermes Agent v0.19.1 (v2026.7.30)](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.7.30)

## FLUX 3 Preview доступен в Hermes Agent

Nous Research анонсировал 30 июля, что FLUX 3 Preview — модель генерации видео от Black Forest Labs — теперь доступна публике, эксклюзивно в Hermes Agent, и бесплатно на всех платных подписках Nous Portal в течение 48 часов.

В поддержку запуска открыт конкурс короткометражек: участники должны создать фильм на FLUX 3, отметив @NousResearch и @bfl_ai, до 1 августа 19:00 PT. Три лучшие работы получают награды: год бесплатной генерации FLUX 3 (20 генераций/день) плюс 2000 $ кредитов Portal и худи за первое место, 1000 $ кредитов за второе, 500 $ за третье.

Предложения: первые 100 зарегистрировавшихся с кодом L1YSMYDB получают бесплатный месяц Nous Portal Plus с полным доступом к генерации видео, а первые 25 апгрейдов с кодом KEQHYO3X — скидку 20 $. Доступ к функции — через `hermes update`.

Лаунч-ивент Black Forest Labs × Nous Research пройдёт в эту пятницу, 31 июля, в Сан-Франциско.

> Источники: [@NousResearch, 30 июля 2026](https://x.com/NousResearch/status/2082911477904654741) — [@NousResearch, ивент Black Forest Labs × Nous, 31 июля 2026](https://x.com/NousResearch/status/2082211638107623921)

## Официальная интеграция с Buzz пришла

В первом еженедельнике упоминался форк сообщества, позволяющий использовать Hermes Agent в Buzz, в ожидании официальной интеграции, анонсированной как «скоро». Теперь она доступна.

Nous Research анонсировал 29 июля, что Hermes Agent «запускает Buzz»: самохостинговое рабочее пространство Block (бывш. Square) объединяет людей и агентов в одних каналах обмена сообщениями и в одном кодовой базе. Предлагаются три режима использования:

- Buzz Desktop автоматически обнаруживает установку Hermes и запускает её локально;
- relay-мост даёт агенту размещённую идентичность в каналах;
- подключение через Hermes Gateway позволяет использовать Buzz как полноценную внешнюю платформу: каналы, личные сообщения, треды, реакции и cron-доставку.

Teknium уточняет, что эти глубокие интеграции доступны заранее через `hermes update`, до следующего релиза. Документация — на hermes-agent.nousresearch.com/docs/integrations/buzz.

Со стороны сообщества tonbistudio опубликовал репозиторий buzz-skills с двумя скиллами: hermes-in-buzz — для настройки подключения удалённой инстанции Hermes к локальному приложению Buzz через gateway, и buzz-media-attachments — для прикрепления видео и медиа в ожидаемом Buzz-формате.

> Источники: [@Teknium, 29 июля 2026](https://x.com/Teknium/status/2082593054805073960) — [@NousResearch, 29 июля 2026](https://x.com/NousResearch/status/2082592619473854815) — [@tonbistudio, 30 июля 2026](https://x.com/tonbistudio/status/2082895822845530113)

## Voice activation: «Hey Hermes»

Hermes Agent теперь поддерживает голосовую активацию. Произнеся wake word, вы запускаете новую сессию, и Hermes слушает команду — без рук, в CLI, TUI или desktop-приложении.

Детекция локальная и отключена по умолчанию: слушать нужно включать через иконку уха в поле ввода в GUI. Система также распознаёт имена профилей, что позволяет активировать голосовую беседу с нужным профилем. Отдельная документация — на hermes-agent.nousresearch.com/docs/user-guide/features/wake-word.

> Источник: [@Teknium, 29 июля 2026](https://x.com/Teknium/status/2082510413162553674)

## Источники

- [Релиз Hermes Agent v0.19.1 (v2026.7.30)](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.7.30)
- [@NousResearch — FLUX 3 Preview, 30 июля 2026](https://x.com/NousResearch/status/2082911477904654741)
- [@NousResearch — Ивент Black Forest Labs × Nous, 31 июля 2026](https://x.com/NousResearch/status/2082211638107623921)
- [@Teknium — Интеграция Buzz, 29 июля 2026](https://x.com/Teknium/status/2082593054805073960)
- [@NousResearch — Hermes Agent now runs Buzz, 29 июля 2026](https://x.com/NousResearch/status/2082592619473854815)
- [@tonbistudio — buzz-skills, 30 июля 2026](https://x.com/tonbistudio/status/2082895822845530113)
- [@Teknium — Voice activation, 29 июля 2026](https://x.com/Teknium/status/2082510413162553674)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
