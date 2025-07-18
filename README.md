# Custom Bootloader – "Hello, OS!"

This project is a simple x86 bootloader written in 16-bit Assembly that displays a message on screen when loaded by the BIOS. It marks the beginning of my operating system development journey.

## 💾 How It Works
- The bootloader is loaded into memory at `0x7c00` by the BIOS.
- It uses BIOS interrupt `int 0x10` to display characters.
- Ends with `0xAA55` signature to mark bootable sector.

## 🚀 Run It

```bash
nasm -f bin boot.asm -o helloos.img
qemu-system-x86_64 -drive format=raw,file=helloos.img
```

## 🛠 Tools Used
- NASM (Assembly compiler)
- QEMU (Virtual Machine Emulator)
- Ubuntu (Development environment)

## 📜 License
Licensed under MIT. See LICENSE for details.
