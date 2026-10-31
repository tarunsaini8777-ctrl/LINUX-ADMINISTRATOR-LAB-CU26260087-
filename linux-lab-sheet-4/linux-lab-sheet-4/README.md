# Linux Lab Sheet 4: User Management

**Aim:** To understand and practice Linux user account creation, modification, deletion and password management using useradd, usermod, userdel, passwd and related commands.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and File & Directory Management.

> Run these on a test machine or VM (they need sudo and create/delete users). Run `00_lab_setup.sh` before Q01, run questions in order, and finish with `Q20_cleanup.sh`.


- [Lab Setup](00_lab_setup.sh)
- [Q1](Q01_current_user.sh) — Display the current logged-in username, UID, primary GID and supplementary groups.
- [Q2](Q02_passwd_entry.sh) — Display the account entry of a test user from /etc/passwd and identify the fields stored in the entry.
- [Q3](Q03_password_status.sh) — Display the password/account status of a test user without displaying the actual password.
- [Q4](Q04_useradd_labuser1.sh) — Create a new user named labuser1 using useradd and verify that the account has been created.
- [Q5](Q05_useradd_home.sh) — Create labuser2 with a home directory and verify the home directory and its ownership.
- [Q6](Q06_useradd_shell.sh) — Create labuser3 with /bin/bash as the login shell and verify the assigned shell.
- [Q7](Q07_set_password.sh) — Set a password for labuser1 and verify the password/account status.
- [Q8](Q08_change_password.sh) — Change the password of labuser1 and verify the account status again.
- [Q9](Q09_usermod_shell.sh) — Use usermod to change labuser2's login shell to /bin/bash and verify the change.
- [Q10](Q10_usermod_home.sh) — Use usermod to change labuser2's home directory, first without moving the existing contents and then with the option that moves the contents.
- [Q11](Q11_supplementary_group.sh) — Create a supplementary group named userlabgroup and add labuser1 to it using usermod. Verify the membership.
- [Q12](Q12_lock_unlock.sh) — Lock labuser3 and verify that the account is locked. Then unlock it and verify the result.
- [Q13](Q13_chage_list.sh) — Display detailed password-aging information for labuser3 using chage.
- [Q14](Q14_account_expiry.sh) — Set an account expiration date for labuser3 and verify the expiration information.
- [Q15](Q15_primary_group.sh) — Modify labuser1 so that a specified existing group becomes the user's primary group. Verify the result.
- [Q16](Q16_id_groups_getent.sh) — Display the users and groups associated with a selected account using id, groups and getent.
- [Q17](Q17_userdel_keep_home.sh) — Delete labuser1 without removing its home directory. Verify the account entry and home directory separately.
- [Q18](Q18_userdel_remove_home.sh) — Delete labuser2 and remove its home directory using the appropriate userdel option. Verify the result.
- [Q19](Q19_user_workflow.sh) — Create a complete user-management workflow: create a user, set a password, assign a shell, add a supplementary group, lock/unlock the account and verify all settings.
- [Q20](Q20_cleanup.sh) — Clean up all test users and lab-only groups created during this lab. Verify that no unintended system account has been modified.
