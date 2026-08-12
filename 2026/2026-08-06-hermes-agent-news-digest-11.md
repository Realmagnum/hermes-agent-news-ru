# Новости Hermes Agent #11

Встроенный браузер позволяет Hermes Desktop видеть и контролировать веб вместе с пользователем, AnyDoc конвертирует все форматы документов в Markdown локально, Actual Inc. интегрирует Hermes нативно, а официальная документация получает структурное обновление.

## Встроенный браузер в Hermes Desktop, управляемый агентом

5 августа Brooklyn! (@imbabybrooklyn) анонсировал, что Hermes Desktop теперь оснащён встроенным браузером, которым агент может управлять и в котором может видеть содержимое:

> «Hermes Desktop now has an in-app browser that hermes can control and is aware of.»

Tonbi (@tonbistudio) опубликовал 6 августа демонстрационное видео и подробно описал возможности:

> «This new Hermes Desktop browser isn't just an extra window with a browser bolted on, the agent can operate, see, and analyze what it sees along with you.»

Среди названных сценариев: пролистать ленту X и попросить сводку горячих тем, посмотреть YouTube-туториал и попросить агента извлечь транскрипт или реализовать концепции, или открывать ссылки из поиска в браузере и анализировать их вместе.

Teknium перепостил оба анонса. Brooklyn! подтвердил, что браузер сохраняет состояние входа (persistent login state). Несколько пользователей отметили, что функция пока ограничена локальным desktop-приложением и не работает через удалённый gateway.

> Источники: [@imbabybrooklyn, 5 августа 2026](https://x.com/imbabybrooklyn/status/2085019745221554678) — [@tonbistudio, 6 августа 2026](https://x.com/tonbistudio/status/2085153882708078596)

## AnyDoc: Hermes Agent читает все форматы документов

6 августа Teknium анонсировал, что Hermes Agent теперь может читать любой формат файлов: PDF, Word, PowerPoint, Excel, OpenDocument, RTF, EPUB — все автоматически конвертируются в чистый Markdown в момент чтения, полностью локально. Ноль конфигурации, установка автоматическая.

Функция основана на AnyDoc — открытой библиотеке на Rust, опубликованной Firecrawl (@firecrawl). Nicolas Camara (@nickscamara_) рассказал о производительности 4 августа: конвертация менее чем за 5 мс, 500 файлов DOCX обработаны за 1,7 секунды, покрытие 13 форматов.

Один пользователь уже опубликовал дополнительный плагин, hermes-docs (@dyiapanis), добавляющий OCR-слой, которого в AnyDoc нет нативно.

> Источник: [@Teknium, 6 августа 2026](https://x.com/Teknium/status/2085156837561893117) — [@nickscamara_, 4 августа 2026](https://x.com/nickscamara_/status/2084669934194266370)

## Actual Inc. нативно интегрируется с Hermes Agent

6 августа Actual Inc. (@actualinc) объявил, что его платформа персонального инференса теперь работает с Hermes Agent из коробки:

> «The world's best harness, Hermes Agent by @NousResearch now works with Actual out of the box. Hermes is the most effective harness for every model and thats why we're thrilled to use it natively. Hermes agent users can now use their personal inference capacity from anywhere.»

Teknium перепостил анонс. Actual Inc. предлагает инференс с любого устройства, и эта интеграция позволяет пользователям Hermes подключать собственную персональную вычислительную мощность без дополнительной настройки.

> Источник: [@actualinc, перепост @Teknium, 6 августа 2026](https://x.com/actualinc/status/2085172429895172136)

## Документация Hermes Agent переработана

5 августа Witcheer (@witcheer) анонсировал важное обновление официальной документации Hermes Agent, основанное на отзывах пользователей из X, Reddit, GitHub и Discord за последние месяцы.

Новинки в документации:

- Гайд по безопасному запуску Hermes на личной или рабочей машине.
- Чеклист по устранению неполадок, когда агент работает хуже обычного.
- Объяснение времени первого ответа на локальных моделях (и что его улучшит).
- Страница соответствия файлов: какой файл что делает (SOUL.md, USER.md, MEMORY.md, AGENTS.md).
- Таблица тарификации по планам для провайдеров с подпиской.
- Предупреждение о направлении двух агентов на одну и ту же папку Hermes home.

Witcheer напоминает, что Hermes Agent содержит скилл чтения собственной документации, позволяющий агенту искать ответ и объяснять исправление при проблеме.

> Источник: [@witcheer, перепост @Teknium, 5 августа 2026](https://x.com/witcheer/status/2085040329816731713)

## Источники

- [@imbabybrooklyn — Встроенный браузер в Hermes Desktop, 5 августа 2026](https://x.com/imbabybrooklyn/status/2085019745221554678)
- [@tonbistudio — Демонстрация браузера, 6 августа 2026](https://x.com/tonbistudio/status/2085153882708078596)
- [@Teknium — AnyDoc: все форматы документов, 6 августа 2026](https://x.com/Teknium/status/2085156837561893117)
- [@nickscamara_ — Презентация AnyDoc, 4 августа 2026](https://x.com/nickscamara_/status/2084669934194266370)
- [@actualinc, перепост @Teknium — Интеграция Actual Inc., 6 августа 2026](https://x.com/actualinc/status/2085172429895172136)
- [@witcheer, перепост @Teknium — Обновление документации, 5 августа 2026](https://x.com/witcheer/status/2085040329816731713)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
