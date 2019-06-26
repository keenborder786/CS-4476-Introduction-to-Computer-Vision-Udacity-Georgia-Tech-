% Apply a Gaussian filter to remove noise
pkg load image
img = imread('saturn.png');
imshow(img);
sigma=5;
% TODO: Add noise to the image
noise=rand(size(img)).*7;
noise_image=img+noise

% TODO: Now apply a Gaussian filter to smooth out the noise
GF=fspecial("gaussian",3,sigma);
out=imfilter(img,GF);
imshow(out);
% Note: You may need to pkg load image;