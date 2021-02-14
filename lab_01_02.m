clear all;
close all;
clc;

r = input("Enter the radius of sphere: ");
v = volsphere(r);
fprintf("Volume: %f", v)

function vol = volsphere(r)
   vol = (4/3)*(pi*(r^3));   
end