include "alldifferent.mzn";

array[1..9, 1..9] of opt 1..9: sudoku;
array [1..9, 1..9] of var 1..9: solution;

constraint forall (i, j in 1..9) (solution[i, j] ~= sudoku[i, j]);  % Las celdas que no son vacias deben ser iguales a la matrix de entrada

constraint forall (i in 1..9) (all_different(solution[i, ..]));     % Todas los digitos de las filas deben ser diferentes

constraint forall (j in 1..9) (all_different(solution[.., j]));     % Todas los digitos de las columnas son diferentes

constraint forall (i, j in 1..3) (                                  % los digitos de los sub-cuadrados son diferentes
  all_different(solution[
    3 * (i - 1) + 1 .. 3 * i,
    3 * (j - 1) + 1 .. 3 * j
  ])
);

% Estrategia 1: input_order con indomain_min
% solve :: int_search([solution[i, j] | i in 1..9, j in 1..9], input_order, indomain_min) satisfy;

% Estrategia 2: first_fail con indomain_max
%solve :: int_search([solution[i, j] | i in 1..9, j in 1..9], first_fail, indomain_max) satisfy;

% Estrategia 3: smallest con indomain_min
 solve :: int_search([solution[i, j] | i in 1..9, j in 1..9], smallest, indomain_min) satisfy;


output [
    if j == 1 then "\n" else "" endif ++ show(solution[i, j]) ++ " "
    | i in 1..9, j in 1..9
];