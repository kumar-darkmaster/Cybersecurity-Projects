# Cybersecurity Projects

Hands-on cybersecurity labs, SOC investigations, SIEM detection engineering, and security automation.

This repository documents practical security work using **synthetic data and isolated lab environments**. It is designed to show how I approach investigation, detection, evidence collection, documentation, and response rather than simply listing tools on a résumé.

## Focus areas

- SOC alert triage and investigation
- SIEM monitoring and detection engineering
- Windows endpoint telemetry with Sysmon
- Wazuh-based security monitoring
- Incident response and case documentation
- SQL-based security and fraud analytics
- MITRE ATT&CK mapping
- Security automation and repeatable workflows
- Financial crime and fraud investigation techniques applied to security analytics

## Projects

| Project | Status | What it demonstrates |
| --- | --- | --- |
| [01 - Wazuh SOC Lab](./01-wazuh-soc-lab/) | 🟢 Active | SIEM architecture, endpoint telemetry, alert triage and investigation |
| [02 - Sysmon Detection Lab](./02-sysmon-detection-lab/) | 🟡 Planned | Windows telemetry and detection engineering |
| [03 - Splunk Security Lab](./03-splunk-security-lab/) | 🟡 Planned | Security queries, dashboards and investigation workflows |
| [04 - Financial Crime Analytics](./04-financial-crime-analytics/) | 🟡 Planned | Synthetic transaction analysis and anomaly detection |
| [05 - Incident Response](./05-incident-response/) | 🟡 Planned | Investigation notes, playbooks and case studies |
| [06 - Security Automation](./06-security-automation/) | 🟡 Planned | Small scripts and repeatable analyst workflows |

## Home SOC lab

The core lab uses:

- **Wazuh** on Ubuntu 22.04 as the SIEM/XDR platform
- **Windows 11** endpoint with Sysmon telemetry
- **Kali Linux** as an isolated testing/attacker system
- Virtualized networking for controlled experiments

The goal is to generate observable activity, collect telemetry, investigate alerts, identify relevant evidence, map activity to ATT&CK techniques where appropriate, and document conclusions.

## Investigation methodology

Each investigation aims to follow a repeatable analyst workflow:

```text
Alert
  ↓
Validate
  ↓
Scope
  ↓
Collect evidence
  ↓
Correlate events
  ↓
Assess severity / impact
  ↓
Map relevant technique
  ↓
Contain / recommend action
  ↓
Document findings
```

The methodology is intentionally evidence-driven. A suspicious event is not automatically treated as a confirmed incident.

## Background

My professional experience spans financial crime and fraud operations, IT service operations, and application development. That background informs how I approach security work: investigate anomalies carefully, validate evidence, follow structured case workflows, document decisions, and escalate risk appropriately.

## Repository principles

- No confidential employer or customer data
- No production credentials or secrets
- Synthetic datasets for public analytics exercises
- Reproducible lab procedures where practical
- Detection logic should explain both **why it fires** and **what an analyst should investigate**
- Open-source contributions should represent genuine fixes, improvements, or useful documentation

## Author

**Praveen Kumar**  
Security Operations • SOC & SIEM • Fraud & Financial Crime • Detection & Incident Response

[LinkedIn](https://www.linkedin.com/in/praveen-kumar-it-professional) · [GitHub](https://github.com/kumar-darkmaster)

---

> Investigate carefully. Document clearly. Escalate intelligently.