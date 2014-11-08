all:
	nasm -f elf syscall-processid.asm
	ld -melf_i386 -s -o syscall syscall-processid.o -lc -I/lib/ld-linux.so.2
