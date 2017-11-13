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
pp=size(theta);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
X=X';
h = sigmoid(theta'*X);
sh = h;
h1 = 1-h;
y1=(-1)*y';
y2=(-1)*(1+y1);
h = log(h);
h1 = log(h1);
p = y1.*h+y2.*h1;
s = sum(p);
J = s/m;
h=sh;
 h = h - y';
for imt=1:length(theta)
    
    ss = X(imt,:).*h;
    grad(imt)=sum(ss)/m;
end

% =============================================================
end