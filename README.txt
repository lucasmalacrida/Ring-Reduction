N Números j_i reais aleatórios em [0,1] organizados unidimensionalmente em um anel.
Buscar o maior j_i e fazer a operação: j_{i-1} <- (j_{i-1} * j_{i+1}) / j_{i} .
Fazer até restar um único real e medir o tempo de execução "T".
Testar p/ N=10, 10^2, 10^3, 10^4, 10^5 e plotar o gráfico dos pontos (N,T).

Versão Inicial Python:
N = 10
--- 0.002765655517578125 seconds ---

N = 100
--- 0.019083499908447266 seconds ---

N = 10^3
--- 0.05366373062133789 seconds ---

N = 10^4
--- 1.296684741973877 seconds ---

N = 10^5
--- 106.37920117378235 seconds ---

Versão Inicial Fortran:
N = 10
0.0000000000000000      milliseconds

N = 100
0.0000000000000000      milliseconds

N = 10^3
2.0000000000000000      milliseconds

N = 10^4
89.000000000000000      milliseconds

N = 10^5
8016.0000000000000      milliseconds

N = 10^6
(se crescer com fator 100, vai dar uns 13 min)????

Implementar: 
Trabalhar com logs, tanto pra não matar o 'x' final, quanto pra simplificar as operações, usando soma/subtr.
Usar a técnica de verificar caras grandes de 3 em 3, pq eles com ctz uma hora serao os maiores.
Ver a tecnica de usar 3 arrays, um original e dois com os vizinhos, direito/esquerdo, de cada [i].
