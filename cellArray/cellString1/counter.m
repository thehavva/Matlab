function count=counter(s)
count=0;
for ii=1:length(s)
    if s(ii)=='.'
        count=count+1;
    end
end
