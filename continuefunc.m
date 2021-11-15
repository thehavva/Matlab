% use continue word case 
for ii=1:10
    if mod(ii,2)==1
        continue
    end
    fprintf('%d\t',ii);
end
