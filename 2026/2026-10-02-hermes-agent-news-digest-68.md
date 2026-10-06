# Новости Hermes Agent #68

В этом выпуске: ускорение `hermes update`, 182 pull request, смердженных 1 октября, команда `/branch` в свежем выпуске Wingtips и встреча сообщества Hermes в Стокгольме 15 октября.

## `hermes update` стал примерно в четыре раза быстрее

Вернувшись из отпуска, Teknium сообщил 1 октября, что `hermes update` теперь должен работать примерно вчетверо быстрее у всех пользователей. На следующий день witcheer раскрыл подробности в цифрах: этап сборки Desktop занимает около 22 секунд на Linux, сборка TUI и веб-интерфейса пропускается, если не было изменений, а проверка синтаксиса на Windows выполняется примерно за одну секунду.

> Источники: [@Teknium, I'm back from vacation and Hermes update should be around 4x faster for everyone, 1 октября 2026](https://x.com/Teknium/status/2105809042291798441) и [@witcheer, what a great time to run hermes update, 2 октября 2026](https://x.com/witcheer/status/2105894981911413165)

## 182 pull request смерджено 1 октября

iamlukethedev подвел итоги 2 октября: 1 октября в Hermes приняли 182 pull request, мощно начав новый месяц. В тексте сообщения выделены три основных пункта, а остальной список приведен на прикрепленном скриншоте:

- Встроенные плееры YouTube снова работают в собранном приложении Desktop благодаря локальному хосту воспроизведения.
- Встроенные виджеты X и Instagram больше не выполняют сторонние вендорные скрипты в окне приложения.
- Desktop сохраняет удаленный шлюз.

> Источник: [@iamlukethedev, Hermes started October strong, 182 PRs merged today, 2 октября 2026](https://x.com/iamlukethedev/status/2105849499356950850)

## Wingtips #89: /branch

witcheer посвятил 89-й выпуск Wingtips команде `/branch`. Она копирует текущий диалог вместе со всей историей в новую сессию для продолжения работы в копии, что позволяет проверить другую идею, не теряя контекста. Документация команд уточняет поведение: доступен алиас `/fork`; в Discord, Telegram, Slack и Matrix ветка открывается в новом соседнем треде, а текущий тред остается в исходной сессии, тогда как флаг `--here` переключает текущий тред на созданную ветку; в CLI и на платформах без поддержки тредов ветвление всегда выполняется на месте. В стандартном CLI команду нельзя вызвать посреди генерации ответа, как и `/handoff` — необходимо дождаться завершения ответа и повторить попытку.

> Источники: [@witcheer, Hermes Wingtips #89: /branch, 2 октября 2026](https://x.com/witcheer/status/2105922267636965538) и [Slash Commands Reference, /branch, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/reference/slash-commands)

## Встреча Hermes в Стокгольме 15 октября

witcheer объявил, что Nous Research поддерживает мероприятия сообщества, и следующей точкой станет Стокгольм. В четверг, 15 октября, Alper Aydemir организует встречу по Hermes Agent в офисе Volumental на Söder Mälarstrand. В программе: презентации, общение, закуски и пиво. На странице события в Luma указаны детали: с 17:00 до 21:00 (GMT+2), регистрация требует одобрения организатора, точный адрес высылается после подтверждения, а прийти необходимо до 18:00, чтобы попасть в здание. Для онлайн-участников предусмотрена трансляция в Google Meet. Со своей стороны alpervm сообщил, что зарегистрировалось уже около 100 человек.

> Источники: [@witcheer, Nous Research supports community events and Stockholm is next, 2 октября 2026](https://x.com/witcheer/status/2106019951895097353), [@alpervm, 100 people already signed up, 2 октября 2026](https://x.com/alpervm/status/2106008876843769908) и [Hermes Stockholm meetup, страница Luma](https://luma.com/ynmfdbnb)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
