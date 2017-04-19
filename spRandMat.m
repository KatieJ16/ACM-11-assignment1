function value = spRandMat(n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
A = sprand(n, n, .05);
value = A.'*A + speye(n);

end

