# Linear regression with gradient descent
using chatgpt + python3.11

## writeup

Used chatgpt to come up with the plotting code and to help corroborate the math for what I'm trying to do.

Table of contents:
1. Linear regression
2. Gradient descent
3. Implementation

### 1. Linear regression

Fit a line of best fit to a set of points. Line of best fit is given by $y = m x + b$ for some scatter plot.

### 2. Gradient descent

The $n$th dimensional *gradient* of a scalar field $f$ is defined as $$\vec \nabla f = \left\langle \frac{\partial f}{\partial x_1}, ..., \frac{\partial f}{\partial x_n} \right\rangle$$ for an $n$ dimensional vector field.

The function on which we want to compute the gradient will be the mean squared error function, defined as follows.
$$f = \frac 1 n \sum_{i=1}^{n} (y_i - (mx_i + b))^2,$$ which should make sense, since that's the square of the difference between the points.

It also suffices to minimize this since this quantity is strictly positive without having to invoke an absolute value.

### 3. Implementation

Just implemented based on these ideas. Here is the ChatGPT chat log: https://chat.openai.com/share/f39d9cc3-cce3-4995-8631-795156078b20.
