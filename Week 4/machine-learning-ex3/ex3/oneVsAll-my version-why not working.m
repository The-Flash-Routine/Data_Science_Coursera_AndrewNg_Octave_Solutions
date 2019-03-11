function [all_theta] = oneVsAll(X, y, num_labels, lambda)
m=size(X,1);
n=size(X,2);
X=[ones(m,1),X];
all_theta=zeros(num_labels,n+1);
ol_theta=zeros(1,n+1);
for i=1:num_labels,
initial_theta=zeros(n+1,1);
t=y;
for j=1:m,
  if(t(j)~=num_labels)
    t(j)=0;
  else
    t(j)=1;
  endif
endfor
options = optimset('GradObj', 'on', 'MaxIter', 50);
[theta]=fminunc(@(r)(lrCostFunction(r,X,t,lambda)),initial_theta,options);
theta=(theta)';
ol_theta=[ol_theta;theta];
endfor
all_theta=ol_theta([2:end],:);
end