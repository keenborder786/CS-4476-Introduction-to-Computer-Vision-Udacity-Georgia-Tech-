pkg load image;
lenna=imread("lenna.png");
figure,imshow(lenna),title('Orginal Image color');
lenna_gray=rgb2gray(lenna);
%grayscale image
figure,imshow(lenna_gray),title('Orginal Image monochrome');
%%make a smooth version
h=fspecial("gaussian",[11 11],4);
figure,surf(h);

%apply the filter
lena_smoothed=imfilter(lenna_gray,h);
figure,imshow(lena_smoothed),title("Orginal Image Smoothed");
%Method1: Shift left and right and show the difference:

lenaL=lena_smoothed
lenaL(:,[1:(end-1)])=lenaL(:,[2:end]);
lenaR=lena_smoothed
lenaR(:,[2:(end)])=lenaR(:,[1:(end-1)]);
lenaDiff=double(lenaR)-double(lenaL);
figure,imshow(lenaDiff,[]),title("Difference between right and left sifted images")

%Method2:Canny Edge Detector
edge_im=edge(lena_smoothed,'canny');
figure,imshow(edge_im),title("Image Edge Detection-Canny");

%Method3 :Laplacian of Gaussian
logEdges=edge(lena_smoothed,'log');
figure,imshow(edge_im),title("Image Edge Detection-Laplacian of Gaussian");

