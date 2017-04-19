function D = FWalg(A)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%when i and j are connected d = a_ij
%when i = j, d = 0
%when not connected d = infty

%part one
D = repmat(A,1);%copied A to D because d = 0 when i and j are connected
D(D == 0)=Inf; % make all zero entries infinty because d = infinty when i and j are not connected
D(eye(size(D))~=0)=0; % make diagonal all zero because d - 0 when i = j

% part 2 with loops
% need to make with out the i and j loop
n = length(A);
for k = 1:n
    columnk = D(:, k);
    columnMatrix = repmat(columnk, 1,n);
    rowk = D(k,:);
    rowMatrix = repmat(rowk, n, 1);
    D = min(D, columnMatrix + rowMatrix);

    
end

end

