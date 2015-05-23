function fdata = gaussfilter(data,fs,fc)
% GAUSSFILTER	Apply Gaussian filter to data vector. 
%
% RETURNS:
% 
%   fdata		Filtered data vector, same length as input vector.
%
% PARAMETERS:
% 
%   data		Vector of time-series data.
%   fs          Sample rate of data (Hz)
%   fc          Filter cutoff frequency (kHz). Default 2 kHz.
%
%===============================================================================

if nargin < 3
	fc = 2000;          %Default filter cutoff, 2kHz
else
	fc = fc*1000;       %Convert kHz => Hz
end 

sigma = fs/(2*pi*fc);

W = 5*sigma-1;          %Filter width.

%Construct filter
x = linspace(-W/2,W/2,W);
gaussFilter = exp(-x.^2/(2*sigma^2));
gaussFilter = gaussFilter/sum(gaussFilter);

fdata = conv(data,gaussFilter,'same');

end