---
title: CICID -> {{ env.GITHUB_WORKFLOW }} -> problem in {{env.JOB_TITLE}} (PR - {{ payload.number }}.{{ payload.pull_request.title }})
assignees: MiroslavPeterka1
labels: bug
---
Pull request ID: {{ payload.number }}
Pull request title: {{ payload.pull_request.title }}
Pull request link: {{ payload.pull_request.html_url }}

tools.context.repo: {{ tools.context.repo }}
tools.context.action: {{ tools.context.action }}
tools.context.actor: {{ tools.context.actor }}
tools.context.event: {{ tools.context.event }}
tools.context.ref: {{ tools.context.ref }}
tools.context.sha: {{ tools.context.sha }}
tools.context.workflow: {{ tools.context.workflow }}
tools.context.job: {{ tools.context.job }}
tools.context.run_id: {{ tools.context.run_id }}
tools.context.run_number: {{ tools.context.run_number }}
tools.context.node_id: {{ tools.context.node_id }}
tools.context.node_index: {{ tools.context.node_index }}
tools.context.node_name: {{ tools.context.node_name }}
tools.context.node_namespace: {{ tools.context.node_namespace }}
tools.context.node_workflow: {{ tools.context.node_workflow }}
tools.context.node_workflow_id: {{ tools.context.node_workflow_id }}
tools.context.node_workflow_number: {{ tools.context.node_workflow_number }}
tools.context.node_workflow_name: {{ tools.context.node_workflow_name }}
tools.context.node_workflow_namespace: {{ tools.context.node_workflow_namespace }}
tools.context.node_workflow_owner: {{ tools.context.node_workflow_owner }}
tools.context.node_workflow_repo: {{ tools.context.node_workflow_repo }}
tools.context.node_workflow_branch: {{ tools.context.node_workflow_branch }}
tools.context.node_workflow_sha: {{ tools.context.node_workflow_sha }}
tools.context.node_workflow_event: {{ tools.context.node_workflow_event }}
tools.context.node_workflow_action: {{ tools.context.node_workflow_action }}
tools.context.node_workflow_context: {{ tools.context.node_workflow_context }}
tools.context.node_workflow_context.repo: {{ tools.context.node_workflow_context.repo }}
tools.context.node_workflow_context.action: {{ tools.context.node_workflow_context.action }}
tools.context.payload: {{ tools.context.payload }}




{{ env.BODY_TEXT }}