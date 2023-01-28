N = 4;
total = 1000000;
count = 0;

p = zeros(4, 2);

for	i = 1:total
	for j = 1:N
		p(j,:) = [2*rand-1, 2*rand-1];
	end
	for j=1:N
		k = p(j,2) / p(j,1);

		b = [];
		for t = 1:N
			if t~=j
				b =[b, p(t,2) - k * p(t,1)];
			end
		end
		if ((b(1)>=0 && b(2)>=0 && b(3)>=0) || (b(1)<=0 && b(2)<=0 && b(3)<=0))
			count = count + 1;
			break;
		end
	end
end
disp(count/total);