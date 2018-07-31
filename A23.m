clc;
close all;

%training data
x=[0.5 0.75 1 1.25 1.5 1.75 1.75 2 2.25 2.5 2.75 3 3.25 3.5 4 4.25 4.50 4.75 5 5.50];
y=[0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1];


%initial values
a=0.0015; %learning rate
m=20;
i=1:20;
t0=0;   
t1=1;
j=zeros(1500,1);


for num=1:1500
   h=t0+t1*x(i);
j(num)=(0.5*m).*sum((h(i)-y(i)).^2);         %cost function
%grad
jt0=sum(h(i)-y(i));
jt1=sum((h(i)-y(i)).*x(i));
    t0=t0-a*jt0;
     t1=t1-a*jt1;  
end

x=[0.5 0.75 1 1.25 1.5 1.75 1.75 2 2.25 2.5 2.75 3 3.25 3.5 4 4.25 4.50 4.75 5 5.50]';
y=[0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 1 1]';
x = [ones(20,1) ,x];  
a1=0.1; %learning rate
m=20;     
 t1 = zeros(2,1);
 j1=zeros(5000,1);
 
for num1=1:5000
    hyp1 = x * t1;
  h1 = 1./(1+exp(-hyp1));
j1(num1)=-(1/m) * sum(y.*log(h1) + (1-y) .*log(1-h1));         %cost function
grad1 = (1/m) .* x' *(h1-y); 
 t1 = t1 - a1*grad1; 
end  

%hypothesis plot
figure('Name','hypothesis1')
scatter (x(:,2),y)
hold on
plot(x(:,2),h)
hold on
plot(x(:,2),h1)
axis([0 6 -0.5 1.5])
xlabel('hours studied')
ylabel('pass/fail')
hold off








