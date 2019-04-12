function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% we are creating a new variable h that just stores the sigmoid of training set.
h = sigmoid(X * theta);

%J = (1/m)*(y*findMyCost(h,y));


%grad = (1/m)*(sum(sigmoid(X)-y)*X');


% The equation for the cost function here is straight from the pdf. Sum will iterate 
% through matrix h and perform the functions therefore we don't need a loop. 
J = (1 / m) * sum((-y .* log(h)) - ((1 - y) .* log(1 - (h))));
%J = (1 / m) * ((-y' * log(h)) - ((1 - y)' * log(1 - (h))));
%grad = (1 / m) .* X' * (h - y);

% Gradient decent here is also same as the one provided. The . is only used as h and y
% are matrices. 
grad = (1 / m) .* sum(X .* (h - y));




% =============================================================

end
