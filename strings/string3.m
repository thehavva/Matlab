% There are three functions for categorizing characters on a
% character-by-character basis inside a string:

string='Havva YILMAZ harika 1 detaydir.';

countletter=0;
countdigit=0;
countblank=0;
countupper=0;
a=isletter(string);
for ii=1:length(a)
    if a(ii)==1
    countletter=countletter+1;
    end
end

b=isspace(string);
for ii=1:length(b)
    if b(ii)==1
    countblank=countblank+1;
    end
end

c=isstrprop(string,'digit');
for ii=1:length(c)
    if c(ii)==1
    countdigit=countdigit+1;
    end
end

d=isstrprop(string,"upper");
for ii=1:length(d)
    if d(ii)==1
    countupper=countupper+1;
    end
end

fprintf('There are %d letters in string %s\n',countletter,string);
fprintf('There are %d spaces in string %s\n',countblank,string);
fprintf('There are %d words in string %s\n',countblank+1,string);
fprintf('There are %d digits in string %s\n',countdigit,string);
fprintf('There are %d upper letters in string %s\n',countupper,string);



