function value = randMat(n)
% defines a n * n matrix of random numbers between [-1,1]
% returns A^T * A + I

A = -1 + (1+1)*rand(n);
value = A.'*A + eye(n);
end
