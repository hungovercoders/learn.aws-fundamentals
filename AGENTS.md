# learn.aws-fundamentals — agent context

## What this repo is

A public tutorial that takes a technically literate reader from "I have an AWS account" to **passing the AWS Certified Cloud Practitioner (CLF-C02) exam**. It covers all four exam domains (Cloud Concepts, Security & Compliance, Cloud Technology & Services, Billing/Pricing/Support) in roughly the weighting the exam uses, with hands-on lessons where the material benefits from doing it, and concept lessons where the exam tests recognition. It serves two purposes simultaneously:
1. A forkable, runnable tutorial people can `git clone` and work through directly against their own AWS account
2. A content source for `hungovercoders.com/training/aws-fundamentals`, where `docs/` files are rendered as lesson pages

## Repo layout

```
docs/   lesson directories in tutorial order — each contains README.md + (if hands-on) any example files referenced in the lesson
```

Every lesson is a directory under `docs/`. Hands-on lessons that demonstrate CLI commands, IAM policies, or infrastructure-as-code include the example files alongside `README.md`. Concept-only lessons have only `README.md`.

```
docs/01-what-is-aws/README.md              ← concept only
docs/03-aws-cli-setup/README.md            ← hands-on (commands the reader runs)
docs/05-s3-buckets/README.md               ← hands-on
docs/05-s3-buckets/policy.json             ← example IAM/bucket policy
docs/05-s3-buckets/cleanup.sh              ← teardown to avoid charges
docs/07-iam-policies/README.md
docs/07-iam-policies/example-policy.json
```

## Conventions

**Frontmatter is required on every `README.md`.** The site build fails without it. Required fields:

```yaml
---
title: "Human-readable title"
series: aws-fundamentals
order: N
description: "One sentence, no trailing period."
canonical_url: https://hungovercoders.com/training/aws-fundamentals/NN-slug
---
```

**Naming**: `docs/` directories use leading-zero numbering and kebab-case slugs — `01-what-is-aws`, `02-accounts-and-regions`, etc.

**Shell commands in lessons** are shown in fenced code blocks tagged ```bash. Where a command's output matters, show the output in a second block tagged ```text below the command.

**AWS CLI commands** assume the reader has run `aws configure` (covered in lesson 03) and has a default profile and region set. Don't sprinkle `--region` and `--profile` flags into every command — call them out once per lesson if they matter.

**Cost awareness is non-negotiable.** Every hands-on lesson that provisions a billable resource MUST:
- Call out free-tier eligibility (or lack of it) at the top of the lesson
- Provide a `cleanup.sh` or explicit teardown commands at the end
- Use the smallest viable resource (e.g. `t3.micro`, smallest S3 storage class, lowest Lambda memory)

**IAM examples** use least-privilege policies. No `"Action": "*"` or `"Resource": "*"` in any example outside the lesson that specifically explains why those are dangerous.

**Region pinning** — all examples use `eu-west-2` (London) unless a lesson specifically needs a different region (e.g. a service only available in `us-east-1`). Be consistent so screenshots and ARNs line up across lessons.

**Reader trust** — assume the reader has a terminal, a code editor, and an AWS account. Don't explain what a shell is, what JSON is, or how to sign up for AWS. Do explain anything AWS-specific (the shared responsibility model, IAM principals vs resources, the difference between a service role and an instance profile).

**No placeholder ARNs or account IDs** in policy files. Use `123456789012` as the canonical example account ID and call it out in the lesson so the reader knows to swap it.

## Sources convention (required on every lesson)

hungovercoders is dataGriff's path through the CLF-C02 syllabus — not the canonical source. Every lesson must include:

1. **A top framing line** placed immediately after the want-led opener, before pre-reqs. One or two sentences explicitly framing this series as the *guided path* and pointing at the canonical AWS reference for the lesson's topic. Example:

   > This lesson is dataGriff's path through the CLF-C02 Cloud Concepts domain. The canonical source is the [AWS Well-Architected Framework docs](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html); use this lesson alongside, not instead of, that.

2. **A `## Sources and further reading` section** placed *between* the sample exam questions and the closer. Structured list with:
   - The canonical AWS docs page(s) for this lesson's topic
   - 1–2 community alternatives (Maarek, Cantrill, Tutorials Dojo, AWS Skill Builder, etc.) where they exist
   - A short qualifier per link explaining why the reader would click it
   - A pointer to **Lesson 15 — References and Further Reading** (`docs/15-references-and-further-reading/`) for the consolidated series-wide reference page

The series-wide reference list is **Lesson 15 — References and Further Reading** at `docs/15-references-and-further-reading/README.md`. It's the customer-facing bookmark page listing every authoritative source the series points at, plus alternative learning paths, practice exam vendors, communities, and the post-CLF-C02 certification roadmap. Per-lesson Sources sections draw from the same canonical pool plus any lesson-specific authoritative pages.

## Exam-style sample questions (required on every lesson)

Every lesson MUST end with a `## Sample exam questions` section containing **exactly 5 CLF-C02-style multiple-choice questions** drawn from the lesson's material. This is the single biggest pass-rate lever the series has — readers learn AWS services from the prose, but they learn the *exam* from doing questions.

Each question follows this shape:

```markdown
### Q1. <stem in the AWS exam house style>

- A. <option>
- B. <option>
- C. <option>
- D. <option>

<details>
<summary>Answer</summary>

**B.** One- or two-sentence explanation that says *why* B is right and, where it matters, why a tempting distractor is wrong.
</details>
```

Question writing rules:
- Match the AWS exam house style: "A company wants to…", "Which AWS service…", "What is the MOST cost-effective…". No first-person, no jokes in the stem.
- 4 options (A–D). One correct answer (single-select) unless the lesson is on a topic that genuinely needs multi-select, in which case make it explicit ("Choose TWO").
- At least one distractor should be a service that's *plausibly* in the same category — exam questions punish reading too fast.
- Cover the high-yield facts from the lesson, not the weird edge cases. The exam tests the middle of the bell curve.
- The hungovercoders voice lives in the lesson prose, NOT in the questions. The questions read like AWS exam questions because that's the muscle being built.
