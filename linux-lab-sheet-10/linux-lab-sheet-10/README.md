# Linux Lab 10: File Systems

**Aim:** To understand and practice creating, mounting and checking Linux file systems using mkfs, mount, /etc/fstab and file-system checking utilities.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and Disk & Storage Management.

> **Safety:** All scripts need `sudo`. `mkfs` and `fsck` run ONLY on a virtual disk (`~/lab10/labfs.img` attached as a loop device), never on a real disk. Every `/etc/fstab` line added by the lab ends with `# LAB10-TEST` and uses `nofail`, so it can be removed safely (Q19/Q20) and cannot block booting. The original fstab is backed up to `~/lab10/fstab.orig`. Use a test machine or VM.

> Each script re-creates what it needs, so they can be run in order Q1 -> Q19 (recommended). Q20 is independent but requires Q19 to have been done (or no earlier lab entry in fstab).

## Questions

- [Q1](Q01_identify_test_partition.sh) — Display the available block devices and identify a dedicated test partition that can be used for file-system practice.
- [Q2](Q02_current_fs_info.sh) — Display the current file-system type, UUID and mount-point information for the selected test partition.
- [Q3](Q03_mkfs_ext4.sh) — Create an ext4 file system on a dedicated test partition using mkfs and verify the file-system creation.
- [Q4](Q04_fs_details_uuid.sh) — Display detailed information about the newly created file system and identify its UUID.
- [Q5](Q05_create_mountpoint.sh) — Create a directory named /mnt/labfs to use as the mount point for the test file system.
- [Q6](Q06_mount_manual.sh) — Mount the newly created file system manually on /mnt/labfs and verify that it is mounted correctly.
- [Q7](Q07_df_usage.sh) — Display the mounted file system using df and identify its total, used and available space.
- [Q8](Q08_test_file.sh) — Create a test file inside /mnt/labfs and verify that the file is stored on the mounted file system.
- [Q9](Q09_umount.sh) — Unmount the test file system using umount and verify that /mnt/labfs is no longer an active mount point.
- [Q10](Q10_view_fstab.sh) — Display the current contents of /etc/fstab and identify the fields used to define a persistent file-system mount.
- [Q11](Q11_add_fstab_entry.sh) — Add an entry for the dedicated test file system to /etc/fstab using its UUID and an appropriate mount point.
- [Q12](Q12_test_fstab.sh) — Verify the syntax and test the /etc/fstab entry without rebooting by using the appropriate mount command.
- [Q13](Q13_auto_mount_check.sh) — Reboot or remount the test system as appropriate and verify that the file system is automatically mounted according to /etc/fstab.
- [Q14](Q14_findmnt_df_verify.sh) — Use findmnt and df to verify the device, mount point, file-system type and storage usage after the automatic mount.
- [Q15](Q15_compare_uuid.sh) — Display the file-system UUID and compare it with the UUID used in the /etc/fstab entry.
- [Q16](Q16_fsck_unmounted.sh) — Run an appropriate file-system checking command on the dedicated test file system after it has been safely unmounted.
- [Q17](Q17_fsck_mounted_vs_unmounted.sh) — Demonstrate the difference between checking a mounted file system and checking an unmounted file system, using a dedicated test partition and appropriate precautions.
- [Q18](Q18_fix_wrong_fstab.sh) — Correct an intentionally incorrect /etc/fstab entry for the dedicated test file system and verify that the corrected entry mounts successfully.
- [Q19](Q19_remove_fstab_entry.sh) — Unmount the test file system, remove the lab-specific /etc/fstab entry and verify that the system no longer attempts to mount it automatically.
- [Q20](Q20_complete_workflow.sh) — Perform a complete file-system workflow: create a file system, mount it, verify it, configure /etc/fstab using UUID, check the file system safely, unmount it and clean up all lab changes.
