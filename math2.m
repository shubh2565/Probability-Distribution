clc
clear all
close all
x=0:.025:5;
yd=exppdf(x);
yp=expcdf(x);
subplot(2,1,1)
plot(x,yd)
title('Standard Exponential Density Function')
subplot(2,1,2)
plot(x,yp)
title('Standard Exponential Distribution Function') 

xn= -3:.03:3;
ydn= normpdf(xn);
figure
subplot(2,1,1)
plot(xn,ydn)
title('Standard Normal Density Function')
subplot(2,1,2)
plot(xn,normcdf(xn))
title('Standard Normal Distribution Function') 

yd4=exppdf(x,4);
figure
subplot(2,1,1)
plot(x,yd)
subplot(2,1,2)
plot(x,yd4) 
 
 
x=0:10;
y=binopdf(x,10,.2);
figure
stem(x,y)
axis ([-1 11 0 .35]) 
figure
x=0:10;
y=binocdf(x,10,.2);
stairs(x,y)
axis ([-1 11 0 1.1]) 

