function dz=MRAelectrico(t,z)
l=0.002;
r=10;
c=10*10^-6;
u=32;
d=0.4;
f_pwm = 100000;

T_pwm = 1 / f_pwm;
d_t = mod(t, T_pwm) < d * T_pwm;

dz=zeros(2,1);
dz(1)= -(1/l) * z(2) + (u/l) * d_t;
dz(2)= (1/c) * z(1) - (1/(r*c)) * z(2);
