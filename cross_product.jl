/**
* Find the nth-dimensional vector solution to the cross product of a n by (n-1) matrix julia function
* Qijia (Michael) Jin
* @version 1.0
*
Copyright (C) 2014  Qijia (Michael) Jin
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
function cross_product (x)
	z = zeros(1, size(x)[1])
	for zi = 1:size(x)[1]
		#tmp = det(copy(x)[[1:(zi-1), (zi+1):end], :]::Array{Int64, (size(x)[2] - 1)})
		tmp = det(copy(x)[[1:(zi-1), (zi+1):end], :])
		if ((zi % 2) == 0)
			tmp = -tmp
		end
		z[zi] = tmp
	end
	return z
end