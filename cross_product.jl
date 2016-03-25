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