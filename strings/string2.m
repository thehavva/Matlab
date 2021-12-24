% using compare function
string1='havva';
stringin=input('Enter a string : ','s');

result=strcmp(string1,stringin);
if result==0
    fprintf('these strings are not equal\n');
else
    fprintf('these strings are equal\n');
end