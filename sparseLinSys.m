function sparseLinSys
%add comments

close all;
clear;
clc;
n= [10,100,1000,2000];
for n = n
    S = spRandMat(n);
    b = -1 + (1+1)*rand(n,1);
    tic
    x = S\b;
    elapsedTime = toc;
    fprintf('When n = %i, the time to compute Sx = b is %f seconds\n', n, elapsedTime)
end 