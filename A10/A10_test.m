%% MBD_B: Assignment 9 - Euler angles and the human arm
%  Rick Staa (4511328)
clear all; close all; clc;
fprintf('--- A10 ---\n');

%% Simulation settings
EOM_calc_bool               = 1;                                        % Set on 1 if you want to recalculate the EOM

%% Intergration parameters
parms.sim.sim_time          = 5;                                        % Intergration time
parms.sim.dt                = 1e-3;                                     % Intergration step size

%% Model Parameters
% Vehicle parameters
m               = 420;                          % mass vehicle [kg]
J               = diag([170 120 140]);          % moment of inertia of vehicle [kg]
r               = 1;                            % Radius of vehicle [m]
c               = [-0.01;0.01;-0.1];            % Relative COM position to vehicle center [m]
p_s             = [0;r;0];                      % Connection of bungie cords relative 2 sphere center
A               = pi*r^2;                       % Frontal area of the vehicle [m]

% Paramters of support collumns
h               = 25;                           % Hight of supporting collumns [m]
w               = 18;                           % Width between the supporting collums [m]
zeta            = 0.1;                          % Damping ratio

%% World parameters
g               = 9.81;                         % N/kg
rho             = 1.25;                         % kg/m^3
cd              = 0.5;                          % Drag coefficient

%% put parameters in struct
parms.m         = m;
parms.J         = J;
parms.r         = r;
parms.c         = c;
parms.A         = A;
parms.h         = h;
parms.w         = w;
parms.zeta      = zeta;
parms.g         = g;
parms.rho       = rho;
parms.cd        = cd;
parms.p_s       = p_s;

% calculate the missing spring parameters
[parms.k,parms.l_0,parms.b] = spring_param_calc(parms);

% Create xtra symbolic variables
syms x y z q0 q1 q2 q3 x_d y_d z_d omega_x omega_y omega_z            % In this q0 = lambda 0 this was done for code Readability

% Put symbolic variables in struct
parms.syms.x        = x;
parms.syms.y        = y;
parms.syms.z        = z;
parms.syms.q0       = q0;
parms.syms.q1       = q1;
parms.syms.q2       = q2;
parms.syms.q3       = q3;
parms.syms.x_d      = x_d;
parms.syms.y_d      = y_d;
parms.syms.z_d      = z_d;
parms.syms.omega_x  = omega_x;
parms.syms.omega_y  = omega_y;
parms.syms.omega_z  = omega_z;

%% Set Initial states
% Set euler parameters (In the initial state the axis of ration can said to
% be alighed with the axis through the spring attachment sites.
n                   = [0;1;0];                                           % Axis through spring attachment sites
phi                 = 0;                                                 % No rotation

% Calculate initial states
x0                  = 0;
y0                  = 0;
z0                  = 0;
q0                  = cos(0.5*phi);
q1                  = sin(0.5*phi)*n(1);
q2                  = sin(0.5*phi)*n(2);
q3                  = sin(0.5*phi)*n(3);
x_d                 = 0;
y_d                 = 0;
z_d                 = 0;
omega_x             = 0;
omega_y             = 0;
omega_z             = 0;
x0                  = [x0;y0;z0;q0;q1;q2;q3;x_d;y_d;z_d;omega_x;omega_y;omega_z];

%% Calculate equations of motion
if (EOM_calc_bool == 1)
    EOM_calc(parms);
end

%% Calculate movement by mean sof a Runge-Kuta 4th order intergration method
[t,x]                       = RK4_custom(x0,parms);

%% FUNCTIONS

%% Runge-Kuta numerical intergration function
% This function calculates the motion of the system by means of a
% Runge-Kuta numerical intergration. This function takes as inputs the
% parameters of the system (parms), the EOM of the system (parms.EOM)
% and the initial state.
function [time,x] = RK4_custom(x0,parms)

% Initialise variables
time                = (0:parms.sim.dt:parms.sim.sim_time).';               % Create time array
x                   = zeros(length(time),length(x0));                      % Create empty state array
x(1,1:length(x0))   = x0;                                                  % Put initial state in array

% Caculate the motion for the full simulation time by means of a
% Runge-Kutta4 method

% Perform intergration till end of set time
for ii = 1:(size(time,1)-1)
    
    % Add time constant
    t = time(ii);
    
    % Perform RK 4
    x_now_tmp           = x(ii,:);                                                                  % Create cell for subs function function
    x_input             = num2cell(x(ii,:),1);                                                      % Add time to state
    K1                  = [x_now_tmp(1,8:10),subs_xdd(x_input{:}).'];                                % Calculate the second derivative at the start of the step
    x1_tmp              = x_now_tmp + (parms.sim.dt*0.5)*K1;                                             % Create cell for subs function function
    x1_input            = num2cell(x1_tmp,1);                                                       % Add time to state
    K2                  = [x1_tmp(1,8:10),subs_xdd(x1_input{:}).'];                                  % Calculate the second derivative halfway the step
    x2_tmp              = x_now_tmp + (parms.sim.dt*0.5)*K2;                                             % Refine value calculation with new found derivative
    x2_input            = num2cell(x2_tmp,1);                                                       % Add time to state
    K3                  = [x2_tmp(1,8:10),subs_xdd(x2_input{:}).'];                                  % Calculate new derivative at the new refined location
    x3_tmp              = x_now_tmp + (parms.sim.dt)*K3;                                                 % Calculate state at end step with refined derivative
    x3_input            = num2cell(x3_tmp,1);                                                       % Add time to state
    K4                  = [x3_tmp(1,8:10),subs_xdd(x3_input{:}).'];                                  % Calculate last second derivative
    x(ii+1,:)           = x_now_tmp + (parms.sim.dt/6)*(K1+2*K2+2*K3+K4);                                % Perform euler intergration step
    
    % Correct for intergration drift (Renormalise the axis of rotation)
    q_next              = x(ii+1,4:7);
    x(ii+1,4:7)         = q_next/norm(q_next);
    
end
end

%% Calculate (symbolic) Equations of Motion four our setup
function EOM_calc(parms)

%% Get parameters and variables

% create symbolic variables
syms k b l_0;

% Unpack variables for clarity
m               = parms.m;
J               = parms.J;
r               = parms.r;
c               = parms.c;
A               = parms.A;
h               = parms.h;
w               = parms.w;
g               = parms.g;
rho             = parms.rho;
c_d             = parms.cd;
p_s             = parms.p_s;

% Unpack symbolic variables from parms
x               = parms.syms.x;
y               = parms.syms.y;
z               = parms.syms.z;
q0              = parms.syms.q0;
q1              = parms.syms.q1;
q2              = parms.syms.q2;
q3              = parms.syms.q3;
x_d             = parms.syms.x_d;
y_d             = parms.syms.y_d;
z_d             = parms.syms.z_d;
omega_x         = parms.syms.omega_x;
omega_y         = parms.syms.omega_y;
omega_z         = parms.syms.omega_z;

% Create small generalised spring state
x_state         = [x;y;z];
xd_state        = [x_d;y_d;z_d];
omega_state     = [omega_x;omega_y;omega_z];

%% Calculate Rotation Matrix

R_B_N = [q0^2+q1^2-q2^2-q3^2, 2*(q1*q2-q0*q3),      2*(q1*q3-q0*q2);     ...
         2*(q2*q1-q0*q3),     q0^2-q1^2+q2^2-q3^2 , 2*(q2*q3-q0*q1);     ...
         2*(q3*q1-q0*q2),     2*(q3*q2-q0*q1),      q0^2-q1^2-q2^2+q3^2];

matlabFunction(R_B_N,'File','subs_R_B_N');

%% Calculate Spring contribution to virtual work
r_c             = [x;y;z] + R_B_N*[0.01;-0.01;0.1]; 
r_s1            = r_c + R_B_N*[0;-1;0];            
r_s2            = r_c + R_B_N*[0;1;0];            

% Create vetors along the spring
l_s1            = r_s1 - [0; -w/2; h]; 
l_s2            = r_s2 - [0; w/2; h]; 

% Calculate delta spring lenght
l_s2            = sqrt(sum(l_s2.^2)) - l_0;  
l_s1            = sqrt(sum(l_s1.^2)) - l_0;

% Calculate spring forces
sigma_s1        = k*l_s1; 
sigma_s2        = k*l_s2; 

% Storing as functions for later
matlabFunction(l_s1,'File','subs_l_s1');
matlabFunction(l_s2,'File','subs_l_s2');

%% Damping Components
sigma_c1        = b*jacobian(l_s1,x_state)*xd_state; 
sigma_c2        = b*jacobian(l_s2,x_state)*xd_state; 

%% Air Drag
sigma_a         = 0.5*rho*A*c_d*sqrt(sum(xd_state.^2))*xd_state;

%% Add the contributions of all forces together

% External intertial forces
F_ext           = [0;0;-m*g]; 

% Spring, damper and drag forces
F               = [F_ext - sigma_s1*jacobian(l_s1,x_state)' - sigma_s2*jacobian(l_s2,x_state)' - ...
                   sigma_c1*jacobian(l_s1,x_state)' - sigma_c2*jacobian(l_s2,x_state)' - sigma_a];

%% Now finaly calculate the linear accelerations by means of gaussian elimination
M               = diag([m m m]);
ddx             = inv(M)*F; 

%% Now lets find the angular accelerations
F1              = sigma_s1*jacobian(l_s1,x_state).' + sigma_c1*jacobian(l_s1,x_state).';
r1              = [0.01;-0.01;-0.1] + [0;-1;0];

F2              = sigma_s2*jacobian(l_s2,x_state).' + sigma_c2*jacobian(l_s2,x_state).';
r2              = [0.01;-0.01;-0.1] + [0;1;0];

M               = cross(r1,R_B_N'*F1) + cross(r2,R_B_N'*F2);

%% Calculate angular accelerations

omega_d_state   = inv(J)*(M - cross(omega_state,J*omega_state));

% Save all the symbolic expressions in function files
matlabFunction((sigma_s1+sigma_s2),'File','subs_spring');
matlabFunction((sigma_c1+sigma_c2),'File','subs_damp');
matlabFunction((sigma_a),'File','subs_drag');
matlabFunction(M,'File','subs_moments');

%% Calculate the derivative of the omegas and put them in one big state variable

q_state         = [x,y,z,q0,q1,q2,q3,x_d,y_d,z_d,omega_x,omega_y,omega_z]';
matlabFunction(q_state,'File','subs_q_state','Vars',[x,y,z,q0,q1,q2,q3,x_d,y_d,z_d,omega_x,omega_y,omega_z]);

dlambda         = 0.5*[q0 -q1 -q2 -q3;...
                       q1 q0 -q3 q2;...
                       q2 q3 q0 -q1;...
                       q3 -q2 q1 q0]*[0;omega_state];
Xdd_state        = [xd_state;dlambda;ddx;omega_d_state];
matlabFunction(Xdd_state,'File','subs_Xdd_state','Vars',[k,l_0,b,x,y,z,q0,q1,q2,q3,x_d,y_d,z_d,omega_x,omega_y,omega_z]);

end

%% Calculate spring-damper paramters

function [k,l0,b] = spring_param_calc(parms)
% Unpack variables for clarity
m               = parms.m;
J               = parms.J;
r               = parms.r;
c               = parms.c;
A               = parms.A;
zeta            = parms.zeta;
h               = parms.h;
w               = parms.w;
g               = parms.g;
rho             = parms.rho;
cd              = parms.cd;
p_s             = parms.p_s;

%% A) Calculate k and L0 paramters
% This can be done by using the principle of conservation of energy and
% newtons second law of motion.

% Create symbolic variables
syms k l0

% Calculate needed spring lengths
l_t       = sqrt((0.5*w)^2 + (0.5*w-r)^2);
l_b       = sqrt(h^2 + (0.5*w-r)^2);

% Conservation of energy equation
eq_con      = k*(l_t - l0)^2+m*g*(0.5*w+h)-k*(l_b-l0)^2;

% Force equation (Newtons second law of motion)
eq_F        = 2*k*(l_b-l0)*cos(atan2((0.5*w-r),h))-5.8*m*g;

% Put equations in one vector
eq          = [eq_con; eq_F];

% Solve these two equations for two unknowns with the symbolic toolbox
sol         = solve(eq,[k;l0]);
k           = double(sol.k);
l0          = double(sol.l0);

% Calculate damping ratio
b           = 2*zeta*sqrt(k*m);
end