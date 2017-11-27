% Clears screen and deletes all the variables in the workspace
clc;
clear; 

% Asks the user for input
m = input('Mean: ');
s = input('Std. Dev: ');
y = input('x = '); 

% Calculates the frequency (y coordinate)
y = abs((y - m)/s);
r = exp(-y^2/2)/sqrt(2*pi);
str = ['Frequency: ' num2str(r)];
disp(str) 

z = y;
% Approximates probability (area under curve)
y = 1/(1 + 0.33267*abs(y));
a1 = 0.4361836;
a2 = -0.1201676;
a3 = 0.9372980;
t = 1 - r*(a1*y + a2*y^2 + a3*y^3);
if z < 0
    t = 1 - t;
end

str = ['Probability: ' num2str(t)];
disp(str)
