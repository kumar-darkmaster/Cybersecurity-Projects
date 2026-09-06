# 04 - Financial Crime Analytics

A public-safe analytics project connecting financial-crime investigation experience with security analytics and anomaly detection.

All examples in this directory will use synthetic data. No employer, customer, transaction, account, or case data is used.

## Investigation themes

- Transaction velocity and burst activity
- Structuring-like patterns in synthetic transactions
- Unusual merchant/category behaviour
- Account takeover indicators
- Mule-account indicators
- Geographic and device anomalies
- Repeated declines followed by successful activity
- Risk-based alert prioritisation

## Planned workflow

```text
Synthetic data
      ↓
Data validation
      ↓
Feature / pattern analysis
      ↓
Candidate alerts
      ↓
Investigation
      ↓
Evidence-based disposition
      ↓
Risk reporting
```

## Why this belongs in a security portfolio

Financial-crime investigations and SOC investigations share useful analytical habits: working with noisy signals, validating evidence, correlating events, distinguishing false positives from meaningful risk, and documenting defensible decisions.

The project is intended to demonstrate those transferable investigation skills without presenting financial-crime rules as direct substitutes for cybersecurity detections.

## Planned outputs

- Synthetic CSV datasets
- SQL investigation queries
- Investigation notebooks
- Alert-prioritisation examples
- Case-study write-ups
- False-positive analysis