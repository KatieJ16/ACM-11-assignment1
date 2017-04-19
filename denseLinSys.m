function denseLinSys
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
close all;
clear;
clc;
n = [10, 100, 1000, 2000];
for n = n
    S = randMat(n);
    b = -1 + (1+1)*rand(n,1);
    tic
    x = S\b;
    elapsedTime = toc;
    fprintf('When n = %i, the time to compute Sx = b is %f seconds\n', n, elapsedTime)
end 

end

