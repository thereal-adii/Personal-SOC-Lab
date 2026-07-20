# CASE-001: Repeated Failed SSH Logins

## Alert summary
Repeated failed SSH login attempts were detected on the Ubuntu server.

## Severity
Low — controlled lab simulation.

## Affected host
- Host: Ubuntu
- IP: 192.168.56.103

## Source
- Source IP: 192.168.56.102
- Source machine: Kali Linux

## Evidence
- Failed SSH attempts: 5
- Targeted username: fakeuser
- Log source: /var/log/auth.log

## Detection logic
Alert when one source IP creates 3 or more failed SSH login attempts.

## MITRE ATT&CK mapping
- T1110 — Brute Force

## Investigation result
The activity was generated intentionally from the Kali VM as part of a controlled SOC lab simulation. No remediation was required.

## Recommended analyst action
In a real environment, investigate the source IP, identify whether a successful login followed, reset affected credentials if needed, and block the source if malicious.
