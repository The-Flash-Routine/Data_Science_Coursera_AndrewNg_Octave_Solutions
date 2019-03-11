function [J, grad] = costFunction(theta, X, y)
m = length(y);
trans=zeros(m,1);
sir=zeros(m,1);
qop=zeros(m,1);
J = 0;
grad = zeros(size(theta));
h=sigmoid(X*theta);
trans=log(h);
sir=log((ones(m,1)-h));
r=trans'*y;
qop=ones(m,1)-y;
J=(-1/m)*(r+(sir'*qop));
b=h-y;
grad=(1/m)*((b')*X)';





% =============================================================

end
