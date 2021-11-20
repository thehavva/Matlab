% A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
% B=[10; 12; 14; 16];
% A=[1 2 3; 4 5 6; 7 8 9; 10 11 12 ];
% a=eye(3,3);
% b=[1 2 3];
% a(2,:)=b;
% 
% a = eye(3,3);
% b = [7 8 9];
% a(3,:) = b([3 1 2]);
% disp(int2str(a));
% disp(b);
% 
% radius = input('Enter circle radius:\n');
% area = pi * radius^2;
% str = ['The area is ' num2str(area)];
% disp(str);

% value = int2str(pi);
% disp(['The value is ' ,value ,'!']);

% value = 123.4567e2;
% fprintf('value = %e\n',value);
% fprintf('value = %f\n',value);
% fprintf('value = %g\n',value);
% fprintf('value = %12.4f\n',value);
clear all

% a=[4 8; 12 16];
% b=[1 2; 3 4];
% c=a/b;

% A=[1 2 3 4; 5 6 7 8; 9 10 11 12];
% B=[4; 8; 2; 6];
% x=A\B; % A*x=B
% a=[1 -2;2 1];
% b= [1; 2];
% maxv=max([1 2 4 3]);
% x=0:pi/2:4*pi;
% y=sin(x);
% plot(x,y);

% A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
% B=[4; 8; 2; 6];
% X=inv(A)*B;

% clear all
% A=[-2 5 1 3 4 -1; 2 -1 -5 -2 6 4;-1 6 -4 -5 3 -1;4 3 -6 -5 -2 -2; -3 6 4 2 -6 4;2 4 4 4 5 -4];
% B=[0.0; 1.0; -6.0; 10.0; -6.0; -2.0];
% X=inv(A)*B;

% x = 0:1:10;
% y = x.^2 - 10.*x + 15;
% plot(x,y);
% title ('Plot of y = x.^2 – 10.*x + 15');
% xlabel ('x');
% ylabel ('y');
% grid on

% x=0:pi/3:2*pi;
% y1=cos(2*x);
% y2=(-2)*sin(2*x);
% plot(x,y1,'r-.',x,y2,'k--');
% title('plot of derivative of cos2x');
% xlabel ('x');
% ylabel ('y');
% legend('y1', 'y2');
% % grid on;
% cos(pi/3);
%  arr=[1 2 3 4 5; 6 7 8 9 10; 11 12 13 14 15; 16 17 18 19 20];
%  value=10*pi;
% disp (['value = ' num2str(value)]);
% disp (['value = ' int2str(value)]);
% fprintf('value = %e\n',value);
% fprintf('value = %f\n',value);
% fprintf('value = %g\n',value);
% fprintf('value = %12.4f\n',value);

% x=0:pi/3:2*pi;
% y1=cos(2*x);
% y2=(-2)*sin(2*x);
% %plot(x,y1,'r-',x,y2,'k-o');
% semilogx(x,y1,x,y2);

% A=[1 3 ; 2 5];
% B=[2 4; 1 2];
% 
% x = -pi:pi/20:pi;
% y1 = sin(x);
% y2 = cos(x);
% plot(x,y1,'b-');
% hold on;
% plot(x,y2,'k--');
% hold off;
% legend ('sin x','cos x');
% 
% figure(1)
% x = 0:0.05:2;
% y1 = exp(x);
% plot(x,y1);
% figure(2)
% y2 = exp(-x);
% plot (x,y2);

% figure(1)
% subplot(2,1,1)
% x = -pi:pi/20:pi;
% y = sin(x);
% plot(x,y);
% title('Subplot 1 title');
% subplot(2,1,2)
% x = -pi:pi/20:pi;
% y = cos(x);
% plot(x,y);
% title('Subplot 2 title');
for ii = 1:5
if ii == 3;
continue;
end
fprintf('ii = %d\n',ii);
end
disp(['End of loop!']);





