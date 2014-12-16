function mydisp(floatIn)
%===============================================================================
% MYDISP 
% Simple function for customizing command window display.
%
% MJR 7/2013
%===============================================================================


if isrow(floatIn)
	floatIn = floatIn';
end

fprintf(1,'\t%10.4f\n',floatIn);

end