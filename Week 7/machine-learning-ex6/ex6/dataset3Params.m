function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
see=[0.5:0.1:1];
ma=[0.1:0.1:.5];
hey=length(see);
hes=length(ma);
predictions=zeros(hey*hes,3);
k=1;
for i=1:hey,
for j=1:hes,
model= svmTrain(X, y, see(i), @(x1, x2) gaussianKernel(x1, x2, ma(j)));
[hehe]=svmPredict(model,Xval);
predictions(k,1)=mean(double(hehe~=yval));
predictions(k,2)=see(i);
predictions(k,3)=ma(j);
k=k+1;
endfor;
endfor;
hu=min(predictions(:,1));
for i=1:hey*hes,
if(predictions(i,1)==hu)
index=i;
endif;
endfor;
C=predictions(index,2);
sigma=predictions(index,3);






% =========================================================================

end
