pkg load image;


tiger=imread('tiger.jpg');

[gx gy]=imgradient(tiger,'sobel');
[gmag gdir]=imgradient(gx,gy);

hFig = figure; hAxes = axes( figure ); % I usually use figure; hAxes = gca; here, but this is even more explicit.
hImage = imshow( [gx gy gmag gdir], 'Parent', hAxes,[0,255]);
title( hAxes, 'dx dy Magnitude Direction-Four fold edge detection' );

