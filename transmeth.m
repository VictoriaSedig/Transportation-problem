


A = [-1 0 0 0 -1 0 0 0 -1 0 0 0; 
    0 -1 0 0 0 -1 0 0 0 -1 0 0; 
    0 0 -1 0 0 0 -1 0 0 0 -1 0; 
    0 0 0 -1 0 0 0 -1 0 0 0 -1;
    1 1 1 1 0 0 0 0 0 0 0 0;
    0 0 0 0 1 1 1 1 0 0 0 0;
    0 0 0 0 0 0 0 0 1 1 1 1];

   
b = [-15 -45 -30 -25 25 55 35]; %%%%% The 6th number is run for 55 but 60 in task 4

f = [10 0 20 11 12 7 9 20 0 14 16 18];
lb = [0 0 0 0 0 0 0 0 0 0 0 0];
ub = [inf inf inf inf inf inf inf inf inf inf inf inf];

options = optimoptions('linprog','Algorithm','interior-point','display','iter');
x_interiorpoint = linprog(f,A,b,[], [], lb, ub, options);  

options = optimoptions('linprog','Algorithm','dual-simplex','display','iter');
x_simplex = linprog(f,A,b,[], [], lb, ub, options);