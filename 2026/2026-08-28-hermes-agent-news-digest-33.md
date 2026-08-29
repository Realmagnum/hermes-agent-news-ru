# Новости Hermes Agent #33

Этот выпуск посвящён навигации в связности как сама себя через снимок профиля Chrome, мост, переносящий Бот-модуль Hermes в Discord, и появлению превью модели Hy4 от Tencent в Nous Portal.

## Навигация в связности как сама себя, через снимок профиля Chrome

Nous Research объявил о реальной навигации, позволяющей агенту просматривать веб под вашими учётными данными. Контекст берётся из управляемой копии существующего профиля Chrome, не затрагивая исходный профиль.

witcheer детализирует механизм: Hermes копирует куки, сохранённые учётные данные и предпочтения используемого профиля, затем управляет этой копией своим встроенным Chromium. Снимок пересинхронизируется при каждом новом запуске.

> Источник: [@NousResearch, Hermes Agent can now seamlessly browse as you, 27 августа 2026](https://x.com/NousResearch/status/2093063359587348487)
> Источник: [@witcheer, naviguer connecté en tant que soi, 27 августа 2026](https://x.com/witcheer/status/2093076357261463772)

## Бот-модуль Hermes соединён с Discord

Даниэль Оу построил мост, переносящий Бот-модуль Hermes, ранее доступный только в десктопном приложении, в Discord — для использования с телефона. Его репозиторий `hermes-discord-botrooms` превращает от двух до шести существующих профилей Hermes в групповую комнату в Discord, каждый профиль сохраняя свою модель, память, инструменты, SOUL и идентичность бота. Плагин координирует ответы последовательно, постоянный контекст комнаты, индикаторы набора, вложения, одобрения и восстановление после перезапуска.

Проект в бета-стадии, требует совместимой сборки Hermes и обязательной проверки совместимости. Рекомендуемая установка — через агента, который обнаруживает существующее без изменений, затем запрашивает двойное одобрение перед установкой и перенастройкой. Токены ботов остаются в хранилищах креденциаль существующих профилей.

witcheer отмечает эту работу сообщества, подчёркивая, что профили сохраняют каждая свою модель, память и идентичность в канале.

> Источник: [@imnotchalk, I brought Hermes Bot Mode to Discord, 28 августа 2026](https://x.com/imnotchalk/status/2093180690926068069)
> Источник: [@witcheer, le Bot Mode porté sur Discord, 28 августа 2026](https://x.com/witcheer/status/2093216196376097051)
> Источник: [hermes-discord-botrooms, dépôt GitHub de Daniel Ou](https://github.com/DanielOu1208/hermes-discord-botrooms)

## Превью модели Hy4 от Tencent в Nous Portal

witcheer сообщает, что Hy4 preview — новый открытый модель от Tencent — доступен в Nous Portal. Цена: $0,67 за миллион входных токенов и $2,00 за выходные, со скидкой 20% при запуске.

По репозиторию Tencent, Hy4 preview — флагманская модель со смесью экспертов: 770 млрд параметров всего, из них 49 млрд активировано на токен, для контекстного окна в 1 млн токенов. Архитектура, вдохновлённая DeepSeek и GLM, использует разреженное внимание (Gated DeepSeek Sparse Attention) с кэшем индексов и интегрирует нативный слой спекулятивного декодинга.

> Источник: [@witcheer, Hy4 preview en ligne dans Nous Portal, 28 августа 2026](https://x.com/witcheer/status/2093248472312881661)
> Источник: [@TencentHunyuan, Hy4 preview is here, 28 августа 2026](https://x.com/TencentHunyuan/status/2093222928720761009)
> Источник: [Hy4-preview, dépôt GitHub de Tencent-Hunyuan](https://github.com/Tencent-Hunyuan/Hy4-preview)

## Источники

- [@NousResearch — Hermes Agent can now seamlessly browse as you, 27 августа 2026](https://x.com/NousResearch/status/2093063359587348487)
- [@witcheer — naviguer connecté en tant que soi, 27 августа 2026](https://x.com/witcheer/status/2093076357261463772)
- [@imnotchalk — I brought Hermes Bot Mode to Discord, 28 августа 2026](https://x.com/imnotchalk/status/2093180690926068069)
- [@witcheer — le Bot Mode porté sur Discord, 28 августа 2026](https://x.com/witcheer/status/2093216196376097051)
- [hermes-discord-botrooms — dépôt GitHub de Daniel Ou](https://github.com/DanielOu1208/hermes-discord-botrooms)
- [@witcheer — Hy4 preview en ligne dans Nous Portal, 28 августа 2026](https://x.com/witcheer/status/2093248472312881661)
- [@TencentHunyuan — Hy4 preview is here, 28 августа 2026](https://x.com/TencentHunyuan/status/2093222928720761009)
- [Hy4-preview — dépôt GitHub de Tencent-Hunyuan](https://github.com/Tencent-Hunyuan/Hy4-preview)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)