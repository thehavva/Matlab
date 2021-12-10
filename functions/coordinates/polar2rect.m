function [x,y]=polar2rect(r,Q)
% convert coordinates from polar to rectangle form
x=r*cos(Q*pi/180);
y=r*sin(Q*pi/180);
end
