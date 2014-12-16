function dec = map2dec(map,w)

switch w
	case 16
		dec = 256^2*uint16(255*map(:,1))+256*uint16(255*map(:,2))+uint16(255*map(:,3));
	case 32
		dec = 256^2*uint32(255*map(:,1))+256*uint32(255*map(:,2))+uint32(255*map(:,3));
end

end