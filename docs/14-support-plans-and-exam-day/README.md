---
title: "AWS Support Plans and Exam Day"
series: aws-fundamentals
order: 14
description: "The five AWS Support tiers and what each gives you, Trusted Advisor at each level, AWS Health vs Personal Health Dashboard, plus an honest exam-day walkthrough and what to do after you pass"
canonical_url: https://hungovercoders.com/training/aws-fundamentals/14-support-plans-and-exam-day
---

I wanted to close the series with the bit that's both heavily tested *and* genuinely useful on exam day. AWS Support tiers are a CLF-C02 staple — the exam reliably asks which tier includes a 24/7 phone line, which includes a TAM, which has all Trusted Advisor checks — and the same knowledge keeps you from over- or under-paying AWS by a four-figure sum a year in real life. Then the second half: how to walk into the exam confident, what to do in the test centre, and where to go after you pass. Read on fellow hungovercoder.

This lesson is dataGriff's path through AWS Support plans and exam day. The canonical sources are the [AWS Support Plans comparison page](https://aws.amazon.com/premiumsupport/plans/), the [AWS Trusted Advisor documentation](https://docs.aws.amazon.com/awssupport/latest/user/trusted-advisor.html), and (for exam day) the [AWS Certified Cloud Practitioner page](https://aws.amazon.com/certification/certified-cloud-practitioner/) — use this alongside, not instead of, those.

## Pre-Requisites

- Lessons 01–13 done
- An exam booked. If not, go back to lesson 01.

## The Five Support Tiers

| Tier | Cost | Response time (production system down) | What you get |
|---|---|---|---|
| **Basic** | Free | n/a — no technical support | Account/billing only. 7 core Trusted Advisor checks. Personal Health Dashboard. |
| **Developer** | $29/month or 3% of usage | 12 business hours (general guidance) | Email support during business hours. Best practice guidance. |
| **Business** | $100/month or tiered % of usage | 1 hour | 24/7 phone + chat + email. **Full Trusted Advisor** check set. AWS Health API access. |
| **Enterprise On-Ramp** | $5,500/month minimum | 30 minutes | Everything in Business + **pool of Technical Account Managers (TAMs)**. |
| **Enterprise** | $15,000/month minimum | 15 minutes | Everything in On-Ramp + **dedicated TAM** + **Concierge support team** for billing/account issues. |

The trigger phrases the exam uses to choose the tier:

| Phrase | Tier |
|---|---|
| "Free" / "billing-only support" | **Basic** |
| "Email-only / cheapest paid tier" | **Developer** |
| "24/7 phone / **production** workloads / full Trusted Advisor" | **Business** |
| "Pool of TAMs / cost guidance / 30-minute response" | **Enterprise On-Ramp** |
| "Dedicated TAM / 15-minute response / Concierge" | **Enterprise** |

> **Exam reflex:** any question mentioning **"24/7 phone support for production workloads"** → **Business** (or higher). Any question mentioning **"dedicated TAM"** → **Enterprise**. Any question mentioning **"Concierge billing support"** → **Enterprise** (Enterprise On-Ramp doesn't get Concierge).

## Trusted Advisor — What You Get at Each Tier

| Tier | Trusted Advisor coverage |
|---|---|
| Basic / Developer | 7 core security and service-limit checks |
| Business / Enterprise On-Ramp / Enterprise | **All** checks (security, cost optimisation, performance, fault tolerance, service limits) + API access |

The 7 core checks available to everyone are worth knowing for the exam — they cover **S3 bucket public access**, **MFA on root**, **security group risk**, **IAM access keys age**, **EBS public snapshots**, **RDS public access**, and **service limit usage**. The point of free Basic-tier Trusted Advisor is *"AWS will flag the most basic mistakes for you even without paying"*.

## AWS Health Dashboard vs Personal Health Dashboard

AWS renamed these in 2022 and the exam still tests both names:

- **AWS Service Health Dashboard** (old name) / **AWS Health Dashboard — Service Health** (new) — public, anyone-can-read status of AWS services globally
- **Personal Health Dashboard** (old) / **AWS Health Dashboard — Your Account Health** (new) — events specific to *your* account and Regions

The exam phrase **"events that specifically affect my AWS account"** maps to Personal/Your Account Health. The phrase **"general status of AWS services worldwide"** maps to Service Health.

## A Note on Trusted Advisor vs Inspector vs Config

These three sometimes show up in the same question:

- **Trusted Advisor** — best-practice recommendations across security, cost, performance, fault tolerance, limits
- **Inspector** — vulnerability scanning for EC2, Lambda, ECR (covered lesson 05)
- **Config** — resource state and compliance over time (covered lesson 05, lesson 10)

The discriminator: Trusted Advisor is **general advice across the whole account**. Inspector is **specific to compute vulnerabilities**. Config is **about resource configuration over time**.

## Exam Day — The Practical Bit

Whether you're sitting Pearson VUE or online proctored, the same playbook works:

**Two days before**

- Take one final Tutorials Dojo practice exam. Don't grind beyond this — you've either got it or you don't, and panic-revision the night before makes it worse.
- Re-read this lesson and lesson 12 (Organizations) — the highest-yield two lessons for the marks-per-minute trade-off.
- Sleep eight hours. The exam runs 90 minutes and concentration matters more than knowledge in the second half.

**The day of**

- Eat breakfast. Drink water. Don't do anything caffeinated you haven't done before — the exam is not the day to try a new energy drink.
- Arrive 15 minutes early (Pearson VUE) or check the room and webcam 15 minutes early (online).
- Photo ID matches your AWS Certification name *exactly*. If you registered as "Richard Griffiths" and your ID says "Richard James Griffiths", contact AWS support before exam day, not on it.

**During the exam**

- **Read every question twice.** Half the marks are lost to skim-reading on a single qualifying word (MOST, LEAST, NOT, ALWAYS).
- **Flag uncertain answers** and move on. Don't burn 5 minutes on one question — the scoring is scaled, so you might still be picking up easier marks elsewhere.
- **Eliminate the obvious wrong answers first.** Often you can get from 4 options to 2 quickly, then it's a 50/50 from real knowledge.
- **Stand up at the 45-minute mark.** No actually, you can't, you're in a proctored exam. But mentally reset. Take a breath. The second half is when fatigue costs points.
- **Answer everything.** No penalty for wrong answers. If you don't know, guess intelligently and flag for review if there's time.

**After**

- Most candidates get a provisional pass/fail on screen immediately. The official result lands in your inbox within five business days.
- If you fail, you can re-sit in 14 days. AWS doesn't tell you which questions you got wrong — there's no remediation report. Use what you remember to identify weak domains, study those specifically.

## I'll Be Honest

The first time I sat an AWS exam I overcaffeinated and started misreading question stems by question 30. I passed, but only just, and only because the questions I missed in the second half were the easier ones that didn't need careful reading. The lesson: **manage your energy, not just your knowledge**. The exam is as much an attention test as a vocabulary test, and a well-rested candidate at 70% knowledge beats a tired one at 85%.

## What's Next After You Pass

The CLF-C02 path has two reasonable continuations:

| Next exam | When to take it | What it tests |
|---|---|---|
| **Solutions Architect Associate (SAA-C03)** | If you build or design AWS workloads | Architecting for cost, performance, security, reliability |
| **Developer Associate (DVA-C02)** | If you write code that runs on AWS | Lambda, DynamoDB, SDK usage, CI/CD |
| **SysOps Administrator Associate (SOA-C02)** | If you operate AWS at scale | Monitoring, automation, deployment, incident response |

For most CLF-C02 passers, **SAA-C03 is the natural next step** — it has the broadest scope and is the most respected by employers. The jump from CLF-C02 to SAA-C03 is significant; budget 6–10 weeks rather than the 2–4 you spent on Foundational. Same tooling stack: lessons-style learning + Tutorials Dojo practice exams + booking the exam to force a deadline.

## Have a Go

1. **Match each support tier** from memory to its response time and key feature. Five tiers, five response times, five top features. If you can do it without looking, you've got the section.
2. **Run Trusted Advisor** in your account (free Basic tier shows the 7 core checks). Fix any of the 7 that flag — bonus points for fixing them before exam day so you can talk about it confidently.
3. **Find the AWS Health Dashboard** in your account console and look at *Your Account Health*. Note any open events. If there are none, that's the empty-state worth recognising on exam day.
4. **Book the exam if you haven't already.** This is the final reminder.

## Would I Pay for AWS Support in Production?

Honestly, yes — at least Business tier. The 24/7 phone line has earned its keep three times for me in five years (production EKS upgrade gone sideways at 2am, a region-wide IAM weirdness, a billing query that needed someone to actually read the bill). Below Business tier, you're either solving it yourself or filing a forum post and hoping. $100/month for production peace of mind is cheap.

For a hobby account or a learning environment, Basic is fine — you can always upgrade to Developer or Business at any time without penalty. AWS prorates support charges and lets you change tiers freely. The exam tests this because customers regularly come out of Foundational training thinking they need Business support; for many small workloads, they don't.

If I were doing this lesson again I'd put the support tier table at the very top — it's the densest exam-yield content in the whole lesson and people get tired by the bottom of the page. Lead with what pays best.

## Sample exam questions

### Q1. A company runs production workloads on AWS and requires 24/7 phone, chat, and email support with a 1-hour response time for production system down events. Which AWS Support plan is the MINIMUM that meets this requirement?

- A. Basic
- B. Developer
- C. Business
- D. Enterprise

<details>
<summary>Answer</summary>

**C.** Business is the lowest tier with 24/7 phone/chat/email and a 1-hour production-down response time. Developer (B) is email-only during business hours; Enterprise On-Ramp and Enterprise (D) exceed the requirement (and cost much more).
</details>

### Q2. A large company requires a dedicated Technical Account Manager (TAM) and 15-minute response time for business-critical system down events. Which AWS Support plan meets this requirement?

- A. Business
- B. Enterprise On-Ramp
- C. Enterprise
- D. Developer

<details>
<summary>Answer</summary>

**C.** Only Enterprise provides a *dedicated* TAM and 15-minute response. Enterprise On-Ramp (B) gives a *pool* of TAMs and 30-minute response; Business (A) has neither a TAM nor 15-minute response.
</details>

### Q3. Which AWS service provides best-practice recommendations across the five categories of cost optimisation, performance, security, fault tolerance, and service limits?

- A. AWS Config
- B. AWS Trusted Advisor
- C. AWS Inspector
- D. AWS Health Dashboard

<details>
<summary>Answer</summary>

**B.** Trusted Advisor is the cross-category best-practice tool. Inspector (C) is vulnerability scanning for compute; Config (A) is resource state and compliance; Health Dashboard (D) shows AWS service health events.
</details>

### Q4. Where can a customer view AWS service events that specifically affect resources in their own account?

- A. AWS Service Health Dashboard (public)
- B. AWS Personal Health Dashboard (now AWS Health — Your Account Health)
- C. AWS Trusted Advisor
- D. AWS Config

<details>
<summary>Answer</summary>

**B.** Personal Health Dashboard (renamed to *AWS Health — Your Account Health*) shows events specific to the customer's account. Service Health Dashboard (A) is global and public, not account-specific.
</details>

### Q5. A start-up wants the cheapest AWS Support plan that provides any technical assistance (not just billing). Which plan should they choose?

- A. Basic
- B. Developer
- C. Business
- D. Enterprise

<details>
<summary>Answer</summary>

**B.** Developer is the entry-level paid tier ($29/month minimum) and the first that includes technical support. Basic (A) is free but offers only account/billing support, no technical guidance.
</details>

## Sources and further reading

- [AWS Support Plans comparison](https://aws.amazon.com/premiumsupport/plans/) — canonical tier-by-tier feature matrix with current pricing
- [AWS Trusted Advisor documentation](https://docs.aws.amazon.com/awssupport/latest/user/trusted-advisor.html) — the cross-category best-practice tool and which checks come with which support tier
- [AWS Health Dashboard](https://aws.amazon.com/premiumsupport/technology/aws-health-dashboard/) — Service Health (public) and Your Account Health (private) status
- [AWS Certified Cloud Practitioner](https://aws.amazon.com/certification/certified-cloud-practitioner/) — official exam page, registration, current fees, sample questions
- [AWS Certification Roadmap](https://aws.amazon.com/certification/) — the Foundational / Associate / Professional / Specialty progression after passing CLF-C02
- [Tutorials Dojo CLF-C02 practice exams](https://portal.tutorialsdojo.com/courses/aws-certified-cloud-practitioner-practice-exams-clf-c02/) — the practice exam set worth taking before exam day
- See **[Lesson 15 — References and Further Reading](https://hungovercoders.com/training/aws-fundamentals/15-references-and-further-reading)** for the consolidated series-wide reference page

---

Well done on the substance lesson, fellow hungovercoder. You've covered the cloud value proposition, the global infrastructure, IAM in all its flavours, the shared responsibility model, the compute / storage / database / networking / integration / analytics / AI services, Organizations and multi-account, pricing and cost management, and now Support. Fourteen substance lessons, 65+ sample exam questions, the right mental shortcuts to read a CLF-C02 stem and pick the right answer in 80 seconds.

On to lesson 15 — a single page collecting every authoritative AWS reference and external resource this series leans on. It's the bookmark for the day after you pass, when you actually need to look something up. Bring the beer.
