##
## EPITECH PROJECT, 2025
## make
## File description:
## make
##

NAME	=	libasm.so

SRC		=	strlen.asm	\
			strchr.asm	\
			memset.asm	\
			memcpy.asm	\
			strcmp.asm	\
			memmove.asm	\

OBJ		=	$(SRC:.asm=.o)

ASM		=	nasm

ASMFLAGS	=	-f elf64

LD	=	ld

LDFLAGS	=	-shared -fPIC

RM	=	rm -rf

all: $(OBJ)
	$(LD) $(LDFLAGS) -o $(NAME) $(OBJ)

%.o: %.asm
	$(ASM) $(ASMFLAGS) -o $@ $<

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

run: re
	gcc -no-pie main.c -L. -lasm -o test -Wl,-rpath,.
	./test
	rm test
