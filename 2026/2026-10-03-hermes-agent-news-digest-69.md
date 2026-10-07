# Новости Hermes Agent #69

> **Выпуск:** #69 · **Дата:** 3 октября 2026  
> **Оригинал:** [hermes-agent-news-fr #69](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-10-03-hermes-agent-news-digest-69.md)

---

### Кратко в этом выпуске:
- [Wingtips #90: автоматизация с помощью /blueprint](#wingtips-90-avtomatizaciya-s-pomoshchyu-blueprint)
- [Масштабный мердж: 175 пулл-реквестов за 2 октября](#masshtabnyj-merdzh-175-pull-rekvestov-za-2-oktyabrya)
- [Неделя улучшений Hermes Desktop](#nedelya-uluchshenij-hermes-desktop)
- [Установка MCP-сервера в один клик из Desktop](#ustanovka-mcp-servera-v-odin-klik-iz-desktop)

---

## Wingtips #90: автоматизация с помощью /blueprint

@witcheer посвятил юбилейный 90-й выпуск заметок Wingtips слэш-команде `/blueprint`. Она позволяет настроить готовую автоматизацию без ручного написания cron-выражений: Hermes последовательно задает уточняющие вопросы и сам планирует задачу. В качестве примера приводится блюпринт **Daily learning drip** из официального каталога, который каждое утро по будням присылает короткий обучающий урок по выбранной теме.

Механика работы команды:
- Полный синтаксис: `/blueprint [name] [slot=value ...]`, также доступен короткий алиас `/bp`.
- Вызов `/blueprint` без параметров открывает каталог готовых шаблонов.
- Указание имени запускает интерактивный пошаговый опрос для заполнения слотов.
- Передача параметров напрямую в строке сразу формирует задачу:
  ```bash
  /blueprint morning-brief time=08:00
  ```
- Шаблоны никогда не создают задачи молча: создание всегда требует явного подтверждения, а сами расписания затем администрируются через команду `/cron`.

С технической точки зрения блюпринт — это обычный скилл, объявляющий блок `metadata.hermes.blueprint` в заголовке своего файла `SKILL.md`.

> **Источники:**
> - [@witcheer — Hermes Wingtips #90: /blueprint (3 октября 2026)](https://x.com/witcheer/status/2106275419557126419)
> - [Slash Commands Reference: /blueprint — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/reference/slash-commands)
> - [Automation Blueprints Catalog — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/reference/automation-blueprints-catalog)

---

## Масштабный мердж: 175 пулл-реквестов за 2 октября

Разработчик @iamlukethedev подвел итоги рекордной продуктивности: всего за один день, 2 октября, в репозитории Hermes было смерджено 175 пулл-реквестов.

Ключевые изменения:
- **Расширение экосистемы:** в каталог добавились десятки новых плагинов — от альтернативных провайдеров памяти до интеграций с Gmail, WhatsApp, Health и Agent Builder.
- **Упрощенная миграция памяти:** перенос данных между провайдерами памяти теперь можно выполнять напрямую через Desktop, шлюз и автоматические скрипты обновлений, не открывая терминал.

> **Источники:**
> - [@iamlukethedev — Hermes merged 175 PRs on October 2 (3 октября 2026)](https://x.com/iamlukethedev/status/2106190123100746023)

---

## Неделя улучшений Hermes Desktop

Студия @tonbistudio опубликовала видеообзор небольших, но важных интерфейсных доработок Hermes Desktop за прошедшую неделю.

Среди новшеств:
- Перетаскивание сессий между проектами методом drag-and-drop.
- Новые темы оформления интерфейса.
- Независимая регулировка размера шрифта чата (масштабируется отдельно от остального интерфейса приложения).
- Панель ревью кода, отображающая текущую ветку и незакоммиченные изменения.
- Закрепление избранных моделей: @witcheer отдельно отметил удобство этой функции — закрепив 2–3 основные модели, между которыми вы переключаетесь, вы всегда держите их в самом верху выпадающего списка.

> **Источники:**
> - [@tonbistudio — The last week had several small improvements to the Hermes Desktop app (2 октября 2026)](https://x.com/tonbistudio/status/2106119254785634400)
> - [@witcheer — a week of Hermes Desktop updates in under 5 min (2 октября 2026)](https://x.com/witcheer/status/2106121038106972394)

---

## Установка MCP-сервера в один клик из Desktop

@witcheer показал быстрый процесс подключения MCP-серверов в Hermes Desktop. 

Весь пайплайн настраивается в несколько кликов:
1. Откройте раздел **Capabilities** и перейдите на вкладку **Connectors**.
2. Найдите нужный инструмент в каталоге (в демо использовался **DeepWiki**, умеющий отвечать на вопросы по содержимому любых публичных GitHub-репозиториев).
3. Нажмите кнопку **Install** — на карточке сервера сразу появится список доступных тулов.

Напомним, что интеграция по протоколу Model Context Protocol (MCP) позволяет Hermes взаимодействовать с внешними серверами инструментов через транспорты `stdio` и `SSE`, поддерживает точечную фильтрацию тулов для каждого сервера, а также регистрацию ресурсов и промптов.

> **Источники:**
> - [@witcheer — how to add an MCP server to Hermes Agent in one click (2 октября 2026)](https://x.com/witcheer/status/2106036133666619806)
> - [Integrations: MCP Servers — документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/integrations/)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
