% Function findstr returns the starting position of all occurrences of the
% shorter of two strings within a longer string.

string='Havva YILMAZ harika 1 detaydir.';
position=strfind(string,'harika');

% Function strrep performs the standard search-and-replace operation. It finds
% all occurrences of one string within another one and replaces them by a third
% string.

newstring=strrep(string,'harika','tarihi');

% The strtok function returns the characters before the first occurrence of a
% delimiting character in an input string. The default delimiting characters are
% the set of whitespace characters.
delim='YILMAZ';
[token,remainder]=strtok(string,delim);