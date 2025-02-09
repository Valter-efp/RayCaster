NAME = game
CC = cc
OBJ = $(SRC:.c=.o)

LFLAGS = -L./includes/minilibx-linux -lmlx -lXext -lX11 -lm -lz
INCLUDES = includes/minilibx-linux/libmlx.a
SRC = src/main.c src/player.c

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(SRC) -o $(NAME) $(INCLUDES) $(LFLAGS)

fclean:
	rm -f $(OBJ)
	rm -f $(NAME)