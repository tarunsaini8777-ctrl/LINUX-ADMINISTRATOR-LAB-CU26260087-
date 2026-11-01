#!/bin/bash
# Linux Lab 9: Disk & Storage Management
# Q20
# Perform a complete disk and storage management workflow: inspect disks and
# partitions, check disk usage, mount a dedicated test partition, create and
# verify data, unmount it and confirm the final storage state.
# (Safe lab: only VIRTUAL disks - files attached as loop devices - are partitioned or formatted.)

# ---------- Solution ----------
# Uses its OWN virtual disk, so it does not depend on the earlier questions.
IMG=~/lab9/workflow.img
MP=/mnt/labdisk

if findmnt -rn "$MP" >/dev/null; then
    echo "$MP is already mounted - unmount it first (sudo umount $MP) and re-run."; exit 1
fi

echo "=== 1. Inspect disks and partitions ==="
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

echo "=== 2. Check disk usage ==="
df -hT | head -6

echo "=== 3. Create and attach a virtual test disk ==="
mkdir -p ~/lab9
truncate -s 200M "$IMG"
LOOP=$(sudo losetup -fP --show "$IMG")
case "$LOOP" in /dev/loop*) ;; *) echo "SAFETY STOP: not a loop device"; exit 1 ;; esac
echo "Test disk: $LOOP"

echo "=== 4. Create a partition ==="
printf 'o\nn\np\n1\n\n\nw\n' | sudo fdisk "$LOOP" >/dev/null
sudo partprobe "$LOOP" 2>/dev/null || sudo blockdev --rereadpt "$LOOP"
sleep 1
lsblk "$LOOP"

echo "=== 5. Create filesystem and mount ==="
sudo mkfs.ext4 -q -F -L LABDISK "${LOOP}p1"
sudo mkdir -p "$MP"
sudo mount "${LOOP}p1" "$MP"
findmnt "$MP"
df -h "$MP"

echo "=== 6. Create and verify data ==="
echo "Disk lab data" | sudo tee "$MP/data.txt" >/dev/null
sudo dd if=/dev/zero of="$MP/big.bin" bs=1M count=20 status=none
ls -lh "$MP"
cat "$MP/data.txt"
df -h "$MP"

echo "=== 7. Unmount ==="
cd ~
sudo umount "$MP"
findmnt "$MP" || echo "$MP is not mounted"

echo "=== 8. Detach the virtual disk and clean up ==="
sudo losetup -d "$LOOP"
rm -f "$IMG"

# Clean up artifacts of the earlier questions (only if present)
for earlier in ~/lab9/disk1.img ~/lab9/disk2.img; do
    dev=$(losetup -j "$earlier" 2>/dev/null | cut -d: -f1)
    [ -n "$dev" ] && { findmnt -rn "$MP" >/dev/null && sudo umount "$MP"; sudo losetup -d "$dev"; }
    rm -f "$earlier"
done
sudo rmdir "$MP" 2>/dev/null

echo "=== 9. Confirm the final storage state ==="
lsblk
losetup -a
findmnt "$MP" || echo "No lab filesystem mounted"
ls -ld ~/lab9 2>/dev/null && rmdir ~/lab9 2>/dev/null
df -h | head -4
