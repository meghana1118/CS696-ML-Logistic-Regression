clc;
close all;
%training data
x=[0.5 0.75 1 1.25 1.5 1.75 1.75 2 2.25 2.5 2.75 3 3.25 3.5 4 4.25 4.50 4.75 5 5.50]';
y=[0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1]';
x = [ones(20,1) ,x];  
a=0.1; %learning rate
m=20;     
 t = zeros(2,1);
 j=zeros(5000,1);
 
for num=1:5000
    hyp = x * t;
  h = 1./(1+exp(-hyp));
j(num)=-(1/m) * sum(y.*log(h) + (1-y) .*log(1-h));         %cost function
grad = (1/m) .* x' *(h-y); 
 t = t - a*grad;
  plot(0:4999,j(1:5000))   
end  

%hypothesis plot
figure('Name','hypothesis')
scatter (x(:,2),y)
hold on
plot(x(:,2),h)
axis([0 6 -0.5 1.5])
xlabel('hours studied')
ylabel('pass/fail')

xlabel('Number of iterations')
ylabel('Cost J')




