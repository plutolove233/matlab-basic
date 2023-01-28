function res = GetMatrix(isInt, range, sz)
%CIRCLE 计算圆的面积
	if (isInt)
		res = randi(range, sz);
	else
		res = rand(sz)*(range(2)-range(1)) + range(1);
	end
end

