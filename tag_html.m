function htmltag(fp,tag,varargin)
	
	tail = '>';
	closehead = '</';
	openhead = '<';
	head = openhead;
	
	%Parse argument list
	for arg = 1:length(varargin)
		switch varargin{arg}
			case {'SRC','src','Src'}
				src = varargin{arg+1};
			case {'href','HREF','Href'}
				href = varargin{arg+1};
			case {'Content','content'}
				cont = varargin{arg+1};
			case {'Close','close'}
			    head = '</';
			case {'Open','open'}
				head = '<';
			case {'Class','class'}
				class = varargin{arg+1};
		end
	end
	%Special cases	
	switch tag
		case {'img'}
			tag = strcat('img src=',src);
	end
	
	if exist('class','var')
		tag = strcat(tag,' class=',class);
	end
	
	if exist('cont','var')
		fprintf(fp,char([openhead tag tail cont closehead tag tail]));
	else
		fprintf(fp,char([head tag tail]));
	end

end