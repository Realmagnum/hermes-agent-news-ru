# Новости Hermes Agent #5

Рейтинг стоимости от Composio — Hermes в лидерах, и бенчмарк tinyMMLU от GMI Cloud.

## Hermes Agent — самый дешёвый по бенчмарку стоимости Composio

Composio опубликовал 31 июля результаты рейтинга agent harness'ов по стоимости за задачу. Hermes Agent и Pi Agent лидируют, а Claude Code обходится в 3,7 раза дороже:

- **0,39 $** Hermes Agent
- **0,40 $** Pi Agent
- **0,47 $** Codex
- **0,51 $** OpenCode
- **0,54 $** Kimi Code
- **1,47 $** Claude Code

Медианная стоимость рассказывает ту же историю: 0,29 $ у Pi Agent и Hermes, 0,35 $ у OpenCode, 0,38 $ у Kimi Code, 0,39 $ у Codex и 0,72 $ у Claude Code. Разрыв не создан парой дорогих задач — он держится на типовой задаче.

Затраты рассчитаны по прайсу Kimi K3: 3 $/1 млн входных токенов, 0,30 $/1 млн входных токенов из кэша и 15 $/1 млн выходных токенов.

> Источник: [@Composio, перепост @Teknium, 31 июля 2026](https://x.com/Teknium/status/2083172515292283223)

## tinyMMLU: Hermes Agent быстрее и экономнее OpenCode на Kimi K3 и GLM 5.2

GMI Cloud протестировал три модели — GLM 5.2, Kimi K3 и DeepSeek V4 Pro — на датасете tinyMMLU (Hugging Face), используя Hermes Agent и OpenCode в качестве harness'ов. Результаты заметно различаются в зависимости от пары модель-агент.

**Kimi K3:** Hermes Agent за 40 секунд с 110K токенов (96/100), против OpenCode за 8 минут 13 с 149K токенов (93/100). Hermes в 12 раз быстрее и эффективнее по токенам.

**GLM 5.2:** Hermes Agent за 2 минуты 30 с 195K токенов (94/100), против OpenCode за 6 минут 20 с 432K токенов (94/100). Одинаковый балл, но Hermes потребляет меньше половины токенов.

**DeepSeek V4 Pro:** здесь эффективнее OpenCode — 3 минуты 25 с 795K токенов (95/100, 0,06 $), против Hermes Agent за 3 минуты 44 с 1,23M токенов (97/100, 0,15 $). Hermes набирает лучший балл, OpenCode — лучшую стоимость.

GMI Cloud использовал свой собственный API для всех моделей, протестированных на Hermes Agent, и для GLM 5.2 и DeepSeek V4 Pro на OpenCode. Kimi K3 на OpenCode тестировался через другого провайдера.

> Источник: [@gmi_cloud, перепост @Teknium, 31 июля 2026](https://x.com/Teknium/status/2083003495020630108)

## Источники

- [@Composio, перепост @Teknium, 31 июля 2026](https://x.com/Teknium/status/2083172515292283223)
- [@gmi_cloud, перепост @Teknium, 31 июля 2026](https://x.com/Teknium/status/2083003495020630108)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
