---
title: "If You're Sitting CLF-C02 — Read This First"
series: aws-fundamentals
order: 1
description: "Booking the AWS Cloud Practitioner exam, the small handful of external resources actually worth pairing with this series, and a study plan that doesn't burn you out before exam day"
canonical_url: https://hungovercoders.com/training/aws-fundamentals/01-sitting-the-exam-and-extra-resources
---

I wanted to actually sit the AWS Certified Cloud Practitioner exam, not just brush up on AWS, and the first thing I learned was that the exam ecosystem has a lot of noise — paid courses, practice exam vendors, study guides, Reddit threads, all shouting at you before you've even logged in to your AWS account. This lesson is the bit I wish I'd read first: how to book the exam, the small handful of external resources actually worth pairing with this series, and a study plan that won't have you crying into a copy of someone else's slide deck three weeks in.

**If you're just here to learn AWS fundamentals and don't care about the certificate, skip to lesson 02.** There's no AWS content in this one. If you want the cert, settle in — and book the exam by the end of the lesson if you can. The deadline does more work than any productivity app.

This lesson is dataGriff's take on the CLF-C02 prep ecosystem — opinionated about what's worth your time, not a substitute for AWS's own exam guide. The canonical source for everything about the exam itself is the [AWS Certified Cloud Practitioner page](https://aws.amazon.com/certification/certified-cloud-practitioner/); use this lesson alongside it, not instead of it.

## What the Exam Actually Is

CLF-C02 is the **Foundational** tier of AWS certifications — the entry point before the Associate tier (Solutions Architect Associate, Developer Associate, SysOps Administrator Associate). It's deliberately broad rather than deep — recognise the services, know which problem each one solves, understand the four domains (Cloud Concepts, Security, Cloud Technology, Billing & Support). You don't need to know how to configure anything; you need to know what a question is asking and which service is the right answer.

The vital stats:

| Thing | Value |
|---|---|
| Format | Multiple choice + multiple response |
| Number of questions | 65 (50 scored, 15 unscored research questions, indistinguishable on the day) |
| Duration | 90 minutes |
| Passing score | 700 / 1000 (scaled — not a straight 70% of questions correct) |
| Cost | **$100 USD** (Foundational tier — Associates are $150, Pro/Specialty $300) |
| Validity | 3 years |
| Languages | English, Japanese, Korean, Simplified Chinese, plus several others |
| Prerequisites | None — you can sit it without any other AWS exam |

The scaled scoring is worth knowing: it means a hard question is worth more than an easy one, and you can theoretically miss 30% of the questions and still pass if you nail the harder ones. Don't game it — answer everything — but stop panicking if you flag five in a row as uncertain.

## Where You Actually Sit It

Two options, both run through Pearson VUE.

**Pearson VUE test centre** — you drive somewhere, present photo ID, get a webcam-monitored cubicle and a desktop. Most reliable, least anxiety, slightly less convenient. ✅ Recommended for first-timers.

**Online proctored** — you sit it at your kitchen table with a webcam. Cheaper on diesel, but the requirements list is brutal: a totally clear desk, no second monitor, no phone within reach, a "room scan" with your webcam before you start, no leaving your seat for 90 minutes. A friend of mine got auto-failed mid-exam because his cat walked across the desk. ⚠️ Fine if you're disciplined; ❌ avoid if your home has people, pets, or any chance of a delivery driver hammering on the door.

## How to Book It

1. Go to **<https://www.aws.training/Certification>** and sign in with an Amazon account (an AWS account works; a personal Amazon shopping account also works — they're the same identity provider).
2. From the dashboard, click **Schedule new exam**.
3. Pick **AWS Certified Cloud Practitioner (CLF-C02)**.
4. Choose **Pearson VUE** as the test provider.
5. Pick test centre OR online proctored, pick a slot, pay your $100.

I'll be honest — the first time I logged in to the certification portal it bounced me between three different sub-portals (training, certification, billing) and I gave up for a fortnight. The link above is the one that actually lands you in the right place. There's also `certmetrics.com/amazon` floating around in old guides; ignore it, it's the old portal.

## The External Resources Actually Worth Your Time

There's a lot of noise here. After cutting through it, three resources earn their keep next to this series:

| Resource | Cost | What it gives you | When to use it |
|---|---|---|---|
| **Tutorials Dojo CLF-C02 practice exams** | ~£15 (one-off) | 6 full-length practice exams with explanations | Single biggest pass-rate lever after this series. Take one a week into your prep and one the night before the exam. ✅ |
| **AWS Skill Builder — official sample questions** | Free | 10 official practice questions in AWS's house style | Free signal that the question style I'm using is on-brand. Worth doing once early. ✅ |
| **AWS Skill Builder — Cloud Quest: Cloud Practitioner** | Free | A surprisingly fun gamified walkthrough of core services | If you learn by doing more than reading, run through it in parallel with lessons 5-10 of this series. ⚠️ Skippable if you're already a working developer. |

What I'd **not** bother with:

- **$300 paid bootcamps** — overkill at the Foundational tier. Save it for SAA-C03.
- **"Exam dumps"** sites — copyrighted, often outdated, against AWS's terms of certification, and pointless when Tutorials Dojo questions are better and cost a fiver. ❌
- **20-hour video courses by big-name Udemy instructors** — they're fine, but you've already chosen to read a written series. Picking both means you'll finish neither.

## A Realistic Study Plan

Two to four weeks at 5–10 hours per week. That's it. CLF-C02 is not a six-month commitment.

**Week 1** — Lessons 02–06 of this series. Read the prose, do the sample questions, don't grind. Take the free AWS sample questions at the end of the week.

**Week 2** — Lessons 07–11. Take **one** Tutorials Dojo practice exam at the end — expect to fail it. The point is to see what real questions look like and identify your weakest domain.

**Week 3** — Lessons 12–14. Re-read whichever lesson maps to your weakest domain from the practice exam. Take a second Tutorials Dojo exam.

**Week 4 (or earlier if you're ready)** — Two or three more Tutorials Dojo exams spaced over the week. If you're scoring above 750 consistently, you'll pass the real one.

Book the actual exam **at the start of Week 1**. The booking is what makes the rest happen.

## Would I Actually Sit It?

I would — and did — but for an honest reason. For 95% of people in tech moving towards cloud work, CLF-C02 is worth sitting **even if your employer doesn't require it**, because the structure of preparing for a fixed-deadline exam focuses your learning more than browsing AWS docs ever will. The line on the CV is nice; the focused four weeks of learning is the actual product.

I would **not** sit it if you're already three years into AWS work and are aiming straight for Solutions Architect Associate. Skip Foundational, sit SAA-C03 directly. There's no rule that you have to walk up the ladder rung by rung; CLF-C02's only real role is forcing structure on a beginner.

If I were preparing again, I'd book the exam date **before** writing the study plan, not after. The deadline makes every other decision easier.

## Sample exam questions

These ones aren't on the real exam — they're about the exam itself. Useful planning trivia.

### Q1. How many questions does the AWS Certified Cloud Practitioner (CLF-C02) exam contain?

- A. 45
- B. 50
- C. 65
- D. 80

<details>
<summary>Answer</summary>

**C.** 65 questions in total — 50 scored, 15 unscored research questions that AWS uses to evaluate future exam items. You can't tell which is which on the day, so treat all 65 as scored.
</details>

### Q2. What is the minimum passing score for CLF-C02?

- A. 650 / 1000
- B. 700 / 1000
- C. 750 / 1000
- D. 800 / 1000

<details>
<summary>Answer</summary>

**B.** 700 out of 1000 on a scaled-scoring system. The scaling means it isn't a flat "answer 70% correctly" — harder questions are worth more, so the actual number of questions you can miss varies with their difficulty.
</details>

### Q3. How long is the CLF-C02 exam?

- A. 60 minutes
- B. 90 minutes
- C. 120 minutes
- D. 180 minutes

<details>
<summary>Answer</summary>

**B.** 90 minutes for 65 questions — works out at roughly 80 seconds per question. Don't read too fast; the exam punishes skim-reading because half the questions hinge on a single qualifying word like *MOST*, *LEAST*, or *NOT*.
</details>

### Q4. How long does a CLF-C02 certification remain valid before it must be recertified?

- A. 1 year
- B. 2 years
- C. 3 years
- D. Indefinitely

<details>
<summary>Answer</summary>

**C.** 3 years. To keep it active you either re-sit CLF-C02 again or pass a higher-tier AWS exam (any Associate, Professional, or Specialty), which automatically renews all your lower-tier certifications.
</details>

### Q5. What is the standard registration fee for the AWS Certified Cloud Practitioner exam in USD?

- A. $50 USD
- B. $100 USD
- C. $150 USD
- D. $300 USD

<details>
<summary>Answer</summary>

**B.** $100 USD for Foundational tier. The Associate tier (Solutions Architect Associate, Developer Associate, SysOps Administrator Associate) is $150; Professional and Specialty exams are $300. AWS also runs "50% off your next exam" voucher promotions periodically — worth checking the certification portal for promos before paying full price.
</details>

## Sources and further reading

- [AWS Certified Cloud Practitioner — official exam page](https://aws.amazon.com/certification/certified-cloud-practitioner/) — registration, official exam guide PDF, sample questions, current exam fees
- [AWS Skill Builder — official CLF-C02 sample questions (free)](https://explore.skillbuilder.aws/learn/course/12483/aws-certified-cloud-practitioner-official-question-set-clf-c02-english) — 20 free questions in AWS's house style
- [Tutorials Dojo CLF-C02 practice exams](https://portal.tutorialsdojo.com/courses/aws-certified-cloud-practitioner-practice-exams-clf-c02/) — six full-length practice exams; single biggest pass-rate lever after this series
- [AWS Skill Builder — Cloud Practitioner Essentials (free)](https://explore.skillbuilder.aws/learn/learning_plan/view/82/plan) — AWS's own video-led learning path
- [Stéphane Maarek — CLF-C02 course (Udemy)](https://www.udemy.com/course/aws-certified-cloud-practitioner-new/) — popular video alternative
- [r/AWSCertifications](https://www.reddit.com/r/AWSCertifications/) — fresh pass-rate stories and exam impressions
- `SOURCES.md` at the repo root for the series-wide reference list

---

Right, exam booked? Excellent — that's the hard bit done. The rest is just learning. On to lesson 02, where we crack open the actual AWS material with the six advantages of cloud, AWS's global infrastructure, and the Well-Architected Framework. Bring the beer.
