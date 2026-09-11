# Current Website Inventory

Last checked: 2026-09-11

Source: public Workfriend.ai pages, Ghost sitemaps, and read-only HTTP checks. No production changes were made.

## Summary

- Platform appears to be Ghost, using Ghost Portal, Sodo search, Ghost-hosted assets, and a Ghost content API endpoint.
- Main navigation: About, Articles, Playbooks, Home, Sign in, Subscribe.
- The public sitemap exposes many non-nav pages, including portfolio pages, case studies, tool pages, utility pages, test pages, and private-looking prep notes.
- Rehumanizer is externally hosted on Hugging Face and returned `200`.
- WAI chat Hugging Face app URLs returned `503`; the Hugging Face Space page returned `401`.
- Job-scraper utility pages expose Google Apps Script POST endpoints in public HTML.
- Several pages look unfinished, duplicated, private, experimental, or inconsistent with the polished portfolio/site objective.

## Page Inventory

| URL | Title | Category | Intended purpose | Navigation status | Major functionality | External dependencies | Obvious issues | Recommendation |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `https://www.workfriend.ai/` | workfriend.ai | Main navigation | Public landing page for Workfriend.ai. | Main/root | Hero, subscribe CTA, Ghost footer, injected chat CTA. | Ghost, Ghost Portal, MailerLite, storage.ghost.io, Hugging Face chat script. | Sparse homepage; default Ghost social links; unresolved chat placeholders visible in HTML. | Review |
| `https://www.workfriend.ai/hello/` | workfriend.ai | Main navigation | Home page target used by nav. | Main nav | Same "Smart tools for connected people" landing content. | Ghost, Ghost Portal, MailerLite, Hugging Face chat script. | Duplicates root landing content; Home nav points here instead of root. | Review |
| `https://www.workfriend.ai/about/` | About this site | Main navigation | Explain Workfriend.ai and Kevin Edwards positioning. | Main nav | About copy, LinkedIn links, subscribe CTA. | LinkedIn, Ghost, MailerLite. | Minor copy/punctuation polish needed; generic LinkedIn link also present. | Keep/fix |
| `https://www.workfriend.ai/articles/` | workfriend.ai (Page 1) | Articles | Article index. | Main nav | Lists latest posts and "See all". | Ghost, Ghost Portal, images. | "See all" exposes `/page/2/`, which returned `404`; correct page exists at `/articles/page/2/`. | Fix |
| `https://www.workfriend.ai/articles/page/2/` | workfriend.ai (Page 2) | Articles | Second article index page. | Linked from article pagination/correct URL | Lists older posts. | Ghost. | Pagination inconsistency from page 1. | Fix |
| `https://www.workfriend.ai/coming-soon-2/` | (Untitled) | Main navigation / placeholder | Playbooks placeholder page. | Main nav via Playbooks | Under-construction message. | Ghost, MailerLite. | Untitled; thin placeholder. Direct `/playbooks/` returns `404`. | Fix |
| `https://www.workfriend.ai/playbooks/` | 404 | Broken URL | Expected Playbooks slug. | Not current nav target, but obvious expected URL | None. | Ghost 404. | Broken direct URL for a nav concept. | Fix |
| `https://www.workfriend.ai/stevo-tools/` | Stevo tools | Utility | Private utility page for Steve financial crime job scrape. | Hidden/private utility | Button: "Run Steve Financial Crime Job Scrape"; POSTs with `mode: no-cors`. | Google Apps Script endpoint with `taskType=STEVE`; Ghost. | Publicly accessible utility trigger; no visible auth barrier. | Review |
| `https://www.workfriend.ai/kev-tools/` | Kev Tools | Utility | Kevin job-scraping console. | Hidden/private utility | Buttons: "Run AI & Digital Job Scrape" and "Run PM Job Scrape"; POSTs with `mode: no-cors`. | Two Google Apps Script endpoints; Ghost. | Publicly accessible scrape triggers; no visible auth barrier. | Review |
| `https://www.workfriend.ai/re-humanizer/` | Need content fast that still sounds like you? | Tool/application | Launch Rehumanizer tool for rewriting content and editorial support. | Tool, hidden/non-nav | CTA: "Launch Rehumanizer". | Hugging Face Space `ausadmin-wai-re-humanizer.hf.space`, Ghost. | App link returned `200`; page appears strategically relevant. | Keep/fix |
| `https://www.workfriend.ai/chat/` | Have questions - WAI loves to help | Tool/application | Launch WAI chat assistant. | Tool, hidden/non-nav | CTA: "Launch WAI Chat"; prompt suggestions. | Hugging Face Space app URL. | App URL returned `503`; no H1 in parsed page; chat placeholders visible in theme HTML. | Fix |
| `https://www.workfriend.ai/bounce/` | chatbot redirect | Tool/application | Redirect/launch page for WAI chat. | Hidden/tool | Redirect copy plus "Open Chat" CTA. | Hugging Face Space app root. | App URL returned `503`; page title and copy look technical/unfinished. | Review/fix |
| `https://www.workfriend.ai/chatbot-test-page/` | ChatBot test page | Tool/application / experiment | Older WAI chat test page. | Hidden/experimental | Chat launch/test content. | Hugging Face Space page, placeholder image URL. | Contains `https://your-image-url-here.png`; older app naming; likely stale. | Possibly retire |
| `https://www.workfriend.ai/untitled-copy/` | (Untitled) (Copy) | Tool/application / experiment | Duplicate chat launch copy. | Hidden/experimental | Chat launch CTA. | Hugging Face chat app. | Untitled copy page; duplicate/unfinished. | Possibly retire |
| `https://www.workfriend.ai/tiles-layout-test/` | tiles-layout-test | Experiment | Portfolio tile layout test. | Hidden/experimental | Tile/card layout content. | Ghost. | Test page publicly indexed in sitemap. | Possibly retire |
| `https://www.workfriend.ai/site-resources/` | site resources | Utility/resource | Host downloadable playbook resource. | Hidden/non-nav | PDF download for Stakeholder Happiness Playbook. | Ghost file storage. | Utility/resource page is public but not integrated clearly into nav. | Review |
| `https://www.workfriend.ai/for-subscribing/` | Join the WorkFriend community | Utility/resource | Subscriber free-playbook landing page. | Hidden/non-nav | Download playbook CTA. | Ghost file storage, MailerLite/Ghost subscription. | Copy says subscriber system is still being wired up. | Fix |
| `https://www.workfriend.ai/kevin-edwards-data-ai-pm/` | Kevin Edwards - Data and AI Project Manager | Portfolio | Data/AI PM portfolio page. | Portfolio, non-nav | Case-study tiles/expanders for BI, Azure analytics, CPS 234. | Ghost images. | In-page `#` links; long hidden/expanded content in HTML; not in main nav. | Keep/fix |
| `https://www.workfriend.ai/kevin-edwards-snr-cloud-infrastructure-project-manager/` | Kevin Edwards - Senior Cloud & Infrastructure Project Manager | Portfolio | Cloud/infrastructure PM portfolio page. | Portfolio, non-nav | Case-study tiles/expanders for cloud migrations and infrastructure modernisation. | Ghost images. | In-page `#` links; stray `+` visible in parsed content; not in main nav. | Keep/fix |
| `https://www.workfriend.ai/senior-pm/` | Kevin Edwards : Senior Project Manager | Portfolio | Senior PM portfolio page. | Portfolio, non-nav | Case-study tiles/expanders for CRM, logistics, WFM, BI. | Ghost images. | Some presentation/copy polish needed; not in main nav. | Keep/fix |
| `https://www.workfriend.ai/hcm-delivery-lead-project-manager/` | HCM Lead / Project Manager | Portfolio | HCM/payroll portfolio landing page. | Portfolio, non-nav | Links to three HCM/payroll case-study pages. | Ghost images. | Much thinner than other portfolio landing pages. | Keep/fix |
| `https://www.workfriend.ai/kevin-edwards-senior-project-manager/` | Kevin Edwards: Senior Project Manager | Portfolio | Alternate Senior PM portfolio page. | Portfolio, non-nav | Links to CRM, logistics, HCM uplift case studies. | Ghost. | Links to two missing case-study URLs. Appears to overlap with `/senior-pm/`. | Review/fix |
| `https://www.workfriend.ai/crm-event-mgmt-service-rollout/` | CRM & Event Mgmt Service Rollout | Portfolio detail | CRM/event management case study. | Hidden/portfolio detail | Case-study content. | Ghost. | Not clearly linked from current `/senior-pm/`; alternate page links to different missing slug. | Review |
| `https://www.workfriend.ai/major-govt-dept-bi-program/` | Major Govt Dept BI Program | Portfolio detail | Enterprise BI / Justice case study. | Hidden/portfolio detail | Case-study content. | Ghost. | Uses anonymised/generic title; discoverability unclear. | Review |
| `https://www.workfriend.ai/full-hcm-systems-uplift-national-insurance-brand/` | Full HCM Systems Uplift (National Insurance Brand) | Portfolio detail | HCM systems uplift case study. | Hidden/portfolio detail | Case-study content. | Ghost. | Public and sitemap-listed; not part of main nav. | Keep/review |
| `https://www.workfriend.ai/multi-state-payroll-migration-for-a-national-retail-group/` | Multi-State Payroll Migration for a National Retail Group | Portfolio detail | Payroll migration case study. | Linked from HCM portfolio | Case-study content; links to SuccessFactors project stages. | Ghost. | Text sample has rough wording: "retailer g integrated". | Fix |
| `https://www.workfriend.ai/successfactors-w-payroll-project-stages/` | SuccessFactors (w payroll) project stages | Portfolio/supporting note | Supporting SuccessFactors payroll project-stage notes. | Hidden/supporting | Explanatory project-stage content. | Ghost. | Looks like interview answer/prep note rather than polished site content. | Review |
| `https://www.workfriend.ai/complex-hcm-integrations-national-insurance-brand/` | Complex HCM Integrations (National Insurance brand) | Portfolio detail | HCM integration case study. | Linked from HCM portfolio | Case-study content. | Ghost. | Public and sitemap-listed; not part of main nav. | Keep/review |
| `https://www.workfriend.ai/replacing-legacy-hcm-to-give-the-business-room-to-grow/` | Replacing Legacy HCM to give the business room to grow | Portfolio detail | Legacy HCM replacement case study. | Linked from HCM portfolio | Case-study content. | Ghost. | Title capitalisation inconsistent. | Keep/fix |
| `https://www.workfriend.ai/open-ended-questions-to-ask/` | Open ended questions to ask | Private/prep notes | Interview or conversation prep notes. | Hidden/private-looking | Prep/game-plan content. | Ghost. | Public and sitemap-listed; contains personal/private-sounding prep notes. | Review/possibly retire |
| `https://www.workfriend.ai/payroll-process-overview-plain-language/` | Payroll process overview - plain language | Private/prep notes | Plain-language payroll process notes. | Hidden/private-looking | Payroll explanation content. | Ghost. | Public and sitemap-listed; likely not intended as polished public content. | Review |
| `https://www.workfriend.ai/payroll-operations-details/` | Payroll - Operations Details | Private/prep notes | Payroll grounding lines and operational detail notes. | Hidden/private-looking | Table/notes style content. | Ghost. | Public and sitemap-listed; reads like private prep material. | Review/possibly retire |
| `https://www.workfriend.ai/crystal-speak-her-lingo/` | Crystal - speak her lingo | Private/prep notes | Interview/person-specific prep notes. | Hidden/private-looking | Talking points. | Ghost. | Public and sitemap-listed; includes person-specific private-looking content. | Review/possibly retire |
| `https://www.workfriend.ai/articles/we-knew-this-in-the-1950s-but-still-kept-torturing-people-with-gannts/` | The Map is not the Territory! We knew this in the 1950s but still kept torturing people with GANNTs | Article | Project planning/thinking article. | Article index/sitemap | Blog post. | Ghost. | Title contains "GANNTs" spelling. | Fix |
| `https://www.workfriend.ai/articles/ai-polished-comms-but-whos-listening/` | AI-polished comms... but who's listening? | Article | AI/project communication article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/stakeholder-assessment/` | Stakeholders everywhere: Who to BFF, Who to Watch | Article | Stakeholder assessment article/playbook content. | Article index/sitemap | Blog post with stakeholder categories and engagement approaches. | Ghost images. | Minor typo observed: "thinkg". | Fix |
| `https://www.workfriend.ai/articles/6a00206df8c95000014a071f/` | Change Management at the messy start | Article | Change management article. | Article index/sitemap | Blog post. | Ghost. | Slug is opaque/generated rather than readable. | Fix/review |
| `https://www.workfriend.ai/articles/taking-the-wheel-the-art-of-the-project-takeover/` | Taking the Wheel: The Art of the Project Takeover | Article | Project takeover article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/keeping-the-handshakes-warm-when-taking-over-a-client-project/` | Keeping the Handshakes Warm When Taking Over a Client Project | Article | Client/project takeover article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/so-what-would-project-success-look-like/` | So... What Would Project Success Look Like? | Article | Project success article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/the-map-is-not-the-territory-it-service-mapping-in-real-life/` | The Map Is Not the Territory - IT Service Mapping in Real Life | Article | IT service mapping article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/find-your-project-why/` | Find your Project 'WHY' | Article | Project purpose/stakeholder article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/when-your-rollout-hits-the-rocks-how-to-save-the-ship/` | When Your Rollout Hits the Rocks: How to Save the Ship | Article | Project recovery article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/working-vendor-side-as-a-project-manager/` | Working Vendor Side as a Project Manager | Article | Vendor-side PM article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/so-what-is-workfriend-ai-about/` | Meet your new Workfriend | Article | Introductory Workfriend.ai article. | Article index/sitemap | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/the-new-technology-casino-where-and-when-to-place-your-bets/` | The 'new technology' casino - where and when to place your bets? | Article | New technology decision article. | Sitemap/page 2 | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/sharing-ideas-with-your-boss-what-can-3-communications-experts-tell-us/` | Sharing ideas with your boss - what can 3 communications experts tell us? | Article | Communication article. | Sitemap/page 2 | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/from-grumpy-to-great-how-smart-pms-manage-conflict/` | From grumpy to great - how smart PMs manage conflict | Article | Conflict management article. | Sitemap/page 2 | Blog post. | Ghost. | None obvious from title/status. | Keep |
| `https://www.workfriend.ai/articles/gpt-5-isnt-just-smarter-its-learnt-how-to-help-us-day-to-day/` | GPT-5 Isn't Just Smarter, It's Learnt How to Help Us Day to Day | Article | GPT-5 / AI adoption article. | Sitemap/page 2 | Blog post. | Ghost. | Time-sensitive content; review periodically. | Review |
| `https://www.workfriend.ai/articles/coming-soon/` | Coming soon | Article | Placeholder post. | Sitemap/page 2 | Blog post/placeholder. | Ghost. | Placeholder content in public sitemap. | Possibly retire |
| `https://www.workfriend.ai/author/ausadmin/` | ausadmin - workfriend.ai | Author archive | Author archive page. | Sitemap-generated | Lists author posts. | Ghost. | Author display is generic/admin-like. | Review |
| `https://www.workfriend.ai/tag/articles/` | articles - workfriend.ai | Tag archive | Articles tag archive. | Sitemap-generated | Lists tagged posts. | Ghost. | Duplicates article index concept. | Keep/review |
| `https://www.workfriend.ai/tag/news/` | News - workfriend.ai | Tag archive | News tag archive. | Sitemap-generated | Lists tagged posts. | Ghost. | May be low-value if sparsely used. | Review |

## Broken or materially inconsistent URLs

- `https://www.workfriend.ai/playbooks/` - `404`.
- `https://www.workfriend.ai/page/2/` - `404`, while article page 1 exposes it as "See all"; `https://www.workfriend.ai/articles/page/2/` works.
- `https://www.workfriend.ai/integrated-crm-event-management-platform/` - `404`, linked from `https://www.workfriend.ai/kevin-edwards-senior-project-manager/`.
- `https://www.workfriend.ai/national-hardware-logistics-transformation/` - `404`, linked from `https://www.workfriend.ai/kevin-edwards-senior-project-manager/`.
- WAI chat Hugging Face app URLs returned `503` in read-only checks.
- Hugging Face Space page for WAI chat returned `401`.
- `https://your-image-url-here.png` appears in `chatbot-test-page` HTML and looks like placeholder debris.

## Strategic classification

- Strategically important: root/home, About, Articles, Rehumanizer, WAI Chat, primary portfolio pages.
- Secondary/supporting: article posts, resource/download page, portfolio detail pages.
- Private/utility: Stevo tools, Kev tools, payroll/interview prep pages.
- Experimental/obsolete candidates: chatbot test page, untitled copy, tiles-layout-test, coming-soon article, duplicate Senior PM portfolio page, bounce redirect page.

## Requires Ghost admin access

Public discovery cannot confirm:

- Which pages are intentionally published vs accidentally public.
- Ghost navigation configuration and whether `/hello/`, `/coming-soon-2/`, and `/playbooks/` are intentional.
- Code injection/theme source for unresolved chat placeholders.
- Ghost Portal/member/subscriber settings.
- Whether Ghost social links to Ghost's X/Facebook accounts are deliberate or defaults.
- Drafts, scheduled posts, unpublished pages, redirects, canonical URLs, and metadata.
- Whether private utility pages should be protected, unlisted, noindexed, or moved elsewhere.
