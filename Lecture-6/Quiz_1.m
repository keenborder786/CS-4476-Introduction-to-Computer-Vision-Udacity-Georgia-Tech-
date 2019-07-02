% For Your Eyes Only
pkg load image;

frizzy = imread('frizzy.png');
froomer = imread('frommer.png');
imshow(frizzy);
imshow(froomer);
frizzy_gray=rgb2gray(frizzy);
froomer_gray=rgb2gray(froomer);
% TODO: Find edges in frizzy and froomer images
edge_im=edge(frizzy_gray,'canny');
edge_im_2=edge(froomer_gray,'canny');
% TODO: Display common edge pixels
imshow(edge_im&edge_im_2);
