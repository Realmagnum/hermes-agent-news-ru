# Новости Hermes Agent #10

Liquid AI выпускает LFM2.5-2.6B, плагин HermesOffice превращает офисный пакет, Hermes Agent ставится в боковую панель X, а пользователи запускают 3 агентов + 10 субагентов на 16 ГБ RAM.

## Liquid AI публикует LFM2.5-2.6B, обученный на Hermes Agent

4 августа Liquid AI официально выпустил LFM2.5-2.6B — агентную модель на 2,6 млрд параметров, спроектированную для работы полностью на устройстве (телефон, ноутбук, ПК, робот). Данные никогда не покидают терминал, а предельные затраты каждого запуска близки к нулю.

Модель пред-обучена на 34 триллионах токенов, использует гибридную архитектуру LFM2.5, окно контекста 128K токенов и словарь на 128K токенов. Финальный этап пост-обучения прошёл через мультираундовый агентный RL в Hermes Agent, Pi и OpenClaw (тема выпуска #9).

Баллы сопоставимы или выше, чем у моделей до 4 раз крупнее: ToolSandbox 77,83 (впереди Qwen3.5-9B с 76,44), Multi-IF 80,07 (впереди Gemma-4-E4B-it с 77,35), IFStruct 85,49 (впереди Qwen3.5-9B с 78,50).

@0xSero перепостил модель как «лучшую модель для вашего локального железа на 8 ГБ — обучена в Hermes — обучена на нелепом количестве токенов — умеет управлять телефонами, компьютерами и ботами».

> Источники: [Liquid AI, 4 августа 2026](https://x.com/liquidai/status/2084640749862236227) — [@0xSero, перепост @Teknium, 4 августа 2026](https://x.com/0xSero/status/2084754963406975179)

## HermesOffice: открытый офисный пакет под управлением Hermes

Gustavo Caetano опубликовал 4 августа HermesOffice — открытый офисный пакет (Word, Sheets, Slides, PDF), в котором ИИ-ассистент — настоящий агент Hermes, работающий на 100 % на вашей машине. Никакого облачного аккаунта, никаких сторонних прокси. Ассистент, редактирующий ваши документы, — тот же агент, который знает ваши файлы, память и инструменты.

Проект форкнут с движка GenOffice (Apache-2.0) и доступен на GitHub: github.com/criptogus/HermesOffice. Teknium перепостил анонс с комментарием «Looks useful!».

> Источник: [@gustavocaetano, перепост @Teknium, 4 августа 2026](https://x.com/gustavocaetano/status/2084770321962549371)

## Hermes Agent в боковой панели X

Marco Franzon (@mfranz_on), уже известный по Paper Agent (Hermes с ридера электронных книг, выпуск #7), встроил Hermes Agent в боковую панель X (Twitter). «I've added X into a side panel to have the full control over my agents while I am doomscrolling», — объясняет он.

Teknium перепостил пост 5 августа, продолжая серию публикаций самых креативных hardware и desktop конфигураций сообщества.

> Источник: [@mfranz_on, перепост @Teknium, 5 августа 2026](https://x.com/mfranz_on/status/2084586127898427569)

## 3 агента + 10 субагентов на 16 ГБ RAM

Josh Stevenson (@RecursiveIntell) опубликовал 5 августа демонстрацию эффективности: 3 агента Hermes + 10 субагентов + 3 вкладки Chrome работают одновременно на машине с 16 ГБ RAM (14 ГБ доступно), с 5,25 ГБ свободными.

«Раньше я думал, что для этого нужно 64 ГБ RAM», — пишет он. Он предлагает помочь снизить потребление памяти и CPU Hermes, используя свою работу над эффективностью ESP32. Teknium перепостил наблюдение.

> Источник: [@RecursiveIntell, перепост @Teknium, 5 августа 2026](https://x.com/RecursiveIntell/status/2084892532392276364)

## Источники

- [Liquid AI — LFM2.5-2.6B, 4 августа 2026](https://x.com/liquidai/status/2084640749862236227)
- [@0xSero, перепост @Teknium — LFM2.5-2.6B, 4 августа 2026](https://x.com/0xSero/status/2084754963406975179)
- [@gustavocaetano, перепост @Teknium — HermesOffice, 4 августа 2026](https://x.com/gustavocaetano/status/2084770321962549371)
- [@mfranz_on, перепост @Teknium — Hermes в панели X, 5 августа 2026](https://x.com/mfranz_on/status/2084586127898427569)
- [@RecursiveIntell, перепост @Teknium — Эффективность RAM, 5 августа 2026](https://x.com/RecursiveIntell/status/2084892532392276364)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
