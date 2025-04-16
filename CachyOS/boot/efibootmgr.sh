#!/bin/bash
efibootmgr --create \
 --disk /dev/sdb --part 1 \
 --label "SteavenLinux" \
 --loader /vmlinuz-linux-cachyos \
 --unicode 'root=PARTUUID=348fb182-d4b7-4082-a8ee-04a2e88095b0 rw splash quiet amd_iommu=on iommu=pt pcie_acs_override=downstream,multifunction pcie_port_pm=off video=1920x1080 initrd=\initramfs-linux-cachyos.img'
