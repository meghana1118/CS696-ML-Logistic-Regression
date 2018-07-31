clc;
close all;
%training data
x=[0.5 0.75 1 1.25 1.5 1.75 1.75 2 2.25 2.5 2.75 3 3.25 3.5 4 4.25 4.50 4.75 5 5.50]';
y=[0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1]';
x1=[1.75 2.25 2.75 3.25 4 4.25 4.50 4.75 5 5.50]';
x=[0.5 0.75 1 1.25 1.5 1.75 2 2.50 3 3.5 ]';
x = [ones(10,1) ,x];  
x1 = [ones(10,1) ,x1];
a=0.1; %learning rate
m=20;     
 t = zeros(2,1);
 j=zeros(0,1);
 
if y==1
    hyp = x1 * t;
  h = 1./(1+exp(-hyp));
j=-log(h); %cost function
t=-100
plot(g,j)
else
    hyp = x * t;
  h = 1./(1+exp(-hyp));
  j=log(1-h);
  plot(h,j)
end  






