function cost = schafferF6(X)
c = 0.001;
r2 = sum(X.^2);

cost = .5 + (sin(sqrt(r2))^2-.5)/(1+c*r2)^2;