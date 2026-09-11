# Agent Operating Rules

Read `README.md`, `PRODUCT.md`, `CURRENT_STATE.md`, `BACKLOG.md` and `DECISIONS.md` before making material changes.

## Working principles

Prefer:

- working software over elaborate architecture;
- small reversible changes over broad rewrites;
- fixing broken things before adding features;
- existing infrastructure over new services;
- the smallest useful end-to-end improvement;
- testing before declaring work complete.

## Before material changes

- understand the affected component;
- preserve the current working state;
- create a recoverable checkpoint where appropriate;
- identify the smallest safe change;
- avoid introducing paid services without approval.

## After changes

- test the affected user journey;
- correct obvious failures;
- update `CURRENT_STATE.md` if the state has materially changed;
- record important decisions in `DECISIONS.md`;
- add worthwhile future work to `BACKLOG.md`.

## Escalate before

- spending money;
- changing production DNS or domains;
- altering billing or authentication;
- deleting important data or working functionality;
- making difficult-to-reverse infrastructure changes;
- making major product or branding decisions with genuinely different options;
- inventing facts about the owner, projects, clients, outcomes or achievements.

## Authentication

Never request passwords, API keys or secrets in chat.

If authentication is required, pause and ask the user to authenticate using the available secure interface.

## When blocked

Investigate reasonable alternatives before escalating.

Do not turn minor uncertainty into unnecessary user questions.
