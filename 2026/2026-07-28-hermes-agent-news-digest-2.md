# Новости Hermes Agent #2

> **Выпуск:** #2 · **Дата:** 28 июля 2026  
> **Оригинал:** [hermes-agent-news-fr #2](https://github.com/t1t4nium/hermes-agent-news-fr/blob/main/2026/2026-07-28-hermes-agent-news-digest-2.md)

---

### Кратко в этом выпуске:
- [Nous Research вошла в число основателей Open Secure AI Alliance](#nous-research-voshla-v-chislo-osnovatelej-open-secure-ai-alliance)
- [Obliteratus стал нативным скиллом для Hermes](#obliteratus-stal-nativnym-skillom-dlya-hermes)

---

## Nous Research вошла в число основателей Open Secure AI Alliance

27 июля NVIDIA объявила о создании **Open Secure AI Alliance** — коалиции из 37 организаций, нацеленной на разработку открытых технологий, инструментов и стандартов безопасности для агентных систем и прикладного ИИ-софта. **Nous Research** вошла в число основателей альянса наряду с Adobe, Cisco, Cloudflare, CrowdStrike, Databricks, Hugging Face, IBM, LangChain, Microsoft, Palantir, Red Hat, Salesforce, Snowflake и SpaceXAI.

Главный посыл инициативы: безопасность ИИ-агента выходит далеко за рамки весов базовой LLM. Она определяется надежностью всего стека — включая идентификацию, управление правами, агентные харнесы (agent harness), гардрейлы, аудит логов и бенчмарки оценки (evals). 

Альянс продвигает концепцию прозрачной защиты (open defense): инструменты безопасности должны быть аудируемыми, гибкими в адаптации и доступными любому инженеру по ИБ, а не скрытыми внутри закрытых проприетарных платформ.

Параллельно NVIDIA открыла исходный код исследовательского фреймворка **NOOA** (NVIDIA Labs Object-Oriented Agent) на GitHub. Он спроектирован для того, чтобы агентные платформы могли глубже интегрировать модели, упрощая отладку, трассировку, аудит и контроль поведения автономных агентов.

> **Источники:**
> - [@NousResearch — Анонс участия в Open Secure AI Alliance (27 июля 2026)](https://x.com/NousResearch/status/2081774973845205482)
> - [NVIDIA Blog — Industry Leaders Join Open Secure AI Alliance](https://blogs.nvidia.com/blog/open-secure-ai-alliance/)

---

## Obliteratus стал нативным скиллом для Hermes

Open-source утилита **Obliteratus**, позволяющая определять конкретные веса, вызывающие у модели отказ отвечать (*refusal*), и в один клик исключать их из проекции модели, теперь доступна в виде нативного скилла Hermes Agent.

Как сообщил @Teknium 25 июля, установить порт можно штатной командой:

```bash
hermes skills install official/mlops/obliteratus
```

Инструмент вошел в каталог официальных опциональных скиллов Hermes. Главное преимущество подхода — хирургическая точность: вместо масштабного отключения защитных механизмов Obliteratus таргетированно воздействует на вычисленные компоненты отказа, нейтрализуя лишь нежелательные блокировки без деградации общей производительности модели.

> **Источники:**
> - [@Teknium — Релиз нативного скилла Obliteratus (25 июля 2026)](https://x.com/Teknium/status/2081134153970688251)

---

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr).
