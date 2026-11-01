# Linux Lab 9: Disk & Storage Management

**Aim:** To understand and practice Linux disk and storage management using df, du, lsblk, partitioning concepts, mounting and unmounting file systems.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and Package Management.

> **Safety:** Q10-Q20 need `sudo`. Partitioning, formatting and mounting are done ONLY on virtual disks (files in `~/lab9` attached as loop devices), never on your real/system disk. Use a test machine or VM. Q20 cleans up everything.

> Order: Q11 -> Q15 use `disk1.img` (a filesystem inside a file). Q17 -> Q19 use `disk2.img` (a partitioned virtual disk). Each script re-creates what it needs if missing; Q20 is fully independent.

## Questions

- [Q1](Q01_df.sh) — Display the mounted file systems and their disk-space usage using df.
- [Q2](Q02_df_human.sh) — Display disk-space usage in human-readable format using df and identify the filesystem, total, used, available and mounted-on fields.
- [Q3](Q03_du_current_dir.sh) — Display the size of the current directory and its contents using du.
- [Q4](Q04_du_human_largest.sh) — Display directory sizes in human-readable format and identify which directories are consuming the most space.
- [Q5](Q05_du_selected_dir.sh) — Display the size of a selected directory including its subdirectories using du with an appropriate option.
- [Q6](Q06_lsblk.sh) — Display all available block devices, disks and partitions using lsblk.
- [Q7](Q07_lsblk_columns.sh) — Use lsblk to identify the disk names, partition names, sizes, types and mount points on the system.
- [Q8](Q08_lsblk_fs.sh) — Display additional file-system information for block devices using an appropriate lsblk option.
- [Q9](Q09_findmnt.sh) — Identify the currently mounted file systems and their mount points using findmnt or an appropriate command.
- [Q10](Q10_create_mountpoint.sh) — Create a dedicated directory named /mnt/labdisk to use as a mount point and verify its permissions and existence.
- [Q11](Q11_mount_test_disk.sh) — Attach a suitable test storage device or partition to /mnt/labdisk and verify that it is mounted correctly.
- [Q12](Q12_df_labdisk.sh) — Display the disk-space usage of the mounted /mnt/labdisk file system using df.
- [Q13](Q13_create_test_file.sh) — Create a test file inside /mnt/labdisk and verify that the file is stored on the mounted file system.
- [Q14](Q14_umount.sh) — Unmount /mnt/labdisk using umount and verify that the file system is no longer mounted.
- [Q15](Q15_busy_umount.sh) — Attempt to access a mounted file system that is currently in use, identify why unmounting may fail, and safely release the process before unmounting.
- [Q16](Q16_partition_table.sh) — Display the partition table of a selected disk using an appropriate command and identify the partitions and their sizes.
- [Q17](Q17_create_partition.sh) — Create a practice partition on a dedicated test disk or virtual disk using an appropriate partitioning tool, then verify it with lsblk. Do not modify the system disk.
- [Q18](Q18_mkfs_mount.sh) — Create a file system on a dedicated practice partition, mount it on /mnt/labdisk and verify the file system using df, lsblk and findmnt.
- [Q19](Q19_umount_verify.sh) — Unmount the practice file system and verify the mount point, device and partition information after unmounting.
- [Q20](Q20_complete_workflow.sh) — Perform a complete disk and storage management workflow: inspect disks and partitions, check disk usage, mount a dedicated test partition, create and verify data, unmount it and confirm the final storage state.
