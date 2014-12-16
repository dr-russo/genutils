function htmltag(fp,tag,varargin)
	
	otail = '>';
	ctail = '>\n';
	chead = '</';
	ohead = '<';
	head = ohead;
	tail = otail;
	otag = tag;
	ctag = tag;
	
	%Parse argument list
	for arg = 1:length(varargin)
		switch varargin{arg}
			case {'SRC','src'}
				src = varargin{arg+1};
			case {'HREF','href'}
				href = varargin{arg+1};
			case {'CONTENT','content'}
				cont = varargin{arg+1};
			case {'Close','close'}
			    head = chead;
				tail = ctail;
			case {'Open','open'}
				head = '<';
			case {'Class','class'}
				class = varargin{arg+1};
			case {'Name','name'}
				name = varargin{arg+1};
		end
	end
	%Special cases	
	switch tag
		case {'img'}
			otag = strcat('img src="',src,'"');
		case {'!DOCTYPE html','html','div','head','body','header','article','footer','nav','main','table','section'}
			tail = ctail;
		case {'thead','tr','ul','li'};
			tail = ctail;
		case {'td','th'}
			ctail = otail;
		case {'a'}
			if exist('href','var')
				otag = strcat('a href="',href,'"');
			elseif exist('name','var')
				otag = strcat('a name="',name,'"');
			end
			ctag = tag;
	end
	
	if exist('class','var')
		otag = strcat(tag,' class="',class,'"');
	end
	
	if exist('cont','var')
		fprintf(fp,char([ohead otag otail cont chead ctag ctail]));
	else
		fprintf(fp,char([head otag tail]));
	end

end