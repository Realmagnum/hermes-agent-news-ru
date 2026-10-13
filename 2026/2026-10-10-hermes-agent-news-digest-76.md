# Новости Hermes Agent #76

> **Выпуск:** #76 · **Дата:** 10 октября 2026  
> **Оригинал:** [hermes-agent-news-fr #76](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-10-10-hermes-agent-news-digest-76.md)

---

### Кратко в этом выпуске:
- [Step 5 Preview от StepFun — неделю бесплатно в Nous Portal](#step-5-preview-от-stepfun--неделю-бесплатно-в-nous-portal)
- [Wingtips #98: часовой пояс агента](#wingtips-98-часовой-пояс-агента)
- [67 пулл-реквестов смерджено 9 октября](#67-пулл-реквестов-смерджено-9-октября)

---

## Step 5 Preview от StepFun — неделю бесплатно в Nous Portal

9 октября Nous Research объявила, что новая модель StepFun — **Step 5 Preview** — в течение недели доступна в Nous Portal бесплатно.

Характеристики:
- **600 млрд параметров** всего, из них **27 млрд активных** (архитектура mixture-of-experts);
- контекст **1 млн токенов**;
- поддержка **vision**.

Сначала Nous Research присвоила модели в **Hermes Index** 33,89 балла — ровно столько же, сколько у GPT-6 Luna, — но в тот же день опубликовала поправку: итоговый результат — **32,83**. Это чуть ниже GPT-6 Luna (33,89) и GLM 5.3 Flash (34,95).

Сама StepFun позиционирует Step 5 Preview как новую флагманскую модель для агентных задач: топовые результаты в разработке ПО и профессиональной работе со знаниями, особенно сильна в финансах.

> **Источники:**
> - [@NousResearch — Step 5 Preview from @StepFun_ai is free on Nous Portal for the next week (9 октября 2026)](https://x.com/NousResearch/status/2108638389045960958)
> - [@NousResearch — Slight Correction: Step 5 Preview's final score on Hermes Index has been updated to 32.83 (9 октября 2026)](https://x.com/NousResearch/status/2108645938403405896)
> - [@StepFun_ai — Step 5 Preview is our new flagship model for agentic work](https://x.com/StepFun_ai)

---

## Wingtips #98: часовой пояс агента

98-й выпуск Wingtips от witcheer посвящён часовому поясу Hermes Agent. Если агент крутится на сервере в другом поясе, достаточно одной команды:

```bash
hermes config set timezone America/New_York
```

После этого часы агента и cron-расписания живут по вашему времени: задача, назначенная на 8:00, запустится в 8:00 там, где находитесь вы.

Документация по конфигурации уточняет механику:
- ключ `timezone` принимает любой идентификатор часового пояса **IANA**;
- переменная окружения `HERMES_TIMEZONE`, если задана, имеет приоритет над ключом;
- настройка влияет на **cron-планировщик** и на время, которое подставляется в системный промпт;
- на **логи** она не влияет: каждая строка журнала по-прежнему помечается локальным временем машины.

> **Источники:**
> - [@witcheer — Hermes Wingtips #98: set your agent's timezone (10 октября 2026)](https://x.com/witcheer/status/2108882539788050645)
> - [Configuration — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

---

## 67 пулл-реквестов смерджено 9 октября

По подсчётам iamlukethedev, 9 октября в Hermes смерджили 67 пулл-реквестов. В посте выделены два изменения:
- **Spotify уходит из ядра** в официальный плагин каталога — с автоматической миграцией текущих пользователей.
- **Desktop** получает в plugin SDK облачко реплик питомца (`ctx.pet.say`) и избавляется от баннера «This could run on your computer».

### Spotify: из ядра — в плагин

Подробности — на странице Spotify в каталоге:
- официальный плагин поддерживает Nous Research в репозитории `NousResearch/hermes-spotify`;
- **семь инструментов**: воспроизведение, устройства, очередь, поиск, плейлисты, альбомы, библиотека — поверх Spotify Web API с OAuth PKCE;
- миграция прозрачная: любой профиль, где Spotify уже использовался (подключение в `auth.json` или toolset `spotify`), получит плагин автоматически при обновлении или первом запуске.

Единственное заметное изменение — синтаксис команд:

```bash
# было
hermes auth spotify
# стало
hermes spotify login
hermes spotify status
hermes spotify logout
```

### Реплики питомца в Desktop SDK

Документация Desktop SDK описывает `ctx.pet.say`: плагин может показать короткую строку в облачке главного питомца вместо прямых манипуляций с DOM.
- реплика подписана именем плагина;
- исчезает через настраиваемое время — **6 секунд** по умолчанию, максимум **30**;
- не более **трёх активных реплик** на плагин и **десяти вызовов за десять секунд**;
- если питомец скрыт или отключён, через `ctx.pet.visible` плагин может откатиться на собственный бейдж в строке состояния.

> **Источники:**
> - [@iamlukethedev — Hermes merged 67 PRs on October 9 (9 октября 2026)](https://x.com/iamlukethedev/status/2108698207840813506)
> - [Spotify — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/features/spotify)
> - [Desktop Plugin SDK — репозиторий Hermes Agent](https://github.com/NousResearch/hermes-agent/blob/main/website/docs/developer-guide/desktop-plugin-sdk.md)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
