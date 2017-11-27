clc
clear all
close all
normrnd(3,2,[6 1])
randn('state',255)
z=normrnd(3,2,[500 1])
clf
hist(z) 
figure
x=-5:.1:10;
y=normpdf(x,3,2);
plot(x,y) 
	
