x1 = linspace(0, 1, 10000);
y1 = sqrt(1 - x1.^2);

for t = [500, 1000, 2000, 5000, 10000]
	count = 0;
	x2 = rand(1, t);
	y2 = rand(1, t);
	for i = 1:t
		if x2(i)^2 + y2(i)^2 <= 1
			count = count + 1;
		end
	end
	plot(x1, y1, 'k', x2, y2, '.', ...
		'lineWidth', 4);
	title("pi="+num2str(4*count/t));
	axis square;

	% 捕获figure图形，连接形成gif
	frame = getframe(gcf);
	I = frame2im(frame);
	[I, map] = rgb2ind(I, 256);

	if i == 500
		imwrite(I, map, 'test.gif','gif', 'LoopCount',inf, 'DelayTime',0.2);
	else
		imwrite(I, map, 'test.gif', 'gif', 'WriteMode', 'append', 'DelayTime', 0.2);
	end
end

