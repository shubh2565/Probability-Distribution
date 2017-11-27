clc
clear all
close all
%computing normal distribution pdf
x = input('enter the array of sequence for which pdf is to be calculated:')
mu = input('Enter the value of mu;')
sigma = input('Enter the value of sigma:')
pd = makedist('Normal',mu,sigma);
y = pdf(pd,x)
yk = cdf(pd,x)
%or different method
y1 = pdf('Normal',x,mu,sigma)
%computing poissons distribution pdf
lambda = input('Enter the value of lambda:')
pd1 = makedist('Poisson',lambda);
y2 = pdf(pd1,x)
%or direct method
y12 = pdf('Poisson',x,lambda)
y2k = cdf(pd1,x)
%computing binomila distribution pdf
n=input('Enter the number of trials:')
p=input('Enter the probability of success for each trial:')
pd2 = makedist('Binomial',n,p);
y21=pdf(pd2,x)
%or direct method
ybin=pdf('Binomial',x,n,p)
y21k=cdf(pd2,x)
% comupting pdf for uniform distribution
a= input('lower end point (minimum):')
b= input('upper endpoint (maximum):')
pd3 = makedist('Uniform',a,b);
yuni=pdf(pd3,x)
%or direct method
ybin=pdf('Uniform',x,a,b)
yunik=cdf(pd3,x)


