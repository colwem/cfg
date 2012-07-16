function theta2 = grad_descent(x, y, theta1, alpha)

theta2 = theta1 - alpha / size(x,1) * ( x' * ( theta1' * x - y ))
