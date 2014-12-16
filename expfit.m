function [F,S] = expfit(x,y,p)

if nargin < 3
	p(1) = 0;
	p(2) = 1;
	p(3) = -0.05;
end

x0 = x-x(1);	%Normalize x such that x(1) = 0;

SSE = @(P)sum( (   y - ( P(1)+P(2).*exp(x./P(3)) ) ).^2 );

options = optimset('Display','off');

F = fminsearch(SSE,p,options);
S = feval(SSE,F);	

end