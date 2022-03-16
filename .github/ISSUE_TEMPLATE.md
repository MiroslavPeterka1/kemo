---
title: CICID -> {{ env.GITHUB_WORKFLOW }} -> problem in {{env.JOB_TITLE}} (PR - {{ payload.number }}.{{ payload.pull_request.title }})
assignees: MiroslavPeterka1
labels: bug
---
Pull request ID: {{ payload.number }}
Pull request title: {{ payload.pull_request.title }}
Pull request link: {{ payload.pull_request.html_url }}

Link to failed workflow: {{ env.SERVER }}/{{ env.REPOSITORY }}/actions/runs/{{ env.RUN_ID }}

{{ env.BODY_TEXT }}