function [ tau ] = forces_and_moments( m1, m2, m3, m4, P )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

F1 = T200_thruster_dynamics(m1);
F2 = T200_thruster_dynamics(m2);
F3 = T200_thruster_dynamics(m3);
F4 = T200_thruster_dynamics(m4);

tau = [1 1 0 0; 0 0 1 0; 0 0 0 1; 0 0 -P.zF3 P.zF4; P.zF1 P.zF2 0 -P.xF4;...
    -P.yF1 -P.yF2 P.xF3 0] *  [F1; F2; F3; F4];

end