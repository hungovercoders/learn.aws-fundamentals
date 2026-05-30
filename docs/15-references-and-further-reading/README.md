---
title: "References and Further Reading"
series: aws-fundamentals
order: 15
description: "Every authoritative AWS reference, recommended alternative path, practice exam vendor, and community resource this series leans on — the bookmark page for after you pass"
canonical_url: https://hungovercoders.com/training/aws-fundamentals/15-references-and-further-reading
---

I wanted one page I could bookmark for the day after the exam — the consolidated list of every authoritative reference this series points at, every alternative learning path I recommend, every practice tool that actually moves the pass rate, and the communities worth following. Lessons 01–14 each had their own Sources sections; this lesson is all of that in one place plus the broader context that didn't fit in any single lesson.

This lesson is the series-wide reference page. The canonical sources for everything CLF-C02 are below — open them when you need authoritative detail and treat this series as the guided path through them, not the source itself.

## Pre-Requisites

- None. This lesson is the appendix, not the conclusion. Read it whenever you need it.

## The Canonical AWS References

These are the AWS-published pages every CLF-C02 candidate should bookmark. Open the relevant one when a lesson question feels under-explained.

| Reference | What it gives you |
|---|---|
| [AWS Certified Cloud Practitioner](https://aws.amazon.com/certification/certified-cloud-practitioner/) | Official exam page, registration, current fees, official exam guide PDF, sample questions |
| [AWS Documentation](https://docs.aws.amazon.com/) | Umbrella entry to every service's official docs |
| [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html) | The canonical six-pillars reference |
| [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/) | Current Region / AZ / Edge Location list, always up to date |
| [AWS Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/) | The official customer-vs-AWS split |
| [AWS Pricing](https://aws.amazon.com/pricing/) | Per-service pricing pages |
| [AWS Pricing Calculator](https://calculator.aws/) | Pre-deployment cost estimation |
| [AWS Support Plans comparison](https://aws.amazon.com/premiumsupport/plans/) | Canonical tier-by-tier feature matrix |
| [AWS Architecture Center](https://aws.amazon.com/architecture/) | Reference architectures by use case — useful after CLF-C02, essential for SAA-C03 |
| [AWS Trust Center](https://aws.amazon.com/security/) | Public security and compliance landing page |

## The Per-Domain Cheat Sheet

The authoritative reference per CLF-C02 domain:

| Domain | Canonical reference |
|---|---|
| **Cloud Concepts** (24%) | [Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html) + [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/) |
| **Security & Compliance** (30%) | [Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/) + [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) + [AWS Security catalogue](https://aws.amazon.com/products/security/) |
| **Cloud Technology & Services** (34%) | [AWS Products A–Z](https://aws.amazon.com/products/) — every service with its one-line job |
| **Billing, Pricing & Support** (12%) | [AWS Pricing](https://aws.amazon.com/pricing/) + [AWS Support Plans](https://aws.amazon.com/premiumsupport/plans/) + [AWS Billing User Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html) |

If you're stuck on a question, find the domain it's in and read the canonical reference for that domain. It's faster than re-reading a whole lesson.

## Recommended Alternative Paths

Different voices work for different readers, and the canonical source is the same either way. If hungovercoders isn't landing for you, try:

| Resource | When to reach for it | Cost |
|---|---|---|
| [Stéphane Maarek — CLF-C02 course (Udemy)](https://www.udemy.com/course/aws-certified-cloud-practitioner-new/) | Video-led learner; clearest structure of the popular video courses | ~£15 on sale (Udemy is always on sale) |
| [Adrian Cantrill — Cloud Practitioner course](https://learn.cantrill.io/p/aws-certified-cloud-practitioner) | Deeper-than-Foundational labs; the right pick if you intend to push on to SAA-C03 | Mid-range subscription |
| [AWS Skill Builder — Cloud Practitioner Essentials](https://explore.skillbuilder.aws/learn/learning_plan/view/82/plan) | AWS's own vendor-canonical pacing; free | Free |
| [Neal Davis — Digital Cloud Training](https://digitalcloud.training/aws-certified-cloud-practitioner/) | Concise written + video hybrid; good "second voice" if you got stuck on one teacher | ~£20 |

## Practice and Reinforcement

The single biggest pass-rate lever after working through any tutorial series:

| Resource | What it gives you |
|---|---|
| [Tutorials Dojo CLF-C02 practice exams](https://portal.tutorialsdojo.com/courses/aws-certified-cloud-practitioner-practice-exams-clf-c02/) | Six full-length practice exams with detailed explanations. Worth taking three of these in the week before the real exam. ✅ |
| [AWS Skill Builder — official CLF-C02 sample questions (free)](https://explore.skillbuilder.aws/learn/course/12483/aws-certified-cloud-practitioner-official-question-set-clf-c02-english) | 20 free questions in AWS's house style — useful calibration before paid practice exams |
| [AWS Skill Builder — Cloud Quest: Cloud Practitioner](https://explore.skillbuilder.aws/learn/course/external/view/elearning/11458/aws-cloud-quest-cloud-practitioner) | Free gamified walkthrough; useful in parallel with the compute / storage / database lessons of this series |

## Communities

Where to listen when you want fresh ground-truth on the exam:

- [AWS re:Post](https://repost.aws/) — AWS's own community Q&A, supersedes the old AWS Forums
- [r/AWSCertifications](https://www.reddit.com/r/AWSCertifications/) — pass-rate stories, fresh exam impressions, voucher promos
- [Tutorials Dojo Discord / forums](https://tutorialsdojo.com/) — practice exam discussions, errata
- [AWS blog](https://aws.amazon.com/blogs/aws/) — official launch announcements; useful as the canonical source for "what's new since I learned this"

## Where to Go After CLF-C02

The natural next exam, in order of how most CLF-C02 passers progress:

| Exam | Why this one next |
|---|---|
| [Solutions Architect Associate (SAA-C03)](https://aws.amazon.com/certification/certified-solutions-architect-associate/) | Most respected by employers; broadest scope; the standard "next step" for anyone designing or building on AWS |
| [Developer Associate (DVA-C02)](https://aws.amazon.com/certification/certified-developer-associate/) | If you write code on AWS — Lambda, DynamoDB, SDK fluency, CI/CD |
| [SysOps Administrator Associate (SOA-C02)](https://aws.amazon.com/certification/certified-sysops-admin-associate/) | If you operate AWS — monitoring, automation, deployment, incident response |

Budget 6–10 weeks for any of the Associate exams (vs the 2–4 you spent on Foundational). Same tooling stack — written guide + practice exams + booked exam date.

## How to Use This Lesson

Don't read it like a lesson. Bookmark it. Open it when:

- You're partway through a lesson in the series and want the authoritative AWS reference for the same topic
- You've failed (or aced) a practice exam and want to know what to study next
- You've passed CLF-C02 and need to pick your next certification
- A colleague asks "is hungovercoders the source of truth?" and you want to hand them the canonical reference instead

## Sources and further reading

This lesson IS the sources and further reading. Everything above is the reference set. There's nothing else to point at — you've reached the end of the trail.

---

That's the lot, fellow hungovercoder. Fifteen lessons. Fourteen substance lessons covering the four CLF-C02 domains, one prep lesson on booking the exam itself, and this — the bookmark page for everything the series leans on. 70 sample exam questions across the series, the right mental shortcuts to read a stem in 80 seconds, and a path to whichever Associate exam you sit next.

The exam's the easy bit now. You'll do fine. Go and pour yourself something cold — you've earned it.

Cheers.
