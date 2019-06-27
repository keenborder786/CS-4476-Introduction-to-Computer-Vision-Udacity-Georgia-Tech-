pkg load image
img=imread("fallen_leaves.png");
filter_size=21;
filter_sigma=3;
filter=fspecial("gaussian",filter_size,filter_sigma);

smoother=imfilter(img,filter,'symmetric');
smoother_1=imfilter(img,filter,'circular');
smoother_2=imfilter(img,filter,0);
smoother_3=imfilter(img,filter,'replicate');
imshow([smoother,smoother_1,smoother_2,smoother_3]);
imwrite([smoother,smoother_1,smoother_2,smoother_3],"results.png");