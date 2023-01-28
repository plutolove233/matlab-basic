n = 1000000; % point number
inner = 0;

X = linspace(0, 1, 100);
Y = sqrt(1-X.^2);
% plot(X,Y);

% hold on;

for i=1:n
	x = rand();
	y = rand();
% 	plot(x, y, 'go');
	if ((x^2+y^2)<=1)
		inner = inner + 1;
	end
end

% hold off;

res = (inner / n) * 4;
fprintf("pi=%f\n", res);