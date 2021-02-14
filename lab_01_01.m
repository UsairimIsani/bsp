clear all;
close all;
clc;

x = 1:10;
y = 20:30;
z = rand(10,1);

for i = 1:10
   sum_elements(i) = x(i) + y(i) + z(i);
end

disp("Answer: ");
disp(sum_elements)