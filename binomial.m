clc
clear all

n = input('Number of trials: ');
x = input('Exact number of successes: ');
p = input('Probability of success: ');

m1 = log(factorial(n));
m2 = log(factorial(x));
m3 = log(factorial(n-x));
r = exp(m1 - m2 - m3 + x*log(p) + (n-x)*log(1-p));

r

str = ['Probability of ' num2str(x) ' successes in ' ...                
    num2str(n) ' trials: ' num2str(r)];
disp(str)