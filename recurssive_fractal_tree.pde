
void setup() {
  size(500, 500);
}

void draw() {
  background(255); // define um plano de fundo na cor branca.
  translate(width/2, height); // move a 'origem' para o meio da tela.
  arvore(0, 0, -90, 8); // desenha a árvore, a partir de sua origem.
}

void arvore(float x1, float y1, float angulo, float profundidade) {
  if (profundidade != 0) { // determina se a quantidade pré-determinada de ramos da árvore foram desenhados.
    float x2 = x1 + (cos(radians(angulo)) * profundidade * 10.0);
    float y2 = y1 + (sin(radians(angulo)) * profundidade * 10.0);
    line(x1, y1, x2, y2);
    /* abaixo há uma chamada recursiva para determinar a posição dos galhos.
     Realizando uma soma do valor dos ângulos para os galhos que divergem
     para a direita, e uma subtração dos valores para os galhos que divergem
     para a esquerda.
     */
    arvore(x2, y2, angulo - 20, profundidade - 1);
    arvore(x2, y2, angulo + 20, profundidade - 1);
  }
}

/*
 Esse código usa uma função recursiva  arvore para desenhar os galhos de uma árvore.
 
 A função recebe quatro argumentos: As coordenadas iniciais x & y do galho (x1 & y1),
 o ângulo do galho (angulo), e a 'profundidade' de repetições da recursão (profundidade).
 
 A função calcula os valores finais das coordenadas de x & y do galho (x2 & y2)
 usando trigonometria e desenha uma linha que vai dos pontos iniciais até os
 pontos finais adquiridos.
 
 Após este procedimento, a função realiza duas chamadas a si mesma,
 para desenhar dois novos galhos ao final das coordenadas finais anteriores,
 com uma diferença angular e uma 'profundidade' reduzida. Este processo se repete
 até que a profundidade seja zerada.
 
 A função setup determina o tamanho do canvas, já a função draw determina a cor
 do plano de fundo e a chamada da função arvore para o desenho do figura.
 
 Ao realizar a chamada da função, é possível determinar os pontos de coordenada 
 de onde a árvore começará a ser desenhada, o ângulo de visualização do desenho 
 e a quantidade de vezes que novos galhos ainda serão desenhados. O ângulo de 
 distanciamento dos galhos pode ser alterado na chamada recursiva da função arvore.
 */
