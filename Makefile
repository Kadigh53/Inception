# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaoutem- <aaoutem-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/26 18:07:58 by aaoutem-          #+#    #+#              #
#    Updated: 2024/06/01 15:53:16 by aaoutem-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#run docker compose
build:
	docker compose -f ./srcs/compose.yml up
rm:
	docker compose -f ./srcs/compose.yml rm

# rerun :
# 	docker container rm -f wp
# 	docker container run -it -p 9000:9000 --name wp wp-img