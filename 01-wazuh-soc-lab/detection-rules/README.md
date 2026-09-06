# Detection Rules

This directory will contain lab-safe Wazuh detection rules and supporting notes.

Each detection should answer five questions:

1. **What behaviour are we detecting?**
2. **What telemetry is required?**
3. **Why is the signal useful?**
4. **What legitimate activity could trigger it?**
5. **What should an analyst investigate next?**

## Detection quality checklist

- [ ] Detection has a clear purpose
- [ ] Required log source is documented
- [ ] Rule logic is understandable
- [ ] Severity is justified
- [ ] False-positive scenarios are documented
- [ ] Investigation steps are documented
- [ ] ATT&CK mapping is evidence-based
- [ ] Test procedure uses an isolated lab
- [ ] No credentials, secrets, or private data are included

## Planned scenarios

- Windows process creation anomalies
- Suspicious PowerShell activity
- Authentication failures and unusual authentication patterns
- Persistence-related endpoint events
- File integrity monitoring events
- Controlled reconnaissance activity from the lab attacker host

Rules will be added only after their telemetry and expected behaviour have been tested.