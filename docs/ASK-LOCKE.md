# Ask Locke — context-aware contract assistance

The assistant is intended to help a lawyer move through the contract matter already on screen, without turning a conversational answer into an unreviewed legal decision.

## What it helps with

| Situation | Example customer question | Implementation-oriented behavior |
|---|---|---|
| Understand the current agreement | "What does this termination clause require?" | Uses bounded contract context and returns an explanatory answer |
| Explore commercial exposure | "Which indemnity provisions favor the counterparty?" | Explains risk topics for counsel's evaluation rather than accepting risk automatically |
| Clarify a provision | "What is the renewal or notice window?" | Works from available matter text, disclosing excerpt limitations |
| Find a starting point | "I need a mutual confidentiality agreement" | Can recommend a governed library/template and a next workspace step |
| Move through the workflow | "Where do I review this document?" | Produces approved navigation actions and available workspace options |

## Intentional separation of responsibilities

- **Model response:** explanatory assistance or a structured recommendation.
- **Contract text:** the uploaded or assembled legal record, separately preserved.
- **Review disposition:** the lawyer's selected decision, reason, and assigned follow-up.
- **Approval:** a governed action related to the actual current document text.
- **Signature:** a separate consent/execution record.

An Ask Locke answer cannot substitute for a recorded approval or silently rewrite the underlying contract. Recommendations referencing templates are validated against actual catalog identifiers; fallback navigation suggestions are labeled as non-model suggestions when an AI provider is unavailable.

## Context and provider boundaries

For an on-contract question, the reviewed implementation sends a **bounded excerpt** of available contract source text, the user question, and selected matter information to a configured AI provider. The default excerpt size in the reviewed branch is **12,000 characters**, configurable by deployment; a response reports the amount read and must acknowledge partial coverage. The system treats counterparty-authored text as **untrusted data**, with prompt-injection handling and structured output validation.

The private application currently contains provider-routing and provenance code. **No claim is made that model processing is on-device, provider-free, or zero-retention**; specific provider settings and retention must be verified in the deployed environment and applicable policies. Use of AI remains optional to the extent exposed by the workspace; availability is configuration-dependent.

## Business value

Ask Locke is designed to reduce time spent locating the relevant document, rereading basic clauses, and navigating between screens, while making the model's role explicit and preserving the firm's decision-making authority.

[Guided drafting](GUIDED-DRAFTING.md) · [Privacy and security](PRIVACY-AND-SECURITY.md) · [Back to overview](../README.md)
