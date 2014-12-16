function [F,S] = sigfit(x,y,p)

if nargin < 3
	p = zeros(4,1);
	p(1) = 1;
    p(2) = 1; 
	p(3) = 4;
	p(4) = 1;
end

	
SSE = @(P)sum( ( y - (P(1) +  (P(2)./ (1 + exp( (P(3)-x)./P(4) ))))).^2 );
		
options = optimset('Display','off');

F = fminsearch(SSE,p,options);
S = feval(SSE,F);	

end