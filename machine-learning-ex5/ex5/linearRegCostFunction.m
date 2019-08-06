function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h_theta = X * theta; % 12x2 * 2x1 = 12x1


%J =  (1/(2*m)) * (sum((h_theta-y).^2) + ((lambda/(2*m)) * (sum(theta(2:end).^2))));
% Could not use the first form as it .2 would make the answer a bit off from what they need


J = (1/(2*m))*sum(power((h_theta - y),2))+ (lambda/(2*m)) * sum(power(theta(2:end),2));

G = (lambda/m) .* theta;

G(1) = 0;

grad = ((1/m) .* X' * (h_theta - y)) +G;




% =========================================================================

grad = grad(:);

end
