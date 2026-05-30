---
title: "Analytics and AI/ML Services"
series: aws-fundamentals
order: 11
description: "Athena, Glue, Kinesis, EMR, QuickSight, plus the SageMaker / Bedrock split and the pre-built AI APIs (Rekognition, Comprehend, Polly, Transcribe, Translate, Textract, Lex, Personalize) at exam depth"
canonical_url: https://hungovercoders.com/training/aws-fundamentals/11-analytics-and-ai-services
---

I wanted to recognise the dozen-odd analytics and AI services CLF-C02 throws at you in single-line question stems — *"transcribe call centre audio to text"*, *"extract data from scanned brewery invoices"*, *"forecast next quarter's hop demand"* — and not have to guess. The exam tests these lightly but persistently: probably 4–6 questions across the two domains, all of which come down to *which AWS service has that name*. Memorising the service catalogue feels boring; it's actually the highest-yield five minutes of revision on this exam. Read on fellow hungovercoder.

This lesson is dataGriff's path through AWS analytics and AI/ML at exam depth. The canonical sources are the [AWS Analytics services landing page](https://aws.amazon.com/products/analytics/), the [AWS Machine Learning services landing page](https://aws.amazon.com/products/machine-learning/), and the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html) — use this alongside, not instead of, those.

## Pre-Requisites

- Lessons 01–10 done
- A tolerance for tables. This lesson is mostly a structured lookup.

## The Analytics Cellar

| Service | What it does | Trigger phrase on the exam |
|---|---|---|
| **Athena** | Run SQL directly against data in S3 (no infrastructure to provision) | "Ad-hoc SQL queries on S3 data" / "serverless query of data lake files" ✅ |
| **Glue** | Managed ETL + Data Catalog (a Hive-compatible metastore) | "Serverless ETL" / "discover and catalog data" / "crawl S3 for schemas" |
| **EMR** | Managed Hadoop, Spark, Hive, Presto cluster | "Big data processing" / "Hadoop ecosystem" / "Spark cluster" |
| **Kinesis Data Streams** | Real-time streaming ingest (millisecond latency) | "Real-time ingestion" / "real-time stream processing" |
| **Kinesis Data Firehose** | Streaming delivery to S3, Redshift, OpenSearch, with optional transformation | "Stream data into a data lake / warehouse" / "near real-time delivery to S3" |
| **Managed Service for Apache Flink** | Streaming SQL + Flink job execution (was Kinesis Data Analytics) | "SQL queries on a stream" / "real-time analytics on streaming data" |
| **MSK** | Managed Apache Kafka | "Migrate on-prem Kafka to AWS" / "Kafka cluster managed by AWS" |
| **OpenSearch Service** | Managed Elasticsearch fork — search, log analytics | "Full-text search" / "log analytics with Kibana-like dashboards" |
| **QuickSight** | Cloud-native BI dashboards | "Business intelligence dashboards" / "interactive visualisations for end users" |
| **Lake Formation** | Centralised permissions + governance for a data lake on S3 | "Centralised access control on the data lake" / "fine-grained S3 / Athena permissions" |
| **DataZone** | Data discovery, governance, sharing across business domains | "Data marketplace" / "publish datasets across business units" |

The trio that gets confused — **Athena, EMR, Redshift**:

- **Athena** = serverless SQL on S3. Pay per query. Ad-hoc.
- **EMR** = managed Hadoop/Spark cluster. Pay per node-hour. Heavy batch.
- **Redshift** (from lesson 08) = data warehouse cluster. Pay per cluster-hour. Sustained analytics.

The exam phrases the discriminator as *"ad-hoc / serverless / lowest commitment"* (Athena), *"big data Spark / Hadoop"* (EMR), or *"data warehouse / petabyte SQL"* (Redshift). One stem usually has all three as options to confuse you.

## Streaming — Which Kinesis?

Kinesis is a brand, not a single service. Four pieces under that brand, exam-tested differently:

| Service | What it actually does | Stem phrase |
|---|---|---|
| **Kinesis Data Streams** | Raw real-time stream of records, you write consumers | "Real-time ingest, custom processing" |
| **Kinesis Data Firehose** | Stream → S3 / Redshift / OpenSearch with optional transform | "Deliver streaming data into a destination, minimal config" |
| **Managed Service for Apache Flink** | Streaming SQL + Flink job execution | "Run SQL or Flink jobs on a stream" |
| **Kinesis Video Streams** | Stream video from cameras into AWS for processing | "Ingest video from devices / cameras" |

The single most-tested distinction: **Data Streams vs Firehose**. Data Streams gives you raw records and *you* write the consumer; Firehose gives you a managed delivery into S3/Redshift with no consumer to write. If the stem says *"deliver to S3"* the answer is Firehose; if it says *"process records in real time with custom code"* it's Data Streams.

## The AI/ML Bar — Two Tiers

AI/ML on AWS comes in two flavours that the exam treats as different question categories:

| Tier | Services | When the exam wants it |
|---|---|---|
| **Platform** | **SageMaker** (full ML platform), **Bedrock** (managed foundation models / GenAI) | "Build, train, deploy custom ML models" → SageMaker; "Generative AI using foundation models like Claude, Llama, Titan" → Bedrock |
| **Pre-built APIs** | Rekognition, Comprehend, Polly, Transcribe, Translate, Textract, Lex, Personalize, Forecast, Kendra | "I need to do X (specific task)" — pick the API that does that one thing |

The mental model: **Platform for custom ML, pre-built APIs for off-the-shelf tasks**. If the question implies the company wants to build/train their own model, the answer is SageMaker. If the company wants to do a specific recognised task (transcribe audio, translate text, scan an image), the answer is one of the pre-built APIs.

## SageMaker vs Bedrock

Both are AWS's flagship AI services and they're worth treating as separate:

- **SageMaker** — full ML platform. Notebooks, training jobs, hyperparameter tuning, model registry, endpoints, monitoring. Use for *traditional* ML: tabular models, custom training, fraud detection, predictive maintenance.
- **Bedrock** — managed foundation models from Anthropic, Meta, Mistral, Cohere, Stability AI, plus AWS's own Titan. Use for *generative* AI: text generation, summarisation, RAG, agents, embeddings.

> The exam reflex: **"foundation model"** or **"generative AI"** → **Bedrock**. **"custom ML model"** or **"training pipeline"** → **SageMaker**.

## The Pre-Built API Catalogue

These are the ones CLF-C02 lifts question stems straight off the AWS marketing page. Memorise the verb.

| Service | One-line job | Trigger phrase |
|---|---|---|
| **Rekognition** | Image and video analysis — object detection, faces, content moderation | "Detect objects / faces / inappropriate content in images" |
| **Comprehend** | NLP — sentiment, entities, key phrases, language detection | "Analyse text for sentiment / extract entities" |
| **Comprehend Medical** | Same but for clinical / medical text | "Extract medical entities from clinical notes" |
| **Textract** | OCR + form / table extraction from documents | "Extract data from scanned invoices / forms / receipts" |
| **Polly** | Text → speech | "Generate spoken audio from text" / "text-to-speech for an audiobook" |
| **Transcribe** | Speech → text | "Convert audio recordings to text" / "transcribe call centre audio" |
| **Translate** | Translate text between languages | "Translate user content into multiple languages" |
| **Lex** | Conversational bot platform (powers Alexa) | "Build a chatbot with voice and text input" |
| **Personalize** | Real-time recommendations from user behaviour | "Personalised product recommendations" / "users-who-liked-this-also-liked" |
| **Forecast** | Time-series forecasting | "Predict future demand / sales / inventory" |
| **Kendra** | Intelligent enterprise search across documents | "Natural-language search across internal documents" |
| **Q Business / Q Developer** | AWS's own GenAI assistants | "Internal AI assistant grounded on company docs" (Q Business) / "AI coding assistant" (Q Developer) |

The trick is the **trigger phrase matching the service name**. *Textract* → text extraction from documents. *Transcribe* → transcription of audio. *Translate* → translation. AWS named them helpfully; the exam takes advantage.

The trap question pattern: *"a company wants to analyse customer reviews for sentiment and translate non-English reviews"* — two services needed, **Comprehend** for sentiment + **Translate** for translation. The exam loves these "which two services" questions on AI/ML.

## Honest Moment

I'll be honest — the first time I revised this section I tried to learn each service in depth and got stuck on SageMaker's training pipelines. For CLF-C02 you don't need any of that. The exam wants the **verb** the service does. *Rekognition does image recognition.* *Textract does text extraction.* *Polly speaks.* Match the verb in the question to the verb in the service name. That's the entire pre-built API section in three sentences.

The other thing the exam doesn't quite say but is true in practice: **Bedrock is the bit of AWS that's changed fastest in the last two years**. New models drop monthly. AWS keeps adding model families. For exam purposes you only need to know Bedrock is the managed foundation-model service; for production work you'd actually need to track which model is best at what, which changes faster than this lesson can keep up with.

## Have a Go

1. **Match the verb.** Cover up the table above and read each pre-built API name out loud. For each name, say the verb it implies. *Polly speaks. Transcribe transcribes. Translate translates. Textract extracts.* If you can do all twelve, you've got the section.
2. **Walk through a worked stem**: *"A brewery wants to receive customer reviews in 14 languages and identify which ones mention quality issues."* Which two services? *(Translate to English, Comprehend for sentiment analysis to flag negatives.)*
3. **Pick the right Kinesis** for: (a) deliver IoT telemetry into S3 → Firehose; (b) run real-time fraud detection on a payment stream → Data Streams + Lambda or Managed Apache Flink; (c) ingest video from store cameras → Video Streams.
4. **Distinguish Athena vs EMR vs Redshift** in your head for: (a) one-off SQL query on yesterday's S3 logs → Athena; (b) train a Spark ML model on 200 TB of click data → EMR; (c) sustained BI queries from QuickSight → Redshift.

## Would I Reach for These in Production?

For analytics, the **S3 + Glue Data Catalog + Athena + QuickSight** stack is the right starting point for almost every "we want some data analytics" need. It's serverless, it's cheap, and it scales much further than people expect before you need to move to Redshift. Most teams who think they need Redshift on day one actually need Athena for a year first.

For AI, the right default is **pre-built APIs for anything they cover** (faster, cheaper, no model training), **Bedrock for anything generative**, and **SageMaker only when you genuinely need to train a custom model on your own data**. Most "AI features" I've shipped in the last two years would have been wildly over-engineered with SageMaker; a Rekognition call or a Bedrock prompt does the job in a tenth of the code.

The one thing I'd skip on CLF-C02 prep is going deep on Lake Formation and DataZone — they're awareness-level on this exam and you can pick up the details when you actually need them. Focus on Athena, Glue, Kinesis (the four pieces), QuickSight, SageMaker, Bedrock, and the dozen pre-built APIs above.

If I were doing this lesson again I'd put the pre-built API table at the very top — it's the most-tested section and the easiest to drill, so it deserves the top of the page rather than the middle.

## Sample exam questions

### Q1. A brewery wants to analyse customer reviews in English to identify the overall sentiment (positive, negative, neutral) without training a custom model. Which AWS service is MOST appropriate?

- A. Amazon SageMaker
- B. Amazon Comprehend
- C. Amazon Translate
- D. Amazon Textract

<details>
<summary>Answer</summary>

**B.** Comprehend is the pre-built NLP service that does sentiment analysis out of the box. SageMaker (A) would require training a custom model — overkill when a managed API exists. Translate and Textract are wrong-verb services.
</details>

### Q2. A team needs to run ad-hoc SQL queries over 50 TB of parquet files in an S3 bucket without provisioning or managing any infrastructure. Which AWS service is MOST appropriate?

- A. Amazon Redshift
- B. Amazon EMR
- C. Amazon Athena
- D. AWS Glue

<details>
<summary>Answer</summary>

**C.** Athena is serverless SQL on S3 — pay per query, no infrastructure. Redshift (A) requires a cluster; EMR (B) requires a cluster too; Glue (D) is ETL, not interactive querying.
</details>

### Q3. A call centre wants to automatically transcribe customer phone calls so the text can be searched and analysed later. Which AWS service is MOST appropriate?

- A. Amazon Polly
- B. Amazon Transcribe
- C. Amazon Lex
- D. Amazon Comprehend

<details>
<summary>Answer</summary>

**B.** Transcribe = speech to text — exactly the call-centre transcription use case. Polly (A) is the *other* direction (text to speech); Lex builds chatbots; Comprehend does NLP on text once you have it.
</details>

### Q4. A company wants to build a generative AI application that summarises product reviews using a foundation model from Anthropic without managing any model infrastructure. Which AWS service is MOST appropriate?

- A. Amazon SageMaker
- B. Amazon Bedrock
- C. Amazon Comprehend
- D. Amazon Personalize

<details>
<summary>Answer</summary>

**B.** Bedrock is AWS's managed foundation-model service, including Anthropic's Claude family. SageMaker (A) is for custom-trained models, not consumed third-party FMs; Comprehend does pre-built NLP tasks but isn't a generative FM service.
</details>

### Q5. An e-commerce company wants to deliver streaming clickstream data into Amazon S3 with minimal configuration and no custom consumer code. Which AWS service is MOST appropriate?

- A. Amazon Kinesis Data Streams
- B. Amazon Kinesis Data Firehose
- C. Amazon MSK
- D. Amazon SQS

<details>
<summary>Answer</summary>

**B.** Firehose is the managed streaming-delivery service — point it at S3 (or Redshift/OpenSearch) and it handles batching, buffering, and delivery with no consumer to write. Data Streams (A) requires writing a consumer; MSK (C) is for Kafka workloads; SQS (D) is a queue, not a streaming pipeline.
</details>

## Sources and further reading

- [AWS Analytics services landing page](https://aws.amazon.com/products/analytics/) — Athena, Glue, EMR, Kinesis, QuickSight, Lake Formation grouped by AWS
- [Amazon Athena documentation](https://docs.aws.amazon.com/athena/latest/ug/what-is.html) — serverless SQL on S3
- [Amazon Kinesis family overview](https://aws.amazon.com/kinesis/) — the four streaming services and when to pick each
- [AWS Machine Learning services](https://aws.amazon.com/machine-learning/) — Platform (SageMaker, Bedrock) vs Pre-built APIs at AWS's own framing
- [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-bedrock.html) — managed foundation models from Anthropic, Meta, Mistral, Cohere, Stability AI, Titan
- [Amazon SageMaker Developer Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html) — full ML platform for custom training and deployment
- The Pre-built AI APIs each have their own docs: [Rekognition](https://docs.aws.amazon.com/rekognition/latest/dg/what-is.html), [Comprehend](https://docs.aws.amazon.com/comprehend/latest/dg/what-is.html), [Polly](https://docs.aws.amazon.com/polly/latest/dg/what-is.html), [Transcribe](https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html), [Translate](https://docs.aws.amazon.com/translate/latest/dg/what-is-translate.html), [Textract](https://docs.aws.amazon.com/textract/latest/dg/what-is.html), [Lex](https://docs.aws.amazon.com/lexv2/latest/dg/what-is.html), [Personalize](https://docs.aws.amazon.com/personalize/latest/dg/what-is-personalize.html)
- `SOURCES.md` at the repo root for the series-wide reference list

---

Well done on your analytics-and-AI tour, fellow hungovercoder. You've now got the analytics stack mapped and the pre-built AI APIs match the verbs in their names. On to lesson 12 where we cover AWS Organizations and multi-account — the bit that turns one AWS account into a properly governed estate. Bring the beer.
