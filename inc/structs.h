/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   structs.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anestor <anestor@student.unit.ua>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/04 16:03:57 by anestor           #+#    #+#             */
/*   Updated: 2018/07/04 16:36:17 by anestor          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef STRUCTS_H
# define STRUCTS_H

typedef struct		s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;
}					t_list;

typedef struct		s_xy
{
	int				x;
	int				y;
}					t_xy;

typedef struct		s_xyz
{
	int				x;
	int				y;
	int				z;
}					t_xyz;

typedef struct		s_dxy
{
	double			x;
	double			y;
}					t_dxy;

typedef struct		s_dxyz
{
	double			x;
	double			y;
	double			z;
}					t_dxyz;

typedef struct		s_rgba
{
	unsigned char	b;
	unsigned char	g;
	unsigned char	r;
	unsigned char	a;
}					t_rgba;

typedef union		u_color
{
	int				i;
	t_rgba			c;
}					t_ucolor;

typedef struct		s_vec
{
	float			x;
	float			y;
	float			z;
}					t_svec;

typedef float		t_vec __attribute__((vector_size(sizeof(float)*3)));

typedef union		u_vec
{
	t_vec			tv;
	t_svec			sv;
}					t_uvec;

#endif
