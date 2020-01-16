# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Kashnitskiy <elijahkash.code@gmail.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/12 21:57:42 by Kashnitskiy       #+#    #+#              #
#    Updated: 2020/01/16 15:24:32 by Kashnitskiy      ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# NAME YOU PROJECT!
NAME = new_project

CMAKEDIR = ./tmp/
LIBDIR = ./libft/

all: $(NAME)

$(NAME): callcmake

callcmake: $(CMAKEDIR) $(CMAKEDIR)Makefile
	$(MAKE) -C $(CMAKEDIR) $(MAKECMDGOALS)

$(CMAKEDIR):
	mkdir -p $(CMAKEDIR)

cmake: $(CMAKEDIR)
	cd $(CMAKEDIR); cmake ../

$(CMAKEDIR)Makefile:
	cd $(CMAKEDIR); cmake ../

clean:
	$(MAKE) -C $(LIBDIR) clean
	rm -r -f $(CMAKEDIR)
	rm -r -f *.dSYM
	rm -r -f $(NAME).debug

fclean:
	$(MAKE) -C $(LIBDIR) fclean
	rm -r -f $(CMAKEDIR)
	rm -r -f $(NAME)
	rm -r -f $(NAME).debug
	rm -r -f *.dSYM

re: fclean
	$(MAKE) all

debug: all

