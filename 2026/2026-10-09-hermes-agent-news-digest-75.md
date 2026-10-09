# Новости Hermes Agent #75

> **Выпуск:** #75 · **Дата:** 9 октября 2026  
> **Оригинал:** [hermes-agent-news-fr #75](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-10-09-hermes-agent-news-digest-75.md)

---

### Кратко в этом выпуске:
- [Hermes Agent появился в Microsoft Store](#hermes-agent-появился-в-microsoft-store)
- [TinyFish: first-party плагин для поиска и навигации](#tinyfish-first-party-плагин-для-поиска-и-навигации)
- [Wingtips #96: команда /undo для отмены последнего запроса](#wingtips-96-команда-undo-для-отмены-последнего-запроса)
- [88 пулл-реквестов смерджено 8 октября](#88-пулл-реквестов-смерджено-8-октября)
- [Herald OS получил фоторедактор и офисный пакет](#herald-os-получил-фоторедактор-и-офисный-пакет)

---

## Hermes Agent появился в Microsoft Store

Компания Nous Research 8 октября сообщила, что Hermes Agent теперь доступен (и выведен на главную страницу) в Microsoft Store — приложение устанавливается в один клик под Windows. В будущем ожидаются дополнительные обновления для экосистемы Windows. Инструкция от witcheer предельно проста: открыть Microsoft Store, найти Hermes Agent и нажать «Получить».

В документации уточняются детали: отдельный пакет MSIX требует Windows 11 22H2 или новее, уже содержит Python, Node.js и основные зависимости — не нужно ничего клонировать или компилировать при первом запуске. Доступны алиасы командной строки `hermes`, `hermes-agent` и `hermes-acp`. Версия из Microsoft Store опирается на систему обновлений магазина, минуя процесс sideloading'а. В этом режиме команда `hermes update` не использует git для обновления файлов пакета.

> **Источники:**
> - [@NousResearch — Hermes Agent is now live (and featured) in the Microsoft Store (8 октября 2026)](https://x.com/NousResearch/status/2108231536772596193)
> - [@witcheer — Windows friends, this one's for you (8 октября 2026)](https://x.com/witcheer/status/2108232825107263658)
> - [Windows (Native) Guide — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/windows-native)

---

## TinyFish: first-party плагин для поиска и навигации

KeithZhai 9 октября анонсировал TinyFish как официальный (first-party) плагин для Hermes Agent. Он позволяет искать и парсить веб бесплатно, не покидая текущих инструментов Hermes. Если действие требует списания кредитов (например, активный браузинг), агент остановится и запросит подтверждение. Установить плагин можно командой `hermes plugins install tinyfish`. Teknium добавил ссылку на бэкенд браузера TinyFish в каталоге плагинов.

На странице плагина описаны три ключевые возможности:
- **Search и Fetch** — бесплатные функции, работают через стандартные инструменты `web_search` и `web_extract` с провайдером `tinyfish`.
- **Browser** — перенаправляет браузерные инструменты Hermes в удаленные сессии TinyFish (тратит кредиты).
- **Agent** — отдельный инструмент `tinyfish_agent` для достижения конкретной цели на сайте.

Рекомендуемый способ установки — через TinyFish CLI: `tinyfish connect hermes`. Команда скачает плагин из npm, пропишет API-ключ и настроит веб-бэкенды. Авторизация работает через переменную окружения `TINYFISH_API_KEY` (или `MCP_TINYFISH_API_KEY`). Плагин добавляет команду `hermes tinyfish` (setup, status, doctor, credits, browser, usage) и команду для сессий `/tinyfish-status`. Расходы контролируются тремя политиками: `request` (запрос подтверждения по умолчанию), `allow` и `deny`.

> **Источники:**
> - [@KeithZhai — Hermes just added TinyFish as a first-party plugin (9 октября 2026)](https://x.com/KeithZhai/status/2108354564437266697)
> - [@Teknium — Check out the new TinyFish browser backend on the plugins catalog! (9 октября 2026)](https://x.com/Teknium/status/2108382428427612589)
> - [tinyfish — каталог плагинов Hermes Agent](https://hermes-agent.nousresearch.com/docs/plugins/tinyfish)

---

## Wingtips #96: команда /undo для отмены последнего запроса

Новый, 96-й выпуск советов Wingtips от witcheer посвящен команде `/undo`. Она удаляет из контекста последний промпт пользователя и ответ агента. После этого агент готов продолжить работу с предыдущей точки — полезно, если нужно переформулировать задачу. Сценарий: отправили запрос, поняли, что ошиблились, ввели `/undo` и спросили заново.

В справке по slash-командам описана механика: `/undo` удаляет последний обмен сообщениями из истории. Это деструктивная команда, как `/clear`, `/new` или `/exit --delete`. CLI запросит подтверждение (Approve Once, Always Approve или Cancel), если только не использовать флаги `/undo -y` или `/undo now`. Глобально отключить подтверждение деструктивных команд можно в `config.yaml` параметром `approvals.destructive_slash_confirm: false`.

> **Источники:**
> - [@witcheer — Hermes Wingtips #96: take back your last message (9 октября 2026)](https://x.com/witcheer/status/2108518464134484398)
> - [Slash Commands Reference — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/reference/slash-commands)

---

## 88 пулл-реквестов смерджено 8 октября

По подсчетам iamlukethedev, 8 октября в Hermes было смерджено 88 пулл-реквестов. В его сообщении выделены два изменения:
- Инструменты Copilot Responses больше не вызываются дважды с пустыми аргументами `{}`.
- Режим `/yolo` теперь является единым контрактом сессии для CLI, TUI, Desktop и шлюза. Он переживает перезапуски бэкенда и восстановление сессий.

Документация по безопасности напоминает суть `/yolo`: это переключатель, который отключает все запросы на подтверждение опасных команд для текущей сессии (через установку `HERMES_YOLO_MODE`). Однако он не отменяет жесткий черный список — набор катастрофических команд, которые Hermes не выполнит ни при каких условиях.

> **Источники:**
> - [@iamlukethedev — Hermes merged 88 PRs on October 8 (9 октября 2026)](https://x.com/iamlukethedev/status/2108422141679190067)
> - [Security — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/security)

---

## Herald OS получил фоторедактор и офисный пакет

iamlukethedev продолжает развивать Herald OS — свою операционную систему на базе Hermes Agent, исходный код которой был открыт 7 октября. 8 октября он представил Herald Canvas — голосовой фоторедактор. Можно сказать: «Выдели объект и размой фон», «Добавь жирный заголовок с теплым свечением», «Залей выделение». ИИ работает полностью локально на устройстве, без облачных вычислений.

9 октября разработчик анонсировал интеграцию Word, Excel и PowerPoint в Herald OS. Все они управляются через Hermes Agent голосом: «Сделай этот документ более профессиональным» (Hermes перепишет текст), «Посчитай мои ежемесячные расходы» (агент построит формулы), «Преврати этот документ в...» (запуск конвертации).

> **Источники:**
> - [@iamlukethedev — I built a photo editor into Herald OS (8 октября 2026)](https://x.com/iamlukethedev/status/2108131773666168966)
> - [@iamlukethedev — I just built Word, Excel, and PowerPoint into Herald OS (9 октября 2026)](https://x.com/iamlukethedev/status/2108520360052433317)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).