# Linux Lab Sheet 6: File Permissions & ACL

**Aim:** To understand and practice Linux file and directory permissions, symbolic and numeric permissions, umask and Access Control Lists (ACLs) using chmod, umask, setfacl and getfacl.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and File & Directory Management.

> Run Q01 first (creates `~/lab6`). Q14 onwards need `sudo` and the `acl` package; use a test machine or VM. Q10 must be run as a normal (non-root) user.

## Questions

- [Q1](Q01_create_lab6.sh) — Create a directory named lab6 and a text file named permissions.txt inside it.
- [Q2](Q02_long_listing.sh) — Display the long listing of permissions.txt and identify the owner, group and current rwx permissions.
- [Q3](Q03_symbolic_perms.sh) — Change the permissions of permissions.txt using symbolic notation so that the owner has read, write and execute permissions, the group has read and write permissions, and others have no permissions.
- [Q4](Q04_numeric_640.sh) — Change the permissions of permissions.txt using numeric mode 640 and verify the result.
- [Q5](Q05_numeric_755.sh) — Change the permissions of permissions.txt using numeric mode 755 and verify the result.
- [Q6](Q06_remove_owner_exec.sh) — Remove execute permission from the owner of permissions.txt using symbolic chmod notation.
- [Q7](Q07_add_group_rx.sh) — Add read and execute permissions for the group of permissions.txt without changing the owner's permissions.
- [Q8](Q08_remove_others.sh) — Remove all permissions from others for permissions.txt and verify the result.
- [Q9](Q09_securedata_750.sh) — Create a directory named securedata and set its permissions to 750 using numeric notation.
- [Q10](Q10_file_vs_dir_perms.sh) — Explain and demonstrate the difference between file and directory read, write and execute permissions by testing access to a practice directory.
- [Q11](Q11_show_umask.sh) — Display the current umask value and record the result.
- [Q12](Q12_umask_027.sh) — Temporarily change the umask value to 027 and create a new file and directory. Observe and verify their resulting permissions.
- [Q13](Q13_restore_umask.sh) — Restore the umask to its previous value and verify the current umask.
- [Q14](Q14_acl_user_group_file.sh) — Create a new user and group for ACL practice, then create a file named aclfile.txt for testing.
- [Q15](Q15_getfacl_view.sh) — Display the current ACL of aclfile.txt using getfacl and identify the owner, group, user, group and mask entries.
- [Q16](Q16_setfacl_user.sh) — Use setfacl to give a specified user read and write permission on aclfile.txt without changing the normal owner/group permission bits. Verify using getfacl.
- [Q17](Q17_setfacl_group.sh) — Use setfacl to give a specified group read permission on aclfile.txt and verify the ACL.
- [Q18](Q18_modify_remove_acl.sh) — Modify and remove a specific ACL entry from aclfile.txt using setfacl. Verify the changes using getfacl.
- [Q19](Q19_default_acl.sh) — Set a default ACL on a directory so that newly created files inside it inherit the required access permissions. Create a test file and verify the inherited ACL.
- [Q20](Q20_complete_workflow.sh) — Create, modify, verify and clean up file permissions and ACLs in a complete workflow using chmod, umask, setfacl and getfacl.
