# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaoutem- <aaoutem-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/26 18:07:58 by aaoutem-          #+#    #+#              #
#    Updated: 2024/04/25 05:20:52 by aaoutem-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:
	docker image build -t mariadb-img ./srcs/mariaDB
# docker image build -t nginx-img ./srcs/NGINX

run:
	docker container run --name mariadb mariadb-img
#docker container run -d -p 80:80 -p 443:443 --name nginx nginx-img