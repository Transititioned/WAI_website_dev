@echo off
setlocal

echo.
echo Setting up WAI_website_dev agent workspace...
echo.

REM Create folders
mkdir website 2>nul
mkdir rehumanizer 2>nul
mkdir rfp-evaluator 2>nul
mkdir experiments 2>nul
mkdir docs 2>nul

REM README.md
(
echo # WAI Website Dev
echo.
echo Shared development workspace for Workfriend.ai.
echo.
echo This repository is the durable home base for AI-assisted development across Astra, Codex, Claude and other models.
echo.
echo ## Main areas
echo.
echo - `website/` - main Workfriend.ai website
echo - `rehumanizer/` - Rehumanizer app/tool
echo - `rfp-evaluator/` - RFP evaluation tool
echo - `experiments/` - prototypes and experimental work
echo - `docs/` - supporting documentation
echo.
echo ## Agent workflow
echo.
echo Before making changes, read:
echo.
echo 1. `AGENTS.md`
echo 2. `PRODUCT.md`
echo 3. `CURRENT_STATE.md`
echo 4. `BACKLOG.md`
echo 5. `DECISIONS.md`
echo.
echo Keep this repository as the source of truth for current state, important decisions and future work.
) > README.md

REM AGENTS.md
(
echo # Agent Operating Rules
echo.
echo Read `README.md`, `PRODUCT.md`, `CURRENT_STATE.md`, `BACKLOG.md` and `DECISIONS.md` before making material changes.
echo.
echo ## Working principles
echo.
echo Prefer:
echo.
echo - working software over elaborate architecture;
echo - small reversible changes over broad rewrites;
echo - fixing broken things before adding features;
echo - existing infrastructure over new services;
echo - the smallest useful end-to-end improvement;
echo - testing before declaring work complete.
echo.
echo ## Before material changes
echo.
echo - understand the affected component;
echo - preserve the current working state;
echo - create a recoverable checkpoint where appropriate;
echo - identify the smallest safe change;
echo - avoid introducing paid services without approval.
echo.
echo ## After changes
echo.
echo - test the affected user journey;
echo - correct obvious failures;
echo - update `CURRENT_STATE.md` if the state has materially changed;
echo - record important decisions in `DECISIONS.md`;
echo - add worthwhile future work to `BACKLOG.md`.
echo.
echo ## Escalate before
echo.
echo - spending money;
echo - changing production DNS or domains;
echo - altering billing or authentication;
echo - deleting important data or working functionality;
echo - making difficult-to-reverse infrastructure changes;
echo - making major product or branding decisions with genuinely different options;
echo - inventing facts about the owner, projects, clients, outcomes or achievements.
echo.
echo ## Authentication
echo.
echo Never request passwords, API keys or secrets in chat.
echo.
echo If authentication is required, pause and ask the user to authenticate using the available secure interface.
echo.
echo ## When blocked
echo.
echo Investigate reasonable alternatives before escalating.
echo.
echo Do not turn minor uncertainty into unnecessary user questions.
) > AGENTS.md

REM PRODUCT.md
(
echo # Product
echo.
echo ## Workfriend.ai
echo.
echo Workfriend.ai is intended to be a credible professional home for practical work in:
echo.
echo - AI transformation and enablement;
echo - enterprise AI adoption;
echo - AI governance;
echo - project and transformation delivery;
echo - practical AI tools and experiments.
echo.
echo ## Product principle
echo.
echo A few useful, working and clearly explained things are better than many half-built experiments.
echo.
echo ## Primary objective
echo.
echo Make Workfriend.ai useful as:
echo.
echo - a professional portfolio;
echo - a demonstration of practical AI capability;
echo - a catalogue of useful tools and experiments;
echo - a source of informed thinking about AI, delivery and transformation.
echo.
echo ## Current priority
echo.
echo Stabilise and improve the existing site before expanding the product portfolio.
) > PRODUCT.md

REM CURRENT_STATE.md
(
echo # Current State
echo.
echo Last updated: %date%
echo.
echo ## Website
echo.
echo Status: Live, but requires review and cleanup.
echo.
echo Known or suspected issues:
echo.
echo - navigation and site structure need review;
echo - some content may be unfinished or outdated;
echo - some product links may be broken;
echo - mobile and visual consistency need checking.
echo.
echo ## Rehumanizer
echo.
echo Status: Partially built / needs inspection.
echo.
echo Known issue:
echo.
echo - deployment or linking may currently be broken.
echo.
echo ## RFP Evaluator
echo.
echo Status: Prototype exists from earlier collaborative development.
echo.
echo Next step:
echo.
echo - inspect current implementation, deployment and user experience.
echo.
echo ## Other experiments
echo.
echo Status: Inventory required.
echo.
echo ## Current priority
echo.
echo Establish a safe baseline, verify backups, inspect the live site and identify the smallest high-value repair.
) > CURRENT_STATE.md

REM BACKLOG.md
(
echo # Backlog
echo.
echo Keep this list short and useful.
echo.
echo ## Now
echo.
echo - Inspect current Workfriend.ai architecture and deployment.
echo - Confirm backup and recovery approach.
echo - Inventory major pages, tools and obvious broken journeys.
echo - Fix the smallest high-value visible issue first.
echo.
echo ## Next
echo.
echo - Review navigation and information hierarchy.
echo - Check Rehumanizer deployment/linking.
echo - Review RFP Evaluator integration and presentation.
echo - Review mobile usability.
echo - Remove or de-emphasise unfinished material that damages credibility.
echo.
echo ## Later
echo.
echo - Improve portfolio presentation.
echo - Improve product/tool discovery.
echo - Add genuinely useful new capabilities only after existing material is stable.
) > BACKLOG.md

REM DECISIONS.md
(
echo # Decisions
echo.
echo Record only decisions worth remembering across models and sessions.
echo.
echo ---
echo.
echo ## Repository role
echo.
echo Decision:
echo.
echo This repository is the shared source of truth for Workfriend.ai development across AI models and development tools.
echo.
echo Rationale:
echo.
echo Important project state should survive individual chat sessions and model changes.
echo.
echo ---
echo.
echo ## Development philosophy
echo.
echo Decision:
echo.
echo Prefer MVP, reversible changes and working end-to-end slices over broad redesigns.
echo.
echo Rationale:
echo.
echo The goal is to reduce unfinished work and create visible value quickly.
echo.
) > DECISIONS.md

echo.
echo ------------------------------------------
echo WAI_website_dev workspace created.
echo ------------------------------------------
echo.
echo Created:
echo   README.md
echo   AGENTS.md
echo   PRODUCT.md
echo   CURRENT_STATE.md
echo   BACKLOG.md
echo   DECISIONS.md
echo.
echo Folders:
echo   website
echo   rehumanizer
echo   rfp-evaluator
echo   experiments
echo   docs
echo.
pause