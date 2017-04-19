function D = FWalg(A)
%FWalg Finds a matrix of shortest distances between all nodes in a weighted network 
%Uses the Floyd-Warshall algorithm 
%   D = FWalg(A) finds the shortest paths of weighted network with
%   adjacency matrix A


% part 1, Initialize D^(0) matrix
D = repmat(A,1);% copied A to D because d = 0 when i and j are connected
D(D == 0)=Inf; % make all zero entries infinty because d = infinty when i and j are not connected
D(eye(size(D))~=0)=0; % make diagonal all zero because d = 0 when i = j

% part 2
n = length(A);
for k = 1:n % will repeat n times because we want D^(n)
    columnk = D(:, k); %find k'th column
    columnMatrix = repmat(columnk, 1,n); % copy k'th column
    rowk = D(k,:);%find k'th row
    rowMatrix = repmat(rowk, n, 1); %copy k'th row
    D = min(D, columnMatrix + rowMatrix); % find minimum value of to make D^(k) matrix
end

end

