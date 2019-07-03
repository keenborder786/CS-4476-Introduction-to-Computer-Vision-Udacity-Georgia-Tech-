pkg load image;
img=imread("lenna.png");
grays=rgb2gray(img);
edges=edge(grays,'canny');

[H, theta, rho] = hough (edges);
figure, imagesc(H);
title ("Hough transform of edge image \n 2 peaks marked");

peaks=houghpeaks(H,100);
figure,scatter([peaks(:,1)],[peaks(:,2)]),title("Peaks in Hough accumulator");
disp(size(peaks));

line_seg=houghlines(edges,theta,rho,peaks);
figure,imshow(img),title("Lines Detection");
hold on;
disp(line_seg(2));
for k=1:length(line_seg);
  endpoints=[line_seg(k).point1;line_seg(k).point2]
  line(endpoints(:,1),endpoints(:,2),"LineWidth",2,"Color",'green')
endfor;
hold off;



