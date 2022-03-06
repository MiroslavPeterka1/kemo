---
title: CICID -> {{ env.GITHUB_WORKFLOW }} -> problem in {{env.JOB_TITLE}} (PR - {{ payload.pull_request.title }})
assignees: MiroslavPeterka1
labels: bug
---
{{ env.BODY_TEXT }}

Pull request ID: {{ payload.number }}
Pull request link: {{ payload.pull_request.url }}
Pull request link: {{ payload.pull_request.title }}