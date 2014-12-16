function semOut  = sem( dataArr )
%SEM	Calculates the standard error of the mean for an array of values

	N = length(dataArr);
	semOut = std(dataArr)/sqrt(N);

end

