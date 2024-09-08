#!/bin/bash
efibootmgr --create \
 --disk /dev/nvme0n1 --part 1 \
 --label "Arch Linux" \
 --loader /vmlinuz-linux-vfio-lts \
 --unicode 'root=PARTUUID=44bfa8dd-d6d9-4b93-97e1-ec344d274408 rw splash quiet amd_iommu=on iommu=pt pcie_port_pm=off video=1920x1080 initrd=\initramfs-linux-vfio-lts.img'