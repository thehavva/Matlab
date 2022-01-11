% Road Traffic Density Function random0 produces a number with a
% uniform probability distribution in the range [0.0, 1.0). This function is
% suitable for simulating random events if each outcome has an equal probability of occurring. However, in many events, the probability of occurrence is not equal for every event, and a uniform probability distribution
% is not suitable for simulating such events.
% For example, when traffic engineers studied the number of cars passing a given location in a time interval of length t, they discovered that the
% probability of k cars passing during the interval is given by the equation P(k,t)=exp(-alfa*t)*(alfa*t)^k/k!
% This probability distribution is known as the Poisson distribution; it occurs
% in many applications in science and engineering. For example, the number
% of calls k to a telephone switchboard in time interval t, the number of bacteria k in a specified volume t of liquid, and the number of failures k of a
% complicated system in time interval t all have Poisson distributions.
% Write a function to evaluate the Poisson distribution for any k, t, and
% l. Test your function by calculating the probability of 0, 1, 2, . . . , 5 cars
% passing a particular point on a highway in 1 minute, given that l is 1.6 per
% minute for that highway. Plot the Poisson distribution for t = 1 and l = 1.6.
k=0:5;
t=0:5;
probability=Poisson(k,t);
title('Probability Road Traffic Density');
plot(t,probability,'LineWidth',2.0);
xlabel('time');
ylabel('Poisson distrubution');