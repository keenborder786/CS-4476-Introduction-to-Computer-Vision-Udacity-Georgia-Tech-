% Project a point from 3D to 2D using a matrix operation

%% Given: Point p in 3-space [x y z], and focal length f
%% Return: Location of projected point on 2D image plane [u v]
function p_img = project_point(p, f)
    A=[f 0 0 0;
       0 f 0 0;
       0 0 1 0;]
    p_hom=[p 1]'
    
    p_proj=A*p_hom
    
    p_img=[(p_proj(1)/p_proj(3)) ((p_proj(2)/p_proj(3)))];
endfunction

%% Test: Given point and focal length (units: mm)
p = [200 100 50];
f = 50;

disp(project_point(p, f));