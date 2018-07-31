% gradiant/differentiation of schafferF6 cost function
function diffMatrix = DschafferF6(X)
nD = length(X);
c = 0.001;
r2 = sum(X.^2);
r = sqrt(r2);
diffMatrix = zeros(size(X));

%original function
%cost = .5 + (sin(sqrt(r2))^2-.5)/(1+c*r2)^2;

if r
    den = (1+c*r2);
    for i=1:nD
        diffMatrix(i) = sin(2*r)*(X(i)/r)/den^2 ...
            - 4*c*X(i)*(sin(r)^2-.5)/den^3;
    end
end
