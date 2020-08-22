## Lista 7

* [Vetores](#Vetores)

### Vetores

#### (0) Vetores 001
Faça um programa que leia um número inteiro n (0 <= n <= 200) e em seguida leia uma sequência de n valores reais e os insira em um vetor de reais. O programa deve imprimir na saída o valor absoluto da divisão da soma dos valores positivos que estão em posições pares pela soma dos valores negativos que estão nas posições ímpares. Cuidado com divisões por zero.

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|4<br>-2.0 -7.0 7.0 2.0|-1.00|
|3<br>1 2 3|divisao por zero|
|0|vetor vazio|

#### (1) Vetores 006
Faça um programa que leia uma sequência de códigos de operação e valor, onde o código de operação é um inteiro com os seguintes valores:
```
0 (zero): fim
1 (um): inserção
2 (dois): remoção
```
O valor lido é um número real que deve ser inserido em um vetor (caso a operação seja 1), ou removido do vetor (caso a operação seja 2). As inserções no vetor devem ser realizadas de forma que o vetor esteja sempre ordenado. O programa deve imprimir todos os vetores resultantes de cada operação e ao final deve imprimir o vetor resultante. Imprima os valores reais sempre com uma casa decimal. Caso o vetor esteja vazio, imprima a mensagem "vazio".

Detalhamento:
- A quantidade máxima de valores que pode ser inserida é 200;
- Se a quantidade máxima for ultrapassada o programa deve dar uma mensagem de erro (imprima a mensagem "erro");
- Se for requisitada a remoção de um número não existente o programa deve dar uma mensagem de erro (imprima "erro");
- Se o código de operação for inválido o programa deve continuar lendo um novo código até que ele seja 0 (zero), 1 (um) ou 2 (dois).
- Use ao máximo funções e procedimentos apropriados.

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|1<br>45.3<br>1<br>34.3<br>4<br>9<br>1<br>40.8<br>2<br>11.9<br>2<br>34.3<br>0|45.3<br>34.3 45.3<br>34.3 40.8 45.3<br>erro<br>40.8 45.3<br>40.8 45.3|

#### (2) Vetores 003
Faça um programa que leia um inteiro positivo n e em seguida leia n valores inteiros quaisquer e imprima "sim" se o vetor estiver ordenado em ordem crescente e "nao" em caso contrário. Em qualquer caso, o programa também deve imprimir o vetor, mas na ordem inversa com relação à leitura. Use funções e procedimentos apropriados.

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|5<br>-2 -7 7 2 1|nao<br>1 2 7 -7 -2|
|7<br>1 3 4 8 8 10 15|sim<br>15 10 8 8 4 3 1|
|0|vetor vazio|

#### (3) Vetores 004
Faça um programa que leia um número inteiro positivo n e em seguida leia uma sequência de n números inteiros quaisquer. Seu programa deve imprimir os números distintos (na mesma ordem relativa entre eles) e em seguida o número de vezes que cada um deles ocorre na mesma. Use ao máximo funções e procedimentos adequados. Dica: você pode usar vetores auxiliares para ajudar a verificar e contar as ocorrências.

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|5<br>3 1 2 2 3|a sequencia tem 3 numeros distintos: 3 1 2<br>1 ocorre 1 vez<br>2 ocorre 2 vezes<br>3 ocorre 2 vezes|
