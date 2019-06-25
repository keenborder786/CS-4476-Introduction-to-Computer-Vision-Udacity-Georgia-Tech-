pkg load image;
dolphin=imread('dolphin.jpg');
cycle=imread('byc.jpg');
saturn=imread('saturn.jpg');
dolphin=imresize(dolphin,[360,360])
cycle=imresize(cycle,[360,360])
saturn=imresize(saturn,[360,360])

%combined_image=dolphin+cycle;
%imshow(combined_image)

function output = blend(a,b,alpha)
  output=a * alpha + b* (1-alpha);
endfunction

result=blend(dolphin,cycle,0.75);
%imshow(result);

%%alternative way to see difference of two images
diff_images=dolphin-cycle; %Scales value betwee [0,255] , where negative values become 0
abs_images=imabsdiff(dolphin,cycle);


noise=randn([1 10000]);
%[n,x]=hist(noise,linspace(-3,3,7));
% plot(x,n);
%Apply Gaussian noise to an image
noise=randn(size(saturn)).*50;
imshow([saturn,noise+saturn]);
