#!/bin/bash
# Linux Lab Sheet 6: File Permissions & ACL
# Q20
# Create, modify, verify and clean up file permissions and ACLs in a complete
# workflow using chmod, umask, setfacl and getfacl.

# ---------- Solution ----------
command -v setfacl >/dev/null || sudo apt install acl -y

echo "1. Create workspace, user and group"
mkdir -p ~/lab6_workflow && cd ~/lab6_workflow || exit 1
sudo groupadd wfgroup
sudo useradd -m wfuser

echo "2. Create files with chmod"
touch report.txt
chmod 640 report.txt
ls -l report.txt

echo "3. umask 027 for new files"
( umask 027; touch umask_test.txt; ls -l umask_test.txt )

echo "4. Add ACL entries"
setfacl -m u:wfuser:rw report.txt
setfacl -m g:wfgroup:r report.txt
getfacl report.txt

echo "5. Default ACL on a directory"
mkdir shared
setfacl -m u:wfuser:rwx shared
setfacl -d -m u:wfuser:rw shared
touch shared/inherit.txt
getfacl shared/inherit.txt

echo "6. Modify and remove ACL entries"
setfacl -m u:wfuser:r report.txt
setfacl -x g:wfgroup report.txt
getfacl report.txt
setfacl -b report.txt                      # remove all ACLs
getfacl report.txt

echo "7. Clean up"
cd ~
rm -rf ~/lab6_workflow
sudo userdel -r wfuser
sudo groupdel wfgroup
echo "Workflow finished and cleaned."

# Optional: clean up the earlier lab users/groups from Q14:
#   sudo userdel -r acluser; sudo groupdel aclgroup; rm -rf ~/lab6
