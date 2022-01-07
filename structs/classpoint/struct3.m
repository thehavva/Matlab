%  Write a function that will accept two arguments, the first a structure array
% and the second a field name stored in a string. Check to make sure that
% these input arguments are valid. If they are not valid, print out an error
% message. If they are valid and the designated field is a string, concatenate
% all of the strings in the specified field of each element in the array and
% return the resulting string to the calling program.

definition=struct('name',[]);
result=[];
string=' ';
definition(1).name='havva';
definition(2).name='yılmaz';
definition(3).name='bir';
definition(4).name='harikadır.';
result=concatenate(definition.name,string);
disp(result);