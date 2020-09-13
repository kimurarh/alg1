## Lista 9

* [Matrizes](#Matrizes)

### Matrizes

#### (0) Matriz Triangular
Uma matriz quadrada A n×n é considerada triangular quando os elementos que estão acima da sua diagonal principal são todos nulos (matriz triangular inferior) ou quando os elementos que estão abaixo de sua diagonal principal são todos nulos (matriz triangular superior). Vejamos dois exemplos de matrizes triangulares:

```
     | 9  8  7  6 |                    | 6  0  0  0 |
     | 0  6  7  3 |                    | 3  0  0  0 |
     | 0  0  2  5 |                    | 0  4  7  0 |
     | 0  0  0  1 |                    | 7  5  2  1 |
Matriz Triangular Superior        Matriz Triangular Inferior
```

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja triangular, caso contrário deve imprimir “nao”.

Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade definida foi atendida ou não. 

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3<br>1 9 5<br>0 2 4<br>0 0 7|sim|
|3<br>1 0 0<br>5 2 0<br>4 9 3|sim|
|3<br>1 2 3<br>4 5 6<br>7 8 9|nao|

#### (1) Elementos Nulos
Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo 1 ≤ m, n ≤ 100, e uma matriz A m×n . O programa deve imprimir o números de linhas e o número de colunas que são nulas, ou seja, quando todos os elementos de uma linha ou coluna são iguais a 0 (zero).
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|4 4<br>1 0 2 3<br>4 0 5 6<br>0 0 0 0<br>0 0 0 0|linhas: 2<br>colunas: 1|

#### (2) Repetição em Matriz
Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo 1 ≤ m, n ≤ 100, e uma matriz A m×n . O programa deve imprimir “sim” se há elementos repetidos na matriz A, caso contrário deve imprimir “nao”.
Nos casos de teste cada elemento x da matriz A é definido por 1 ≤ x ≤ 1000.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade definida foi atendida ou não.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3 3<br>1 2 3<br>4 5 6<br>7 8 9|nao|
|3 4<br>1 2 3 4<br>4 5 6 7<br>7 8 9 10|sim|

#### (3) Permutação em Matriz
Uma matriz inteira A n×n é considerada uma matriz de permutação se em cada linha e em cada coluna
houver n - 1 elementos nulos e um único elemento igual a 1.

Um exemplo de Matriz de permutação:
```
| 0  1  0  0 |
| 0  0  1  0 |
| 1  0  0  0 |
| 0  0  0  1 |
```

Um exemplo de Matriz que não é de permutação:
```
| 2 -1  0 |
|-1  2  0 |
| 0  0  1 |
```

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz
inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja de permutação, caso contrário deve
imprimir “nao”.

Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100.

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade definida foi atendida ou não.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3<br>1 0 0<br>0 1 0<br>0 0 1|sim|
|3<br>1 0 0<br>1 0 0<br>0 1 0|nao|
