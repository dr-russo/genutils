function y = mynormcdf(x,mu,sigma)
% MYNORMCDF Cumulative distribution function of normal distribution.
% 
% X		x data (independent variable)
% MU	mean
% SIGMA standard deviation

if nargin < 3
	sigma = 1;
end
if nargin < 2
	mu = 0;
end
	y = 0.5*(1+erf((x-mu)/sqrt(2*sigma^2)));
	
end