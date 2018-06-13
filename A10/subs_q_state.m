function q_state = subs_q_state(x,y,z,q0,q1,q2,q3,x_d,y_d,z_d,omega_x,omega_y,omega_z)
%SUBS_Q_STATE
%    Q_STATE = SUBS_Q_STATE(X,Y,Z,Q0,Q1,Q2,Q3,X_D,Y_D,Z_D,OMEGA_X,OMEGA_Y,OMEGA_Z)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    13-Jun-2018 23:39:20

q_state = [conj(x);conj(y);conj(z);conj(q0);conj(q1);conj(q2);conj(q3);conj(x_d);conj(y_d);conj(z_d);conj(omega_x);conj(omega_y);conj(omega_z)];
