genutils
========

Library of general utilities for MATLAB.  
***

###binarray()  
File: *binarray.m*  
Converts numbers or characters to their binary representation (binary array).

###customcumsum()  
File: customcumsum.m  
Cumulative sum over a vector.

###ewma(data, lambda)  
File: ewma.m  
Exponentially weighted moving average. Arguments: data and lambda, which specifies width of average: exp(-lambda*x).

###expfit(x,y,p)
File: expfit.m  
Fits a set of points (x,y) to the equation 
<code>p1+p2*exp(x/p3)</code> by minimizing the sum squared error.  Relies on the built-in MATLAB function <code>fminsearch</code>.  Provide vector p of initial estimates for free parameters.

###gaussfilter(data,fs,fc)  
File: gaussfilter.m  
Apply Gaussian filter to data vector. Specify sample rate (Hz) of data, fs, and cutoff frequency (kHz), fc.

