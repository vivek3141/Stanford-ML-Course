function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    pred = X*theta;
    sub = pred-y;
    theta = theta - (alpha * ( (1/m) * (X' * sub) ) );
    J_history(iter) = computeCost(X, y, theta);

end

end
