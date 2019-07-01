pkg load image;
function [xindex,yindex]=find_template_2D(template,img)
  c=normxcorr2(template,img);
  disp([size(c,1);size(c,2)]);
  [xRaw,yRaw]=find(c==max(c(:)));
  xindex=xRaw-size(template,1)+1;
  yindex=yRaw-size(template,2)+1;
endfunction


saturn=imread('saturn.jpg');
saturn_part=saturn(75:165,150:185);
[x,y]=find_template_2D(saturn_part,saturn);
disp([x,y]);
 
