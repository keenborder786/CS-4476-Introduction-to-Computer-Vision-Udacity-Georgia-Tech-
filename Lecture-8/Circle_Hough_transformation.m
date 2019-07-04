pkg load image;
img=imread("lenna.png");
grays=rgb2gray(img);
edges=edge(grays,'canny');

accumulator = hough_circle(edges,[3,7]);
figure, imagesc(accumulator(:,:,1));
title ("Hough transform of edge image(r=3) \n 2 points(radius) marked");
figure, imagesc(accumulator(:,:,2));
title ("Hough transform of edge image(r=7) \n 2 points(radius) marked");

peaks=houghpeaks(accumulator(:,:,1),100);
figure,scatter([peaks(:,1)],[peaks(:,2)]),title("Peaks(r=3) in Hough accumulator");
disp(size(peaks));

peaks=houghpeaks(accumulator(:,:,2),100);
figure,scatter([peaks(:,1)],[peaks(:,2)]),title("Peaks(r=7) in Hough accumulator");
disp(size(peaks));
