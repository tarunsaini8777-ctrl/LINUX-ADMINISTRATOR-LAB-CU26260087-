# Linux Lab 8: Package Management

**Aim:** To understand and practice Linux package management using rpm and dnf, including repository management and package installation, update and removal.

**Environment:** Red Hat Linux / RHEL / Rocky Linux / AlmaLinux (Terminal)

**Prerequisites:** Basic Linux commands and Process Management.

> These scripts need an RPM-based system (RHEL, Rocky, AlmaLinux, CentOS Stream, Fedora). On Ubuntu/Debian they stop with a message. Install/update/remove steps need `sudo`, so use a test machine or VM. Run `00_lab_setup.sh` before Q01 (optional snapshot used by Q20). Test package: `tree` (and `wget` in Q12).

## Questions

- [Q1](Q01_rpm_version.sh) — Display the installed RPM version and verify that the rpm command is available on the system.
- [Q2](Q02_dnf_version.sh) — Display the installed DNF version and verify that the dnf command is available on the system.
- [Q3](Q03_rpm_search_installed.sh) — Search the installed RPM database for a selected package and determine whether it is installed.
- [Q4](Q04_rpm_info.sh) — Display detailed information about an installed package using rpm.
- [Q5](Q05_rpm_list_files.sh) — List all files installed by a selected RPM package using rpm.
- [Q6](Q06_rpm_file_owner.sh) — Identify which installed RPM package owns a specified file on the system.
- [Q7](Q07_rpm_install_date.sh) — Query the RPM database and display the installation date and other available information for a selected package.
- [Q8](Q08_dnf_repolist.sh) — List the currently configured DNF repositories and identify their enabled/disabled status.
- [Q9](Q09_dnf_repoinfo.sh) — Display detailed information about a selected DNF repository.
- [Q10](Q10_dnf_search.sh) — Search the configured repositories for a package by name or keyword using dnf.
- [Q11](Q11_dnf_install.sh) — Install a suitable package using dnf and verify that the package has been installed.
- [Q12](Q12_install_verify_version.sh) — Install a package from an available repository and verify its installed version using rpm and dnf.
- [Q13](Q13_dnf_check_update.sh) — Display available updates for installed packages using dnf without immediately applying them.
- [Q14](Q14_dnf_update_package.sh) — Update a selected installed package using dnf and verify the new version.
- [Q15](Q15_dnf_update_all.sh) — Update all packages for which updates are available and verify the result.
- [Q16](Q16_dnf_remove.sh) — Remove a selected test package using dnf and verify that it has been removed.
- [Q17](Q17_find_repo_of_package.sh) — Demonstrate how to identify the repository that provides a selected package.
- [Q18](Q18_dnf_history.sh) — Display the transaction history of DNF and identify a recent install, update or removal transaction.
- [Q19](Q19_complete_workflow.sh) — Use rpm to verify package installation and use dnf to install, update and remove a suitable test package as a complete workflow.
- [Q20](Q20_cleanup_verify.sh) — Clean up the packages and repository changes created during the lab and verify that no required system package or repository has been unintentionally modified.
