## 3.2 Modelado del Sudoku como CSP

- **Variables:** Cada celda del tablero de 9x9 se modela como una variable a ser encontrada $solution[i,j]$.  
- **Dominios:** Cada variable puede tomar valores del 1 al 9.  
- **Restricciones:**  
  1. Las celdas con valores dados deben coincidir con la matriz de entrada.  
  2. Cada fila debe contener valores únicos del 1 al 9.  
  3. Cada columna debe contener valores únicos del 1 al 9.  
  4. Cada subcuadro 3x3 debe contener valores únicos del 1 al 9.  

---

# 4.2 Implementación de Sudoku en Minizinc

```minizinc
include "alldifferent.mzn";

array[1..9, 1..9] of opt 1..9: sudoku;
array [1..9, 1..9] of var 1..9: solution;

constraint forall (i, j in 1..9) (solution[i, j] ~= sudoku[i, j]);

constraint forall (i in 1..9) (all_different(solution[i, ..]));

constraint forall (j in 1..9) (all_different(solution[.., j]));

constraint forall (i, j in 1..3) (
  all_different(solution[
    3 * (i - 1) + 1 .. 3 * i,
    3 * (j - 1) + 1 .. 3 * j
  ])
);

solve satisfy;

output [
    if j == 1 then "\n" else "" endif ++ show(solution[i, j]) ++ " "
    | i in 1..9, j in 1..9
];
```

---

# 5.2 Estrategias de Distribución y Resultados

