function out1 = subs_D(phi1,phi2,x1d,y1d,phi1d,x2d,y2d,phi2d)
%SUBS_D
%    OUT1 = SUBS_D(PHI1,PHI2,X1D,Y1D,PHI1D,X2D,Y2D,PHI2D)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    06-Jun-2018 17:12:47

out1 = [phi1d.*(-1.0./2.0)+y1d.*cos(phi1)-x1d.*sin(phi1);phi2d.*(1.0./8.0)+y2d.*cos(phi2)-x2d.*sin(phi2)];
