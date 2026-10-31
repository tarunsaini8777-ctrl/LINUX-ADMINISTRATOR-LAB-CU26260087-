# Linux Lab 7: Process Management

**Aim:** To understand and practice Linux process management and job control using ps, top, htop, kill, pkill and foreground/background job commands.

**Environment:** Ubuntu Linux / Kali Linux / Red Hat Linux (Terminal)

**Prerequisites:** Basic Linux commands and File Permissions & ACL.

> Notes:
> - Job-control scripts use `set -m` so `jobs`, `fg` and `bg` work inside a script. In your normal terminal you do not need it.
> - Keyboard actions (Ctrl+C, Ctrl+Z, top, htop keys) are written as MANUAL steps in the comments; each file also has an automated equivalent that sends the same signal (SIGINT / SIGTSTP) so the script runs without interaction.
> - Only harmless `sleep` / `yes` test processes are started and cleaned up. Never kill system processes.

## Questions

- [Q1](Q01_ps_current_user.sh) — Display the processes associated with the current user using ps and observe the PID, terminal and process status.
- [Q2](Q02_ps_all.sh) — Display all processes running on the system using an appropriate ps option and identify the PID, user and command fields.
- [Q3](Q03_ps_aux.sh) — Display a detailed process listing using ps aux and identify the CPU and memory usage fields.
- [Q4](Q04_ps_hierarchy.sh) — Display the process hierarchy using ps with an option that shows parent-child relationships.
- [Q5](Q05_top.sh) — Start the top command and observe the running processes, CPU usage, memory usage and process IDs.
- [Q6](Q06_top_high_usage.sh) — Use top to identify a process with high CPU or memory usage and record its PID.
- [Q7](Q07_htop.sh) — Start htop and use its interactive interface to view processes and resource usage.
- [Q8](Q08_ctrl_c.sh) — Start a long-running command in the foreground and terminate it using Ctrl+C.
- [Q9](Q09_background_job.sh) — Start a long-running command in the background using the & operator and display the assigned job information.
- [Q10](Q10_jobs.sh) — Display the jobs currently running in the shell using the jobs command.
- [Q11](Q11_fg_terminate.sh) — Bring a background job to the foreground using the fg command and then terminate it safely.
- [Q12](Q12_ctrl_z_stop.sh) — Suspend a running foreground process using Ctrl+Z and verify that the job has been stopped.
- [Q13](Q13_bg_resume.sh) — Resume a stopped job in the background using bg and verify its status using jobs.
- [Q14](Q14_jobs_l.sh) — Use jobs -l to display the job number and PID of background or stopped jobs.
- [Q15](Q15_kill_pid.sh) — Use kill with a selected PID to terminate a process and verify that the process has ended.
- [Q16](Q16_kill_term.sh) — Use kill -TERM with a selected PID and explain why SIGTERM is normally preferred before forceful termination.
- [Q17](Q17_kill_kill.sh) — Use kill -KILL with a selected test process when normal termination does not work, and verify the result.
- [Q18](Q18_pkill.sh) — Use pkill to terminate a selected test process by its process name and verify that it has ended.
- [Q19](Q19_manage_multiple.sh) — Use ps, jobs and appropriate process-control commands to identify and manage multiple test processes safely.
- [Q20](Q20_complete_workflow.sh) — Perform a complete process-management workflow: inspect processes, start a foreground job, move a job to the background, suspend/resume it, terminate it with kill, and clean up all test processes.
