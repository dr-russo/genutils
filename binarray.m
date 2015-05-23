3function bits = binarray(input)
%===============================================================================
% BINARRAY
% Converts numbers or characters to their binary representation.
%
% OUTPUTS
%  bits    Bit values of input as a binary array.
%  
% INPUTS
%  input   Number or character (in single quotes) to be converted to binary.
%
% MJRusso 7/2013
%===============================================================================
binary = dec2bin(input,8);
bits = zeros(1,8*size(binary,1));

for m=1:size(binary,1)
	for n=1:size(binary,2)
		p = (m-1)*8+n;
		bits(p) = str2double(binary(m,n));
	end
end

end