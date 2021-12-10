function [r,Q]=rect2polar(x,y)
% convert coordinates from rectangular to polar form
r=sqrt(x^2+y^2);
Q=(180/pi)*atan2(y,x);
end