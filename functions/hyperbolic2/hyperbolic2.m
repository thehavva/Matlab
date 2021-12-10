function y=hyperbolic2(x,type)
if nargin<2
    error('invalid number of inputs!');
elseif nargin>2
    error('Too many number of arguments!');
end
switch type
    case 'sinh'
        y=sinhyp(x);
    case  'cosh'
         y=coshyp(x);
    case  'tanh'
         y=tanhyp(x);
    otherwise
        error('invalid string!');
end
function o=sinhyp(x)
o=(exp(x)-exp(-x))./2;
end
function o=coshyp(x)
o=(exp(x)+exp(-x))./2;
end
function o=tanhyp(x)
o=(exp(x)-exp(-x))./(exp(x)+exp(-x));
end
end

