range = input("please input the range: ");
sz = input("please input the size of matrix: ");
isInt = input("please confirm the type of element in matrix: ");
if (isInt)
	res = randi(range, sz);
else
	res = rand(sz)*(range(2)-range(1)) + range(1);
end

disp(res);