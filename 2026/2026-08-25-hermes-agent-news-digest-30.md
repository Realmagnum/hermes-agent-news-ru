# Новости Hermes Agent #30

Этот выпуск описывает HUD mode десктопа, превращающий агента в плавающий слой поверх приложений, worktree lanes позволяющие двум агентам работать на одном репозитории без помех, и показатель adoption, распространённый Nous Research.

## HUD mode: Hermes становится плавающим слоем

Hermes Desktop имеет документированный HUD mode: комбинация Cmd/Ctrl+Shift+H (или кнопка на тулбаре) отделяет чат в парящий бар без chrome, всегда на переднем плане, поверх активного приложения. Главное окно исчезает, HUD сохраняет текущий разговор и поле ввода. Позиция бара служит контекстом: она указывает Hermes, какое приложение и экран вы смотрите, так что «это», «здесь» или «эта страница» разрешаются в зависимости от того, что находится под ней.

imbabybrooklyn продемонстрировал это, играя в World of Warcraft и одновременно опрашивая агента: overlay позволяет держать глаз на разговоре или задавать вопросы во время партии, и может служить внутриигровым гидом, поскольку агент осознаёт отображаемую игру и может помогать визуально. Nous Research распространил демонстрацию под девизом «промптинг без потери темпа». Сообщество отмечает другие применения агента, который видит и взаимодействует с фоновыми приложениями: чтение X-постов, анализ графиков TradingView или взаимодействие с видео-редактором прямо на экране.

> Источники: [@imbabybrooklyn, HUD mode во время WoW игры, 24 августа 2026](https://x.com/imbabybrooklyn/status/2091725936311910909), [@NousResearch, промптинг без перерыва с HUD mode, 24 августа 2026](https://x.com/NousResearch/status/2091893618801885456) и [Hermes Desktop, раздел HUD mode, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/desktop#hud-mode)

## Два агента, один репозиторий: worktree lanes

Hermes Desktop может создать Git worktree на новой ветке через Cmd/Ctrl+Shift+B, или через «New worktree» в проекте на сайдбаре. Агент тогда работает на параллельной копии репозитория, не касаясь checkout, и worktree появляется как своя собственная lane под проектом; её удаление предлагает удалить соответствующий каталог (ветка сохраняется) или просто скрыть lane.

witcheer иллюстрирует типичный use-case: два агента, один репозиторий, одновременно, каждый со своей веткой и рабочей копией, так что они никогда не трогают файлы друг друга. Каждая lane изолирована и имеет свой собственный /rollback. Каскадно, этот механизм обеспечивает базовый блок оркестровки, где несколько агентов продвигаются параллельно над одним проектом без конфликтов записи.

> Источники: [@witcheer, два агента, один репозиторий, worktree lanes, 24 августа 2026](https://x.com/witcheer/status/2091899279614873716) и [Hermes Desktop, раздел Git review & worktrees, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/desktop#git-review--worktrees)

## Hermes приближается к 2,3 Т токенов в день

@ani_pai, подтверждённый Nous Research, отмечает, что пока open-weight модели компрометируются друг другом, harness'и продолжают набирать скорость быстрее всего: Hermes Agent потреблял бы около 2,3 Т токенов в день, рост более чем на 100% за предыдущий месяц.

> Источник: [@ani_pai, потребление токенов Hermes Agent, 23 августа 2026](https://x.com/ani_pai/status/2091606477362311666)

## Источники

[@imbabybrooklyn — HUD mode во время WoW игры, 24 августа 2026](https://x.com/imbabybrooklyn/status/2091725936311910909)
[@NousResearch — Промптинг без перерыва с HUD mode, 24 августа 2026](https://x.com/NousResearch/status/2091893618801885456)
[Hermes Desktop — Раздел HUD mode, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/desktop#hud-mode)
[@witcheer — Два агента, один репозиторий, worktree lanes, 24 августа 2026](https://x.com/witcheer/status/2091899279614873716)
[Hermes Desktop — Раздел Git review & worktrees, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/desktop#git-review--worktrees)
[@ani_pai — Потребление токенов Hermes Agent, 23 августа 2026](https://x.com/ani_pai/status/2091606477362311666)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
