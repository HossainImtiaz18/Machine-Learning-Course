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
X = X';
y=y';
theta=theta';
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


Xx=theta*X;
X=X';
P=Xx-y;
Pp=P.^2;
s = sum(Pp);
J = (1/(2*m))*s;

thetaa = theta.^2;
an = sum(thetaa)-thetaa(1);
J = J + (an*lambda)/(2*m);

grad(1) = sum(P)/m;
for im=2:length(theta)
        gradd = (sum(P.*X(:,im)'))+(lambda)*theta(im);
        grad(im)=gradd/m;
end

% =========================================================================

grad = grad(:);

end
