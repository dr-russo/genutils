function Z = ewma(data,lambda)
%===============================================================================
% EWMA      Exponentially Weighted Moving Average
% 
% DATA      Data over which to average
% LAMBDA    Constant multiplier
%
%===============================================================================

N = length(data);
Z = zeros(N,1);

for n=2:N
	Z(n) = lambda*data(n)+(1-lambda)*Z(n-1);
end

end