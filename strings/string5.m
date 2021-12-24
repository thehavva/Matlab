% Q6.12
%  Write a program that accepts an input string from the user, and determines
% how many times a user-specified character appears within the string. (Hint:
% Look up the 's' option of the input function using the MATLAB Help
% Browser.)

string=input('Enter a string : ','s');
s=input('Enter a specified charecter : ','s');
count=0;
control=string==s;
for ii=1:length(control)
    if control(ii)==1
        count=count+1;
    end
end
disp(num2str(count));
%% Q6.17
%  MATLAB includes functions upper and lower, which shift a string to
% upper case and lower case respectively. Create a new function called caps,
% which capitalizes the first letter in each word, and forces all other letters to
% be lower case. (Hint: Take advantage of functions upper, lower, and
% strtok.)
string='havva yilmaz harika bir detaydir.';
spacecontrol=isspace(string);
result=strcat(string,' ');
for ii=1:length(string)
    if ii==1
        result(ii)=upper(string(ii));
    end
    if spacecontrol(ii)==1
        result(ii+1)=upper(string(ii+1));

    end
end
%% Q.18
%  Write a function that accepts a character string and returns a logical
% array with true values corresponding to each printable character that is not
% alphanumeric or whitespace (for example, $, %, #, etc.) and false values
% everywhere else
string=input('Enter a string : ','s');
numeric=isstrprop(string,'alpha');
whtespace=isstrprop(string,'wspace');
res=ones(1,length(string));
for ii=1:length(string)
    if (numeric(ii) || whtespace(ii))==1
        res(ii)=1;
    else
        res(ii)=0;
    end
end















