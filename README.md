# TWRP Device Tree: Samsung Galaxy S9+ SM-G9650

First-pass recovery bring-up tree for `star2qltechn`.

Evidence source:

- Device: `SM-G9650`
- Product/device: `star2qltezh` / `star2qltechn`
- Platform: `sdm845`
- Android: `10`, SDK `29`, first API `26`
- Bootloader: `G9650ZCS9FVA4`
- Evidence directory: `analysis/bringup-20260703-000001-SM-G9650`

Initial scope:

- Build a bootable recovery image.
- Verify recovery UI, touch, brightness, ADB, and basic mounts.
- Keep `/data` decryption out of the first boot target.
- Do not migrate camera or other Android userspace HALs in this tree.

Important notes:

- The live device is non-A/B and does not use dynamic partitions.
- `boot`, `recovery`, `dtbo`, `vbmeta`, `system`, `vendor`, `odm`, `cache`, `userdata`, and `efs` are physical by-name partitions.
- The first-pass prebuilt kernel is from the current Android 10 `boot` partition, not from the current `recovery` partition.
- Recovery build and verification plan: `../../docs/twrp-recovery-bringup-g9650-20260703.md`.
- Static validation record: `../../docs/twrp-device-tree-static-validation-20260703.md`.
- Local verifier: `../../scripts/twrp/verify-device-tree.sh`.
- Recovery artifact verifier: `../../scripts/twrp/verify-recovery-artifact.sh`.
- Online head checker: `../../scripts/twrp/check-online-heads.sh`.
- Online head diff decisions: `../../docs/twrp-online-head-diff-20260703.md`.
- Full local preflight: `../../scripts/twrp/run-preflight.sh`.
- Build prerequisite audit: `../../scripts/twrp/check-build-prereqs.sh`.
- Linux build handoff: `../../docs/twrp-linux-build-handoff-20260703.md`.
- Import returned build artifacts: `../../scripts/twrp/import-build-artifacts.sh`.
- Collect recovery boot logs: `../../scripts/twrp/collect-recovery-logs.sh`.
- Discover local build targets: `../../scripts/twrp/discover-build-targets.sh`.
- Run remote SSH build: `../../scripts/twrp/remote-build-via-ssh.sh`.
- Audit goal status: `../../scripts/twrp/audit-goal-status.sh`.
