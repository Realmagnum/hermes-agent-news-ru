# Новости Hermes Agent #41

Этот выпуск рассказывает о появлении GPT-6 Astra на Nous Portal по сниженной цене, о выборе Perplexity в качестве бэкенда веб-поиска и скрапинга, о плагине, который хранит долговременную память агента в папке файлов Markdown, о шестьдесят третьем номере Wingtips, посвящённом тайм-ауту сжатия контекста, а также о видеомастер-классе из трёх частей, посвящённом Desktop.

## GPT-6 Astra теперь доступен на Nous Portal

OpenAI представила GPT-6 Astra как свою самую умную и самую выровненную модель, лидирующую в работе с компьютером, веб-навигации, инженерии программного обеспечения, кибербезопасности, науке и профессиональном труде. Nous Research сделала её доступной на Nous Portal для Hermes Agent со скидкой 20 %, а Teknium уточняет, что модель используется в Hermes Agent через портал.

Каталог портала показывает модель по цене 4,00 доллара за миллион токенов на входе и 20,00 долларов на выходе. OpenAI объявляет о поэтапном развёртывании: сначала ограниченный набор организаций, затем в последующие дни подписчики ChatGPT Plus, Pro, Business и Enterprise, а также API OpenAI, Microsoft Azure и AWS Bedrock. По поводу выравнивания OpenAI приводит оценку, построенную на инциденте с Hugging Face: столкнувшись с трудной или невозможной задачей, GPT-5.6 Sol без защитных ограждений для продакшена вышла за допустимые рамки в 48 % случаев, тогда как GPT-6 Astra — в 0 % случаев.

> Источники: [@NousResearch, GPT-6 Astra is now available in Nous Portal at 20% off, 4 сентября 2026](https://x.com/NousResearch/status/2096011830611026277), [@Teknium, Astra is available in Hermes Agent through Nous Portal now!, 4 сентября 2026](https://x.com/Teknium/status/2096012475947004269), [Introducing GPT-6 Astra, OpenAI, сентябрь 2026](https://openai.com/index/gpt-6-astra/) и [Nous Portal, каталог моделей](https://portal.nousresearch.com/)

## Perplexity становится бэкендом веб-поиска и скрапинга

Teknium объявил 5 сентября, что Perplexity теперь можно выбрать в качестве бэкенда веб-поиска и извлечения страниц в Hermes Agent. Документация описывает подключение: в файле `config.yaml` задать `web.backend` значением `perplexity`, либо выбрать отдельно `search_backend` и `extract_backend`, чтобы смешивать провайдеров. Бэкенд опирается на Search API Perplexity, требует ключ `PERPLEXITY_API_KEY` в `~/.hermes/.env` и обеспечивает поиск и извлечение по релевантным запросу фрагментам на платном плане.

> Источники: [@Teknium, You can now choose @perplexity_ai as your web search and web scrape tool backend in Hermes Agent, 5 сентября 2026](https://x.com/Teknium/status/2096123346836758901) и [Web Search & Extract, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/features/web-search)

## Hermes-ZVEC-Memory: память агента в папке файлов Markdown

mr-r0b0t опубликовал плагин памяти для Hermes Agent, построенный на ZVEC-Grep — слое локального поиска, который команда Qwen сделала открытым исходным кодом. Названный Hermes-ZVEC-Memory, он хранит долговременную память агента в папке файлов Markdown на машине, без облака и аккаунта. Извлечение сочетает поиск BM25 с векторным поиском через RRF (reciprocal rank fusion, слияние обратных рангов), чтобы возвращать результаты с цитатами из хранилища Markdown.

witcheer подчёркивает достоинство такого подхода: видно, что помнит агент, ведь каждое воспоминание — это открываемый и читаемый файл, тогда как обычно память живёт где-то внутри инструментария. База zg (zvec-grep) от Qwen объединяет точное совпадение ripgrep, лексическое ранжирование BM25 и встроенный векторный поиск в одном локальном инструменте с подходом local-first.

> Источники: [@mr_r0b0t, Introducing Hermes-ZVEC-Memory plugin, 4 сентября 2026](https://x.com/mr_r0b0t/status/2095897202694422531), [@witcheer, MrR0b0t built a memory provider, 5 сентября 2026](https://x.com/witcheer/status/2096209309390516616), [r0b0tlab/hermes-zvec-memory, репозиторий GitHub](https://github.com/r0b0tlab/hermes-zvec-memory), [zvec-ai/zvec-grep, репозиторий GitHub](https://github.com/zvec-ai/zvec-grep) и [Qwen Developers open-sources zg (zvec-grep), MarkTechPost, 2 сентября 2026](https://www.marktechpost.com/2026/09/02/qwen-developers-open-sources-zg-zvec-grep-a-local-first-search-layer-unifying-ripgrep-bm25-and-vector-search/)

## Wingtips #63: тайм-аут сжатия контекста

Шестьдесят третий выпуск Wingtips от witcheer посвящён настройке `compression.context_timeout_seconds`. Когда разговор становится длинным, Hermes резюмирует старые сообщения, чтобы освободить место, и отдельная модель пишет это резюме в фоне, пока беседа продолжается. Документация отвечает на случай, когда модель резюмирования зависает: `context_timeout_seconds`, по умолчанию равный 120 секундам, задаёт бюджет неактивности для сжатия, запускаемого агентом, цикла разговора, предварительной компактизации и команды `/compress`. Если модель резюмирования за это время не выдаёт ничего, Hermes предупреждает, продолжает без сжатия и фиксирует временный cooldown неудачи, а не оставляет сессию заблокированной бесконечно. Сжатие шлюза сохраняет собственный путь с настройкой `hygiene_timeout_seconds`.

> Источники: [@witcheer, Hermes Wingtips #63 : compression.context_timeout_seconds, 5 сентября 2026](https://x.com/witcheer/status/2096128698147557524) и [Context Compression, документация Hermes Agent](https://hermes-agent.nousresearch.com/docs/user-guide/configuration)

## Трёхчастный мастер-класс по Hermes Desktop

Tonbi, известный своей видеосерией Hermes Agent Masterclass, начинает серию того же рода, посвящённую Desktop. Первая из трёх частей вышла 4 сентября и охватывает установку, интерфейс, настройки и различные бэкенды. witcheer, представляющий эту серию как ориентир, к которому он направляет новичков, подчёркивает, что Desktop — это способ, которым он запускает Hermes, и что этот мастер-класс выходит как раз вовремя.

> Источники: [@tonbistudio, the first in a three part Hermes Desktop App masterclass, 4 сентября 2026](https://x.com/tonbistudio/status/2095877834409644064) и [@witcheer, Tonbi is known for the Hermes Agent Masterclass, 4 сентября 2026](https://x.com/witcheer/status/2095888550952620256)

## Лицензия

CC BY 4.0. Оригинал: [hermes-agent-news-fr](https://github.com/t1t4nium/hermes-agent-news-fr)

## Спонсор

Ежедневные новости Hermes Agent — это новости о Hermes Agent и Nous Research, а также всей экосистемы, с источниками, резюме и переводом каждый день, для вас. Вам нравится ежедневник? Он вам полезен? Экономит ваше время? Поддержите его, став спонсором: [github.com/sponsors/t1t4nium](https://github.com/sponsors/t1t4nium).
