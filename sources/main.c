/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Kashnitskiy <elijahkash.code@gmail.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/16 15:14:46 by Kashnitskiy       #+#    #+#             */
/*   Updated: 2020/01/16 15:18:30 by Kashnitskiy      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int		main(void)
{
	ft_memman_init();

// put your code here

	ft_force_buff();
	ft_memman_clean();
	return (0);
}
