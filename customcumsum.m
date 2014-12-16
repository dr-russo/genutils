function S = customcumsum(data)

N = length(data);
S = zeros(N,1);

for m=2:N
	r = mean(1:m);
	S(m) = data(m) + S(m-1);
end

end
