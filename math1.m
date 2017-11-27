clc
clear all
close all
for i=1:2000
    w(i) = rand(1);
 
    X1(i) = 4*tan(pi*w(i)/3);
end
%plot X1
        figure
        plot(w,X1,'.');
        xlabel('w');
        ylabel('X1');
 
    %plot CDF of X1
        figure
        cdfplot(X1);
        figure
        hist(X1);
        for i=1:500
            z(i)=rand(1);
            k(i)=2*sin(pi*z(i)/6);
        end
        figure
        plot(z,k,'.');
        xlabel('z');
        ylabel('k');
 
    %plot CDF of k
        figure
        cdfplot(k);
        figure
        hist(k);

