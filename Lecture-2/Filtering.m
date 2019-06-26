pkg load image;
hsize=31;
sigma=5;
figure;


%displaying the data
im=imread("saturn.jpg");
imshow(im);
h=fspecial('gaussian',hsize,sigma);%creating a gaussianfilter learned in class
surf(h);
imagesc(h);
outim=imfilter(im,h);%apply filter to your image
imshow(outim);


