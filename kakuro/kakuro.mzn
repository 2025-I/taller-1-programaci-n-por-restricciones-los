include "globals.mzn";

int: n; % Número de celdas en el problema
set of int: DOMINIO = 1..9; % valores posibles en las celdas
array[1..n] of var DOMINIO: x; % Variables del problema

int: num_hints;
array[1..num_hints] of int: hints; % Sumas objetivo
array[1..num_hints] of set of int: groups; % Grupos de celdas

% Restricciones
constraint forall(i in 1..num_hints) (
    sum(j in groups[i]) (x[j]) = hints[i] /\
    alldifferent([x[j] | j in groups[i]])
);

solve satisfy;

output ["\n"] ++ [show(x[i]) ++ if i mod 9 == 0 then "\n" else " " endif | i in 1..n];