index = input("please input the index of finbonai: ");
f(1) = 1;
s(1) = 1;
f(2) = 1;
s(2) = f(2)+s(1);
for i=3:index
	f(i) = f(i-1) + f(i-2);
	s(i) = s(i-1) + f(i);
end

fprintf("第%d个数是%d, 总和为%d\n", index, f(index), s(index));