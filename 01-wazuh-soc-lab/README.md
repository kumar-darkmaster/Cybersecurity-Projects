# 01 - Wazuh SOC Lab

A hands-on home SOC lab for practising endpoint monitoring, SIEM alert triage, investigation, and incident documentation.

## Lab architecture

```text
                    ┌──────────────────────┐
                    │     Kali Linux       │
                    │  Controlled testing  │
                    └──────────┬───────────┘
                               │
                         Lab network
                               │
                    ┌──────────▼───────────┐
                    │     Windows 11       │
                    │   Sysmon telemetry   │
                    └──────────┬───────────┘
                               │
                         Wazuh agent
                               │
                    ┌──────────▼───────────┐
                    │   Ubuntu 22.04       │
                    │ Wazuh manager/index  │
                    │      / dashboard     │
                    └──────────────────────┘
```

## Objectives

1. Build a working Wazuh monitoring environment.
2. Collect Windows endpoint telemetry.
3. Generate controlled security-relevant events in the isolated lab.
4. Triage alerts using a consistent workflow.
5. Preserve the evidence needed to explain an analyst decision.
6. Map relevant activity to MITRE ATT&CK where there is sufficient evidence.
7. Document findings as concise case notes.

## Investigation workflow

### 1. Validate

Determine whether the alert represents expected administrative activity, benign software behaviour, suspicious activity, or a likely false positive.

### 2. Scope

Identify the affected endpoint, user context, process, parent process, timestamp, and related events.

### 3. Correlate

Look for supporting telemetry before and after the triggering event rather than relying on a single log record.

### 4. Assess

Consider confidence, potential impact, persistence, execution, credential access, lateral movement, or other relevant behaviours.

### 5. Respond

For a lab exercise, document the recommended containment or remediation action. Do not confuse a recommendation with an action actually performed.

### 6. Document

Record the alert, evidence, conclusion, ATT&CK mapping where applicable, and recommended next step.

## Investigation record template

See [investigations/investigation-template.md](./investigations/investigation-template.md).

## Detection rules

Custom detection work will be stored in [detection-rules/](./detection-rules/), with each rule explaining its purpose, expected signal, false-positive considerations, and analyst investigation steps.

## Evidence policy

This project uses only an isolated lab and synthetic/public-safe data. Screenshots should not contain real usernames, hostnames, IP addresses, tokens, credentials, or employer/customer information.

## Status

🟢 Active. The lab will evolve as additional detections and investigation scenarios are documented.