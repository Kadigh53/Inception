# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaoutem- <aaoutem-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/26 18:07:58 by aaoutem-          #+#    #+#              #
#    Updated: 2024/06/13 17:58:59 by aaoutem-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#run docker compose
build:
	mkdir -p /Users/aaoutem-/data/mariadbvolume
	mkdir -p /Users/aaoutem-/data/wordpressvolume
	docker compose -f ./srcs/compose.yml up --build
rm:
	docker compose -f ./srcs/compose.yml down
	docker image rm srcs-nginx srcs-wordpress srcs-mariadb
	docker volume rm -f srcs_mariadb srcs_wordpress

re : rm build