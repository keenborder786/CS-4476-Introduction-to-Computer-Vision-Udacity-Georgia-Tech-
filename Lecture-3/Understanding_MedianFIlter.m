pkg load image
img=imread("fallen_leaves.png");

noisy_img=imnoise(img,'salt & pepper',0.02);

median_filtered=medfilt2(noisy_img);
imshow([img,noisy_img,median_filtered]);
imwrite([img,noisy_img,median_filtered],"MedianFIlter.png");