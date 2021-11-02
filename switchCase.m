% Write a program that allows a user to enter a string containing a day of the
% week (“Sunday,” “Monday,” “Tuesday,” etc.) and uses a switch construct
% to convert the day to its corresponding number, where Sunday is considered the first day of the week and Saturday is considered the last day of the
% week. Print out the resulting day number. Also, be sure to handle the case
% of an illegal day name! (Note: Be sure to use the 's' option on function
% input so that the input is treated as a string.)

day=input('enter a day name : ','s');
newday=lower(day);
switch (newday)
    case 'sunday'
        disp('number of Sunday is 1');
    case 'monday'
        disp('number of Sunday is 2');
    case 'tuesday'
        disp('number of Sunday is 3');
    case 'wednesday'
        disp('number of Sunday is 4');
    case 'thursday'
        disp('number of Sunday is 5');
    case 'friday'
        disp('number of Sunday is 6'); 
    case 'saturday'
        disp('number of Sunday is 7');
end
