function ratio=Poisson(k,t)
alfa=1.6;
ratio=exp(-alfa.*t).*((alfa.*t).^k)./fact(k);

