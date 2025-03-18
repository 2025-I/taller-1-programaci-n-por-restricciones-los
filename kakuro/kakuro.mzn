include "globals.mzn";

% Problem parameters
par int: n; % Number of white cells
set of int: CELLS = 1..n; % Set of cells

array[CELLS] of var 1..9: x; % Variables for the white cells (values to find, solution)

par int: m; % Number of hints
set of int: HINTS = 1..m; % Set of hints

array[HINTS] of int: v; % Values of the hints
array[HINTS] of set of CELLS: I; % Sets of cells for each hint

% Assertions to validate the input data
constraint assert(n > 0, "El número de celdas blancas (n) debe ser mayor que 0.");
constraint assert(m > 0, "El número de pistas (m) debe ser mayor que 0.");
constraint assert(length(v) == m, "El número de valores de pistas (v) debe ser igual a m.");
constraint assert(length(I) == m, "El número de conjuntos de celdas (I) debe ser igual a m.");
constraint assert(forall(h in HINTS)(forall(i in I[h])(i in CELLS)), "Todos los índices de celdas en I deben estar en el rango de 1 a n.");

% Constraints
% Description: For each hint h, the sum of the values of the cells in I[h] must be equal to v[h].
constraint forall(h in HINTS)(sum(i in I[h])(x[i]) = v[h]);
% Description: For each hint h, the values of the cells in I[h] must all be different.
constraint forall(h in HINTS)(alldifferent([x[i] | i in I[h]]));

% Solve strategies
% solve :: int_search(
%     x,               % Variables to explore
%     first_fail,      % Strategy: select the variable with the smallest domain
%     indomain_min,    % Assign the smallest possible value first
%     complete         % Complete (classic backtracking)
% ) satisfy;

%  solve :: int_search(
%      x,               
%      most_constrained, % Select the variable involved in the most constraints
%      indomain_random, % Assign values in random order
%      complete          
%  ) satisfy;

% Solve the problem
solve satisfy;

% Output
output [show(x)];