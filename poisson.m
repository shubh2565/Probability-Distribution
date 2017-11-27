% Clears screen and deletes all the variables in the workspace
clc; clear; 

% Asks the user for input
f = input('Calculated Frequency: ');
x = input('Test Frequency: '); 

% Computes probability
a = log(factorial(x));
a = exp(-f + x*log(f) - a); 

% Displays result
str = ['Probability of ' num2str(x) ' occurrences = ' num2str(a)];
disp(str)

