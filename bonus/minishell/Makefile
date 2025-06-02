##
## EPITECH PROJECT, 2025
## make
## File description:
## make
##

NAME	=	libshell.a

SRC		=	$(wildcard *.asm)

OBJ		=	$(SRC:.asm=.o)

ASM		=	nasm

ASMFLAGS	=	-f elf64

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

all:	$(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re:	fclean all

run: re
	gcc main.c -L. -lshell -o test -fno-builtin
	./test
