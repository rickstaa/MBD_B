function out1 = subs_torque(alpha,beta,gamma,alpha_d,beta_d,gamma_d)
%SUBS_TORQUE
%    OUT1 = SUBS_TORQUE(ALPHA,BETA,GAMMA,ALPHA_D,BETA_D,GAMMA_D)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    20-Jun-2018 13:47:30

t2 = cos(beta);
t3 = cos(gamma);
t4 = sin(alpha);
t5 = beta_d.^2;
t6 = sin(gamma);
t7 = sin(beta);
t8 = t3.^2;
t9 = t2.^2;
t10 = beta.*2.0;
t11 = sin(t10);
t12 = cos(alpha);
t13 = alpha_d.^2;
t14 = gamma.*2.0;
t15 = sin(t14);
t16 = cos(t14);
out1 = [t2.*t4.*(-1.1772e1)-t3.*t12.*5.886+gamma_d.^2.*t2.*t3.*(9.0./5.0e1)+alpha_d.*beta_d.*t11.*4.210225e-1+alpha_d.*gamma_d.*t15.*1.2076e-1-t2.*t3.*t5.*(9.0./5.0e1)+t2.*t4.*t6.*5.886+alpha_d.*gamma_d.*t3.*t9.*(9.0./2.5e1)+beta_d.*gamma_d.*t7.*t8.*2.4152e-1+t2.*t3.*t5.*t6.*1.2152e-1-alpha_d.*beta_d.*t2.*t6.*t7.*(1.8e1./2.5e1)-alpha_d.*beta_d.*t2.*t7.*t8.*2.4152e-1-alpha_d.*gamma_d.*t3.*t6.*t9.*2.4152e-1;t7.*t12.*(-1.1772e1)-t11.*t13.*1.806425e-1-alpha_d.*gamma_d.*t7.*1.2076e-1+beta_d.*gamma_d.*t3.*(9.0./2.5e1)-beta_d.*gamma_d.*t15.*1.2076e-1+t6.*t7.*t12.*5.886+t6.*t11.*t13.*(9.0./5.0e1)+t11.*t13.*t16.*3.038e-2-alpha_d.*beta_d.*t2.*t15.*7.6e-4+alpha_d.*gamma_d.*t6.*t7.*(9.0./2.5e1)+alpha_d.*gamma_d.*t7.*t16.*1.2076e-1;t3.*t5.*(-9.0./5.0e1)+t4.*t6.*5.886+t5.*t15.*6.076e-2-t13.*t15.*6.076e-2+alpha_d.*beta_d.*t7.*2.4152e-1-t2.*t3.*t12.*5.886-t3.*t9.*t13.*(9.0./5.0e1)-alpha_d.*beta_d.*t6.*t7.*(9.0./2.5e1)-alpha_d.*beta_d.*t7.*t8.*2.4304e-1+t3.*t6.*t9.*t13.*1.2152e-1];
