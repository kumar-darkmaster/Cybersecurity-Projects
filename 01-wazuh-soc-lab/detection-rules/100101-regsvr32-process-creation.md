# Detection 100101: regsvr32.exe process creation

**Status:** Lab draft, requires local validation and tuning.

## Purpose

Detect Windows process-creation events where `regsvr32.exe` is observed. `regsvr32.exe` is a legitimate Windows utility, so process creation alone is **not proof of malicious activity**. The alert is intended to create an investigation pivot for command-line, parent-process, user, network, and file context.

## Telemetry

- Windows Sysmon process-creation telemetry
- Image path
- Command line, when collected
- Parent image / parent command line, when collected
- User context
- Related network and file events

## Initial investigation

1. Confirm the endpoint and user.
2. Review the full command line.
3. Identify the parent process.
4. Check whether the activity was expected administrative or software-installation behaviour.
5. Correlate nearby process, network, and file events.
6. Look for evidence of an unusual execution chain.
7. Map the activity to ATT&CK only when the evidence supports the technique.

## False positives

Potential legitimate triggers include software installation, application registration, enterprise management tooling, and administrative maintenance.

## Validation plan

Before treating this as production-ready:

- Load the rule into the lab Wazuh manager.
- Validate the rule using Wazuh's rule-testing workflow.
- Generate a controlled process-creation event in the isolated Windows VM.
- Confirm the expected alert and supporting fields are present.
- Test known benign administrative activity.
- Tune the rule if alert volume is excessive or useful context is missing.

## ATT&CK

The rule uses **T1218.010 (Regsvr32)** as a candidate technique mapping. The mapping is contextual metadata, not proof that an attack occurred.