function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%


h = sigmoid(X * theta);

% We are using a different theta here where the first member of that theta is 
% going to be 0. thetaZero(1) will do that. We are doing so as in Octave the indexing 
% starts from 1 which means the intercept part of theta will be the first member of theta
% and we don't need to regularize that. 
thetaZero = theta;
thetaZero(1) = 0; % because we don't add anything for j = 0  


% The equation for the cost function here is straight from the pdf. Sum will iterate 
% through matrix h and perform the functions therefore we don't need a loop. 
% The equation is same as the one provided to us.
J = ((1 / m) * sum((-y .* log(h)) - ((1 - y) .* log(1 - (h)))))+((lambda/(2*m))*(sum(thetaZero.^2)));


% Here the equation is almost same as the one provided. The only diffrence is that we had 
% to transpose thetaZero to match the dimensions with h-y sum. 
grad = ((1 / m) .* sum(X .* (h - y)))+(lambda/m)*(thetaZero');

% =============================================================

grad = grad(:);

end
