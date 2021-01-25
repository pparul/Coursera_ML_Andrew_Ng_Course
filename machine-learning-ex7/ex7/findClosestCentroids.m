function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%





for i_indx = 1:size(X,1)
    locn = zeros(K,1);
    
    for i_cent = 1:K
        %locn(i_cent)  = sqrt((X(i_indx,1) - centroids(i_cent,1)).^2 + (X(i_indx,2) - centroids(i_cent,2)).^2);
        locn(i_cent)  = sqrt(sum((X(i_indx,:) - centroids(i_cent,:)).^2));
    end
    aa = find(locn == min(locn));
    idx(i_indx) = aa(1);
end

