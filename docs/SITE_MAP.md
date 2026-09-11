# Workfriend.ai Site Map

Last checked: 2026-09-11

Source: public site, public `robots.txt`, public Ghost sitemaps, and read-only HTTP checks.

## 1. Main navigation pages

The visible Ghost navigation appears consistently across checked pages:

- `About` -> `https://www.workfriend.ai/about/`
- `Articles` -> `https://www.workfriend.ai/articles/`
- `Playbooks` -> `https://www.workfriend.ai/coming-soon-2/`
- `Home` -> `https://www.workfriend.ai/hello/`
- `Sign in` -> Ghost Portal `#/portal/signin`
- `Subscribe` -> Ghost Portal `#/portal/signup`

Primary public pages:

- `https://www.workfriend.ai/` - root landing page; redirects from `https://workfriend.ai/`.
- `https://www.workfriend.ai/hello/` - home page duplicate/variant with the same "Smart tools for connected people" landing content.
- `https://www.workfriend.ai/about/` - owner/site positioning page for Kevin Edwards and Workfriend.ai.
- `https://www.workfriend.ai/articles/` - article index.
- `https://www.workfriend.ai/articles/page/2/` - second article index page.
- `https://www.workfriend.ai/coming-soon-2/` - under-construction page used by the Playbooks nav item.

Observed issue:

- `https://www.workfriend.ai/playbooks/` returns `404`, even though "Playbooks" exists as a nav concept. The current nav target is `coming-soon-2`, not `/playbooks/`.
- The article index exposes `https://www.workfriend.ai/page/2/` as a "See all" link; that URL returns `404`. `https://www.workfriend.ai/articles/page/2/` returns `200`.

## 2. Hidden/non-nav utility pages

These pages are public and listed in the Ghost page sitemap, but are not part of the visible main navigation:

- `https://www.workfriend.ai/stevo-tools/` - private utility page; button triggers a Steve financial crime job scrape via Google Apps Script.
- `https://www.workfriend.ai/kev-tools/` - private utility page; buttons trigger AI/digital and PM job scrapes via Google Apps Script.
- `https://www.workfriend.ai/site-resources/` - resource/download page for `Stakeholder_Happiness_Playbook_v1.pdf`.
- `https://www.workfriend.ai/for-subscribing/` - subscriber/free-playbook landing page; says subscriber system is still being wired up.
- `https://www.workfriend.ai/open-ended-questions-to-ask/` - private-looking interview/prep notes.
- `https://www.workfriend.ai/payroll-process-overview-plain-language/` - private-looking payroll explanation notes.
- `https://www.workfriend.ai/payroll-operations-details/` - private-looking payroll grounding notes.
- `https://www.workfriend.ai/crystal-speak-her-lingo/` - private-looking interview/prep notes.

## 3. Portfolio pages

Portfolio landing pages:

- `https://www.workfriend.ai/kevin-edwards-data-ai-pm/` - Data / AI Project Manager portfolio page.
- `https://www.workfriend.ai/kevin-edwards-snr-cloud-infrastructure-project-manager/` - Senior Cloud & Infrastructure Project Manager portfolio page.
- `https://www.workfriend.ai/senior-pm/` - Senior Project Manager portfolio page.
- `https://www.workfriend.ai/hcm-delivery-lead-project-manager/` - HCM Delivery Lead / Project Manager portfolio page.
- `https://www.workfriend.ai/kevin-edwards-senior-project-manager/` - alternate Senior Project Manager portfolio page.

Portfolio/case-study detail pages:

- `https://www.workfriend.ai/crm-event-mgmt-service-rollout/`
- `https://www.workfriend.ai/major-govt-dept-bi-program/`
- `https://www.workfriend.ai/full-hcm-systems-uplift-national-insurance-brand/`
- `https://www.workfriend.ai/multi-state-payroll-migration-for-a-national-retail-group/`
- `https://www.workfriend.ai/successfactors-w-payroll-project-stages/`
- `https://www.workfriend.ai/complex-hcm-integrations-national-insurance-brand/`
- `https://www.workfriend.ai/replacing-legacy-hcm-to-give-the-business-room-to-grow/`

Observed issue:

- `https://www.workfriend.ai/kevin-edwards-senior-project-manager/` links to these missing URLs:
  - `https://www.workfriend.ai/integrated-crm-event-management-platform/` - `404`
  - `https://www.workfriend.ai/national-hardware-logistics-transformation/` - `404`

## 4. Tool/application pages

- `https://www.workfriend.ai/re-humanizer/` - public Rehumanizer launch page. CTA links to Hugging Face Space `https://ausadmin-wai-re-humanizer.hf.space/?ref=workfriend.ai`, which returned `200` during read-only check.
- `https://www.workfriend.ai/chat/` - WAI chat launch page. CTA links to `https://ausadmin-cavebot-0-3-9-modular-separate-user-act-e5785cb.hf.space/chatbot?ref=workfriend.ai`, which returned `503` during read-only check.
- `https://www.workfriend.ai/bounce/` - chatbot redirect page. CTA links to `https://ausadmin-cavebot-0-3-9-modular-separate-user-act-e5785cb.hf.space/?ref=workfriend.ai`, which returned `503` during read-only check.
- `https://www.workfriend.ai/chatbot-test-page/` - older chat test page. Links to a Hugging Face Space page and contains placeholder-looking image URL `https://your-image-url-here.png`.
- `https://www.workfriend.ai/untitled-copy/` - duplicate/unfinished chat launch copy.
- `https://www.workfriend.ai/tiles-layout-test/` - layout test page containing portfolio tile content.

## 5. External services or linked apps

Visible external dependencies from public HTML:

- Ghost CMS and theme assets:
  - `https://workfriend-ai-3.ghost.io/ghost/api/content/`
  - Ghost Portal via `https://cdn.jsdelivr.net/ghost/portal@~2.71/umd/portal.min.js`
  - Ghost search via `https://cdn.jsdelivr.net/ghost/sodo-search@~1.8/umd/sodo-search.min.js`
  - `https://www.workfriend.ai/webmentions/receive/`
- Storage/images/files:
  - `https://storage.ghost.io/...`
  - `https://www.workfriend.ai/content/files/2025/09/Stakeholder_Happiness_Playbook_v1.pdf`
- MailerLite:
  - `https://assets.mailerlite.com/js/universal.js`
- Hugging Face:
  - Rehumanizer app: `https://ausadmin-wai-re-humanizer.hf.space/?ref=workfriend.ai`
  - WAI chat app: `https://ausadmin-cavebot-0-3-9-modular-separate-user-act-e5785cb.hf.space/chatbot?ref=workfriend.ai`
  - WAI chat app root: `https://ausadmin-cavebot-0-3-9-modular-separate-user-act-e5785cb.hf.space/?ref=workfriend.ai`
  - Hugging Face Space page: `https://huggingface.co/spaces/ausadmin/cavebot-0-3-9-modular-separate-user-act-e5785cb?__theme=light`
- Google Apps Script job-scraper endpoints:
  - `https://script.google.com/macros/s/AKfycbxMiukuAVIgK_NXQMmcex-pJlg-eru-1lJ3-csYb7q2kC7qKA8xg0qvmjYUA2TNLbfC/exec?taskType=STEVE`
  - `https://script.google.com/macros/s/AKfycbzZIwmE_00Ro6EzOzDIxewr4IfrXBhBOtpT99uJ2DHk2fSBRo7ElJ1ab44wkr6XI1NH/exec?taskType=AI`
  - `https://script.google.com/macros/s/AKfycbzb64LHqCc6UuAVqGITCQatusWSW4Ykp-XcnL8VqCGNF83QKzHKLBYuc_b4TAeWhp0uJA/exec`
- Social/external links:
  - `https://www.linkedin.com/in/kevin-edwards-28260b9/?ref=workfriend.ai`
  - `https://www.linkedin.com/?ref=workfriend.ai`
  - default-looking Ghost social links to `https://x.com/ghost` and `https://www.facebook.com/ghost`
  - `https://ghost.org/`

Theme-level issue:

- Many pages expose injected chat links labelled "Chat with Workfriend" and "WAI Chat" with unresolved template placeholders: `${INTERNAL_PATH}` and `${MOBILE_ROOT_URL}`. The script body also defines real values, so this may be a rendering/injection bug or stale markup.
