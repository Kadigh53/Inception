# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaoutem- <aaoutem-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/26 18:07:58 by aaoutem-          #+#    #+#              #
#    Updated: 2024/06/02 15:20:56 by aaoutem-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#run docker compose
build:
	docker compose -f ./srcs/compose.yml up
rm:
	docker compose -f ./srcs/compose.yml rm 
	docker image rm -f srcs-wordpress srcs-nginx srcs-mariadb
re : rm 
	docker compose -f ./srcs/compose.yml up