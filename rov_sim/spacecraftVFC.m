function [ V, F, patchcolors ] = spacecraftVFC
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

V = [ ...
    2   0   0; ... %1
   .2  .2  .2; ... %2
   .2 -.2  .2; ... %3
   .2 -.2 -.2; ... %4
   .2  .2 -.2; ... %5
   -4   0   0; ... %6   
   -3   0   0; ... %7
   -4   0 -.3; ... %8
    0   3   0; ... %9
   -1   3   0; ... %10
    0  -3   0; ... %11
   -1  -3   0; ... %12
   -3   1   0; ... %13
   -3  -1   0; ... %14
   -4   1   0; ... %15
   -4  -1   0; ... %16
 ];

F = [...
    1, 3, 4, 1;...
    3, 1, 2, 3;...
    1, 5, 2, 1;...
    1, 5, 4, 1;...
%     2, 3, 4, 5;...
    3, 6, 4, 3;...
    4, 6, 5, 4;...
    5, 6, 2, 5;...
    2, 6, 3, 2;...
    7, 6, 8, 7;...
    9, 10, 12, 11;...
    13, 15, 16, 14;
    ];

myred = [1, 0, 0];
mygreen = [0, 1, 0];
myblue = [0, 0, 1];
myyellow = [1, 1, 0];
mycyan = [0, 1, 1];

patchcolors = [...
    myred;...
    mygreen;...
    myblue;...
    myyellow;...
    mycyan;...
    mycyan;...
    myred;...
    mygreen;...
    myblue;...
    myyellow;...
    mycyan;...
    ];