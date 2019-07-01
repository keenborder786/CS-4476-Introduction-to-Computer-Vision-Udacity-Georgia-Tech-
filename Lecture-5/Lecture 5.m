pkg load image;

filt=fspecial("sobel");
tiger=imread('tiger.jpg');
outx=imfilter(double(tiger),filt);
disp(outx>2(1,:));
imshow(outx);
imwrite(outx,'edges.png');