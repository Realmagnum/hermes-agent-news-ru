# Новости Hermes Agent #2

Nous Research вступает в Open Secure AI Alliance и переносит Obliteratus в нативный скилл Hermes.

## Nous Research — член-основатель Open Secure AI Alliance

NVIDIA запустила Open Secure AI Alliance 27 июля — коалицию из 37 организаций, нацеленную на разработку открытых технологий, инструментов и стандартов для безопасности ПО и ИИ-агентов. Nous Research входит в число членов-основателей наряду с Adobe, Cisco, Cloudflare, CrowdStrike, Databricks, Hugging Face, IBM, LangChain, Microsoft, Palantir, Red Hat, Salesforce, Snowflake и SpaceXAI.

Альянс исходит из того, что безопасность ИИ-агента не ограничивается его языковой моделью. Она зависит от всего стека (идентичность, права, harness, защитные механизмы, логи, оценка). Продвигаемый подход — открытая защита, при которой инструменты безопасности инспектируемы, адаптируемы и разворачиваемы любым защитником, а не заперты в непрозрачных проприетарных системах.

NVIDIA также опубликовала фреймворк NOOA (NVIDIA Labs Object-Oriented Agent) в открытый доступ на GitHub — исследовательский каркас, позволяющий harness'ам агентов лучше интегрировать модели для упрощения тестирования, трассировки, аудита и управления агентным поведением.

> Источники: [@NousResearch, 27 июля 2026](https://x.com/NousResearch/status/2081774973845205482) — [Блог NVIDIA](https://blogs.nvidia.com/blog/open-secure-ai-alliance/)

## Obliteratus теперь доступен как нативный скилл Hermes

Obliteratus — открытый инструмент, который определяет конкретные веса, вынуждающие модель отказывать в ответах (refusal), и вытесняет их из модели одним кликом. Теперь он доступен как нативный скилл Hermes.

Teknium анонсировал 25 июля, что нативный порт доступен по команде:

```
hermes skills install official/mlops/obliteratus
```

Инструмент входит в число опциональных скиллов, встроенных в Hermes Agent. Подход хирургический: вместо широкого отключения защитных механизмов Obliteratus нацеливается на точные веса, отвечающие за поведение отказа, и нейтрализует их выборочно.

> Источник: [@Teknium, 25 июля 2026](https://x.com/Teknium/status/2081134153970688251)

## Источники

- [@NousResearch — Open Secure AI Alliance, 27 июля 2026](https://x.com/NousResearch/status/2081774973845205482)
- [Блог NVIDIA — Industry Leaders Join Open Secure AI Alliance](https://blogs.nvidia.com/blog/open-secure-ai-alliance/)
- [@Teknium — Obliteratus — нативный скилл Hermes, 25 июля 2026](https://x.com/Teknium/status/2081134153970688251)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)
