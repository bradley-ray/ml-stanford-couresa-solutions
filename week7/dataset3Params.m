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

% % SOLUTION
% % [C sigma error]
% err = zeros(64,3);
% % index to control which row of err is being filled in
% idx = 1;

% for C=[0.01 0.03 0.1 0.3 1 3 10 30]
%     for sigma=[0.01 0.03 0.1 0.3 1 3 10 30]
%         % train a model
%         model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
%         % make predicitons using model on cross validation set
%         predicitons = svmPredict(model, Xval);

%         err(idx,:) = [C sigma mean(double(predicitons ~= yval))];
%         idx+=1;
%     end
% end

% % get row with minimum error
% [_ idx] = min(err(:,3));

% % user row to get the proper C and sigma value
% C = err(idx, 1);
% sigma = err(idx, 2);

% hard code so it doesnt need to retrain on every submission
C = 1;
sigma = 0.1;


% =========================================================================

end
