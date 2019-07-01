pkg load image;
function index=find_template_1D(t,s)
  c=normxcorr2(t,s);
  disp([1:size(c,2);c]);
  [maxValue rawindex]=max(c,2);
  index=rawindex-size(t,2)+1;
endfunction

s=[-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t=[1 1 0];
index=find_template_1D(t,s);
disp('index:'),disp(index);