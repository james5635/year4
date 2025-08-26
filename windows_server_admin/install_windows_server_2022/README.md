# Download Windows Server 2022

visit [https://www.microsoft.com/en-us/evalcenter/download-windows-server-2022](https://www.microsoft.com/en-us/evalcenter/download-windows-server-2022) and download the windows server 2022 ISO file

# Installing

```bash
qemu-img create -f qcow2 mydisk.img 20G
qemu-system-x86_64 -cdrom ~/Downloads/SERVER_EVAL_x64FRE_en-us.iso -boot d -enable-kvm -m 2G -cpu host -hda mydisk.img

qemu-system-x86_64 -enable-kvm -m 2G -cpu host -hda mydisk.img
```
