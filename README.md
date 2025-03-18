![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/agiyKqJx)

<div style="text-align: center; margin-top: 200px;">

# Informe Taller 1: Modelado de CSP en MiniZinc

<br><br>

**Autores**
Kevin Estiven Gil Salcedo
Joan Alejandro Moreno Gil
Juan Felipe Monsalve Vargas

<br><br>

Universidad del Valle

<br><br><br>

**Curso:** Porgramación con restricciones  
**Docente:** Carlos Delgado 
**Fecha:** 17-03-2025

</div>
---

## 1. Introducción

En el ámbito de la inteligencia artificial y la optimización, los **Problemas de Satisfacción de Restricciones (CSP)** constituyen una de las técnicas fundamentales para la resolución de problemas complejos. Estos problemas se caracterizan por la necesidad de asignar valores a un conjunto de variables bajo ciertas restricciones, buscando encontrar soluciones que cumplan con todas las condiciones impuestas. La versatilidad de los CSP los hace aplicables en una gran variedad de contextos, desde la planificación de horarios hasta la resolución de rompecabezas lógicos.

En este informe, se aborda el modelado y la implementación de dos problemas clásicos: el **Sudoku** y el **Kakuro**, utilizando el lenguaje de modelado **MiniZinc**. MiniZinc es una herramienta potente y flexible diseñada para expresar restricciones y resolver problemas complejos de manera eficiente. A través de esta práctica, se busca no solo desarrollar habilidades en la formulación de CSP, sino también en la aplicación de diferentes estrategias de distribución que optimicen la búsqueda de soluciones.

El informe se estructura en varias secciones. Primero, se detalla el proceso de modelado de cada problema, identificando las variables, dominios y restricciones necesarias. Luego, se presenta el código desarrollado en MiniZinc, seguido de una descripción de las estrategias de distribución aplicadas para la resolución. Finalmente, se analizan los resultados obtenidos, comparando la eficacia de cada enfoque y reflexionando sobre las lecciones aprendidas durante el proceso.

Este trabajo no solo evidencia el conocimiento adquirido en cuanto a técnicas de modelado y optimización, sino que también resalta la importancia de una buena formulación del problema y la selección adecuada de estrategias para mejorar el desempeño en la búsqueda de soluciones.

---

# 2. Objetivos 

## 2.1 Objetivo General

- Desarrollar habilidades en el modelado y resolución de **Problemas de Satisfacción de Restricciones (CSP)** utilizando el lenguaje de modelado **MiniZinc**, aplicando técnicas y estrategias de distribución eficientes para resolver los problemas de **Sudoku** y **Kakuro**.

## 2.2 Objetivos Específicos

1. **Comprender los fundamentos teóricos** de los CSP, identificando sus componentes principales: variables, dominios y restricciones.
2. **Modelar los problemas de Sudoku y Kakuro** como CSP en MiniZinc, definiendo correctamente sus restricciones y estructuras de datos.
3. **Implementar el código en MiniZinc** para la resolución eficiente de los problemas, aplicando técnicas adecuadas de modelado y formulación de restricciones.
4. **Explorar diferentes estrategias de distribución** para optimizar la búsqueda de soluciones y comparar su rendimiento.
5. **Analizar los resultados obtenidos**, evaluando la eficiencia de las estrategias de distribución y proponiendo mejoras basadas en la experiencia adquirida.
6. **Desarrollar habilidades en documentación técnica**, presentando de manera estructurada el proceso de modelado, los resultados y el análisis de los mismos.

# Problemas Propuestos
Para ir a la sección del informe de cada problema propuesto:
Para ir a la sección del informe de cada problema propuesto:

1. [**Kakuro**](./docs/kakuro.md)
2. [**Sudoku**](./docs/sudoku.md)

# 8 Conclusiones
1. **Eficacia del Modelado en MiniZinc:**
   El uso de MiniZinc para el modelado de Problemas de Satisfacción de Restricciones (CSP) demostó ser altamente eficiente, permitiendo la definición clara de variables, dominios y restricciones. Tanto en los problemas de Sudoku como Kakuro, se lograron soluciones válidas que respetaron las condiciones impuestas.

2. **Importancia de las Restricciones:**
   Las restricciones "alldifferent" y de suma fueron clave para garantizar la unicidad y la correcta sumatoria de valores en los grupos correspondientes. Estas restricciones aseguraron la validez de las soluciones y evitaron conflictos en las intersecciones de pistas.

3. **Comparación de Estrategias de Distribución:**
   En el caso del Sudoku, la estrategia `first_fail` con `indomain_max` presentó una ligera ventaja en términos de tiempo de ejecución. Sin embargo, las otras estrategias también ofrecieron resultados eficientes, mostrando que la selección de estrategias debe considerar la naturaleza específica del problema.

4. **Resultados en el Modelado de Kakuro:**
   Las pruebas con diferentes casos de Kakuro mostraron que las restricciones establecidas se cumplen consistentemente, garantizando la validez de las soluciones. Aunque el tiempo de ejecución fue similar en los tres casos, se identificó que la complejidad del problema afecta levemente la eficiencia del proceso de resolución.

5. **Potencial de Mejora:**
   Si bien las estrategias actuales son efectivas, se observa un potencial de optimización mediante el uso de técnicas de ramificación más avanzadas, especialmente en casos con alta complejidad y restricciones cruzadas múltiples.

6. **Reflexión Final:**
   Este ejercicio de modelado resalta la importancia de una formulación precisa del problema y la selección adecuada de estrategias de distribución. Además, refuerza el valor de MiniZinc como herramienta para abordar problemas complejos de optimización y satisfacción de restricciones en diversos contextos.