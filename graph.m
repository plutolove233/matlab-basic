i = imread('printedtext.png');

bw = imbinarize(i, "adaptive","ForegroundPolarity","dark", "Sensitivity",0.2);
imshow(bw)