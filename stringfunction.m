%find equivalence between two strings

string1=input('write a string : ','s'); 
string2=input('write a string : ','s');
answer=strcmp(string1,string2);
if(answer==1)
    fprintf('these strings are equal\n');
else
    fprintf('these strings are not equal!\n');
end

