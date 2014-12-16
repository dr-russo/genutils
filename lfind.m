function F = lfind(A,a,w,n)
%LFIND Loose find. Find the value a within A, but allow for a +/- w window
%      around a. That is, search for a value < a+w and > a-w.
%	A  Search field (vector/matrix).
%   a  Target value.
%   w  Window around target value, finds value within a+/-w.
%   n  Number of instances to find.


%Argument checking
if nargin < 4
	n = 1;
end
if nargin < 3
	w = 0.01;
end



dw = 0.01*w; %Adjust w by dw with each search iteration (see below).
count = 1e5; %Initialize a countdown to limit number of searches.

%Loop attempts to find n instances of 'a+/-w' within A each iteration
%and adjusts w by dw according to whether too many or too few instances of
%'a' were found.

if any(size(A) == 1)
	I = [];
	while length(I) ~= n && count ~= 0	
	   I = find(A > a-w & A < a+w,1);
	   if length(I) > n
		  w = w-dw;
	   elseif length(I) < n
		  w = w+dw;
	   end
	   count = count-1;
	end
	F = I;
elseif all(size(A) > 1)
	I = [];
	J = [];
	while length(I) ~= n && count ~= 0	
	   [I,J] = find(A > a-w & A < a+w,1);
	   if length(I) > n
		  w = w-dw;
	   elseif length(I) < n
		  w = w+dw;
	   end
	   count = count-1;
	end
	F = [I,J];

end	

   
end