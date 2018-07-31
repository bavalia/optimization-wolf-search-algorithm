% wolf search algorithm parameters initializations

disp('Initializing parameters for wolf search algorithm');
global Nw Ni rSight2 step velocity Pa beta;
global Wstart; % wolf positions
global xrange yrange;

Nw = 20; % number of wolf
Ni = 200; % number of iteration

rSight2 = 3^2; % square of radius of wolf's visual range
step = 1; % step size of wolf
velocity = 1; % wolf velocity
Pa = .01; % probability of finding enemy
beta = 1; % incentive coefficient, #don't know why it is used #tune-it

% initialize wolves [position, iterations, wolves]
% or [positions, wolves]
xrange = 15;
yrange = 15;
for i = 1:Nw
    Wstart(:,i)= [(rand-.5)*xrange
                  (rand-.5)*yrange];
end

disp([num2str(Nw),' wolves randomaly created'])
