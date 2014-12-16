function [d1,d2] = nearestsquare(nPoints)
	
	p = nPoints;
	q = nPoints;
	while( mod(sqrt(p),1)~=0 && mod(sqrt(q),1) )
		p = p-1;
		q = q+1;
	end
	if mod(sqrt(p),1) == 0
		n = p;
	elseif mod(sqrt(q),1) == 0
		n = q;
	end
	
	r = (nPoints - n);
	
	d2 = sqrt(n);
	d1 = sqrt(n)+ceil(r/d2);
end

