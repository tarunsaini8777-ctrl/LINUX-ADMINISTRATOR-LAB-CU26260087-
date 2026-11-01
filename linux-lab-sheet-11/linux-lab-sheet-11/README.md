# Linux Lab 11: Archive & Compression

**Aim:** To understand and practice file archiving and compression using tar, gzip, gunzip, zip and unzip commands in Linux.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and File Systems.

> All work happens inside `~/lab11`. Each script creates the files it needs if they are missing, so they can be run in any order (Q1 first is recommended). `zip`/`unzip` may need installing: `sudo apt install zip unzip` (RHEL: `sudo dnf install zip unzip`).

## Questions

- [Q1](Q01_create_files.sh) — Create a directory named archive_lab and create three text files inside it. Add sample content to each file.
- [Q2](Q02_create_tar.sh) — Create a tar archive named files.tar containing all files from archive_lab. Verify that the archive was created.
- [Q3](Q03_list_tar.sh) — List the contents of files.tar without extracting it.
- [Q4](Q04_extract_tar.sh) — Extract files.tar into a new directory named extracted_tar.
- [Q5](Q05_gzip_file.sh) — Create a gzip-compressed file from a text file and observe the change in its filename.
- [Q6](Q06_gunzip_file.sh) — Use gunzip to decompress the gzip-compressed file and verify that the original file is restored.
- [Q7](Q07_create_targz.sh) — Create a tar.gz archive named archive.tar.gz containing the complete archive_lab directory.
- [Q8](Q08_list_targz.sh) — List the contents of archive.tar.gz without extracting it.
- [Q9](Q09_extract_targz.sh) — Extract archive.tar.gz into a separate directory and verify the extracted files.
- [Q10](Q10_create_zip.sh) — Create a zip archive named files.zip containing three selected files.
- [Q11](Q11_list_zip.sh) — List the contents of files.zip without extracting it.
- [Q12](Q12_extract_zip.sh) — Extract files.zip into a directory named extracted_zip.
- [Q13](Q13_unzip_one_file.sh) — Use unzip to extract only one selected file from a ZIP archive.
- [Q14](Q14_zip_directory.sh) — Create a ZIP archive containing an entire directory and verify its contents.
- [Q15](Q15_tar_gzip_difference.sh) — Create a gzip-compressed tar archive and explain the difference between tar and gzip in the command sequence used.
- [Q16](Q16_append_to_tar.sh) — Create a tar archive, add another file to the archive, and verify that the new file is present.
- [Q17](Q17_compare_tar_targz.sh) — Compare the archive contents and file sizes of a tar archive and a compressed tar.gz archive.
- [Q18](Q18_extract_targz_and_zip.sh) — Use appropriate commands to decompress and extract a tar.gz archive and a ZIP archive into separate directories.
- [Q19](Q19_backup_and_restore.sh) — Create a complete backup archive of a practice directory using tar.gz, then restore it into another directory.
- [Q20](Q20_complete_workflow.sh) — Demonstrate a complete archive and compression workflow using tar, gzip, gunzip, zip, and unzip, including verification after each operation.
