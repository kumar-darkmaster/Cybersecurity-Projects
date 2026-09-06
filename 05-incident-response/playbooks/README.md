# Incident Response Playbooks

This directory contains concise, lab-oriented playbooks for common SOC scenarios.

## Playbook structure

Every playbook should cover:

1. **Trigger** - what alert or observation starts the workflow.
2. **Validation** - how to establish whether the signal is credible.
3. **Scoping** - hosts, users, processes, accounts, and related events.
4. **Evidence** - what logs or artifacts should be collected.
5. **Containment** - appropriate production response options, clearly separated from lab actions.
6. **Eradication / recovery** - where applicable.
7. **Communication** - who should be informed and what should be recorded.
8. **Closure** - evidence-based criteria for closing the case.
9. **Lessons learned** - detection or process improvements.

## Planned scenarios

- Suspicious PowerShell execution
- Repeated authentication failures
- Suspected endpoint compromise
- Suspicious persistence activity
- Malware alert triage
- Potential account takeover

The playbooks are educational and should be adapted to the controls, tooling, escalation paths, and legal requirements of a real organisation.