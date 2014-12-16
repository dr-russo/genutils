function maphex = map2hex(map)

if isa(map,'integer')
	maphex = char([dec2hex(map(:,1)),dec2hex(map(:,2)),dec2hex(map(:,3))]);
else
	maphex = char([ dec2hex(uint8(255*map(:,1))),dec2hex(uint8(255*map(:,2))),dec2hex(uint8(255*map(:,3)))]);
end

end