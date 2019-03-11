function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
m=length(y);pos=zeros(1,2);neg=zeros(1,2);
for i = 1:m,

if(y(i)==1)
  if(i==1)
     pos=pos + X(i,:);
   elseif(i~=1)
     pos=[pos;X(i,:)];
   endif
    
 elseif(y(i)==0)
   if(i==1)
     neg=neg + X(i,:);
   elseif(i~=1)
     neg=[neg;X(i,:)];
   endif
  
 endif

 endfor;
t=pos(:,1);p=pos(:,2);q=neg(:,1);w=neg(:,2);
plot(t,p,'k+','linewidth',2,'markersize',7);
hold on;
plot(q,w,'ko','linewidth',2,'markersize',7,'markerfacecolor','y');






% =========================================================================



hold off;

end
