function J = computeCost(X, y, theta)
J = sum(sum((X*theta-y).^2))*(1/(2*length(y)));
end
