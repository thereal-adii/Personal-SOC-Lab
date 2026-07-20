# Personal SOC Lab

## Goal
Build a beginner SOC lab using Kali Linux and Ubuntu.

## Lab machines
- Kali Linux: attack simulation machine
- Ubuntu: monitored SSH server and log-analysis machine

## Network
- Kali IP: 192.168.56.102
- Ubuntu IP: 192.168.56.103
- Network type: VirtualBox Host-only Adapter

## Completed simulation
A controlled failed SSH-login simulation was run from Kali against Ubuntu.

## Detection
The detection script checks Ubuntu SSH authentication logs and alerts when a source IP creates 3 or more failed login attempts.

## Result
- Source IP: 192.168.56.102
- Failed SSH attempts: 5
- Alert: Repeated failed SSH logins detected
- MITRE ATT&CK: T1110 - Brute Force
