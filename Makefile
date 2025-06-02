##
## EPITECH PROJECT, 2025
## make
## File description:
## make
##

NAME	=	libasm.so

SRC		=	strlen.asm		\
			strchr.asm		\
			strrchr.asm		\
			memset.asm		\
			memcpy.asm		\
			strcmp.asm		\
			memmove.asm		\
			strncmp.asm		\
			strcasecmp.asm	\
			strstr.asm		\
			strfry.asm		\
			strpbrk.asm		\
			strcspn.asm		\
			ffs.asm			\
			memfrob.asm		\
			syscall.asm		\
			getline.asm		\

OBJ		=	$(SRC:.asm=.o)

ASM		=	nasm

ASMFLAGS	=	-f elf64 

LD		=	ld

LDFLAGS		=	-shared

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

all:	$(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all

run: re
	gcc main.c -L. -lasm -o test -fno-builtin
	./test
