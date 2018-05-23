%% MBD_B: Assignment 5 - Passive dynamic walker (Lagrange and TMT aproach)
%  Rick Staa (4511328)
%  Last edit: 27/03/2018
% - Question A: Lagrange method -

clear all; close all; clc;
tic 
%% Parameters and variables
% Initialise parameters and variables
syms l m I M                                                % Initialize model Parameters
syms x1 y1 phi1 x2 y2 phi2 x3 y3 phi3                       % Initialize variables
syms x1p y1p phi1p x2p y2p phi2p x3p y3p phi3p              % Initialize derivatives
syms alpha beta alphap betap                                % Initialize generalised coordinates
syms gamma g                                                % Initialize enviroment variables

% Calculate additional parameters
I       = (1/12)*m*(l^2);                                     % Mass moment of inertia of each leg about the COM

% Devine state and its derivative
q       = [alpha;beta];
qp      = [alphap;betap];

%% Generate equations of motion

% Express coordinates of the COM in terms of generalised coordinates
x1      = 0.5*l*sin(alpha);
y1      = 0.5*l*cos(alpha);
phi1    = 0.5*pi - alpha;
x2      = l*sin(alpha);
y2      = l*cos(alpha);
phi2    = 0;
x3      = l*sin(alpha) + 0.5*l*sin(0.5*pi + beta);
y3      = l*cos(alpha) + 0.5*l*cos(0.5*pi + beta);
phi3    = 0.5*pi + beta;

% Put in one state vector
x       = [x1;y1;phi1;x2;y2;phi2;x3;y3;phi3];

% Compute the jacobian of these expressions
Jx_q    = simplify(jacobian(x,q)); 

% Calculate derivative of the state vector
xp     = Jx_q*qp;

% Compute energies
T       = 0.5*xp.'*diag([m;m;I;M;M;0;m;m;I])*xp;          % Kinetic energy
V       = -([m*g*sin(gamma) -m*g*cos(gamma) 0 M*g*sin(gamma) -M*g*cos(gamma) 0 m*g*sin(gamma) -m*g*cos(gamma) 0]*x);                    % Potential energy

%% Now compute the lagrangian constraint equations of motion

% Compute partial derivatives w.r.t q
T_q     = simplify(jacobian(T,q.')).';                          % Term 2 in Lagrange equation reader
V_q     = simplify(jacobian(V,q.')).';                          % Term 3 ...

% Compute partial derivatives w.r.t. qp
T_qp    = simplify(jacobian(T,qp.')).';

% Compute terms of total derivative
T_qp_qp  = simplify(jacobian(T_qp,qp.'));
T_qp_q   = simplify(jacobian(T_qp,q.'));

% Combine matrixes to get the lagrangian euqations of motion in matrix
% vector form
Qj       = 0;                                                  % Non-conservative forces
Q        = T_qp_qp;
F        = (-T_qp_q*qp + T_q - V_q + Qj);

% Calculate result expressed in generalized coordinates
qdp     = Q\F;

% Get result back in COM coordinates
xdp     = simplify(jacobian(xp,qp.'))*qdp + simplify(jacobian(xp,q.'))*qp;

%% Calculate for a initial state
x0    = [deg2rad(20),deg2rad(30),deg2rad(-90),10];
parms = [1.2,12,9.81,38,deg2rad(15)];                            % parms = [l,m,g,M,gamma];
xdp = subs(xdp, [l,m,g,M,gamma],parms);
xdp = double(subs(xdp, [alpha,beta,alphap,betap],[x0]));
disp(xdp)
toc 