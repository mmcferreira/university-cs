#include <stdio.h>    // Inclui a biblioteca padr�o de entrada e sa�da
#include <stdlib.h>   // Inclui a biblioteca padr�o para aloca��o de mem�ria e fun��es utilit�rias
#include <ctype.h>    // Inclui a biblioteca para fun��es de manipula��o de caracteres
#include <string.h>   // Inclui a biblioteca para manipula��o de strings

#define MAX_SIZE 100  // Define um tamanho m�ximo para a express�o prefixa

// Defini��o de um n� da fila
typedef struct Node {
    char* data;          // Dado armazenado no n� (uma string)
    struct Node* next;   // Ponteiro para o pr�ximo n� na fila
} Node;

// Defini��o da fila
typedef struct {
    Node* front;    // Ponteiro para o in�cio da fila
    Node* rear;     // Ponteiro para o final da fila
} Queue;

// Fun��o para criar e inicializar uma nova fila
Queue* createQueue() {
    Queue* q = (Queue*)malloc(sizeof(Queue));  // Aloca mem�ria para a fila
    q->front = NULL;   // Inicializa o in�cio da fila como NULL
    q->rear = NULL;    // Inicializa o final da fila como NULL
    return q;          // Retorna o ponteiro para a fila criada
}

// Fun��o para verificar se a fila est� vazia
int isEmpty(Queue* q) {
    return (q->front == NULL);  // Retorna 1 (true) se o in�cio da fila for NULL, caso contr�rio retorna 0 (false)
}

// Fun��o para enfileirar (inserir) um elemento na fila
void enqueue(Queue* q, char* data) {
    Node* newNode = (Node*)malloc(sizeof(Node));   // Aloca mem�ria para um novo n�
    newNode->data = strdup(data);                  // Copia a string para o novo n�
    newNode->next = NULL;                          // Inicializa o pr�ximo n� como NULL
    if (isEmpty(q)) {                              // Se a fila estiver vazia
        q->front = newNode;                        // O novo n� ser� o in�cio da fila
        q->rear = newNode;                         // O novo n� tamb�m ser� o final da fila
    } else {                                       // Se a fila n�o estiver vazia
        q->rear->next = newNode;                   // O novo n� � adicionado ao final da fila
        q->rear = newNode;                         // Atualiza o ponteiro do final da fila para o novo n�
    }
}

// Fun��o para desenfileirar (remover) um elemento da fila
char* dequeue(Queue* q) {
    if (isEmpty(q)) {             // Se a fila estiver vazia
        printf("Fila vazia.\n");  // Imprime mensagem de erro
        exit(EXIT_FAILURE);       // Encerra o programa com falha
    }
    Node* temp = q->front;        // Guarda o n� atual do in�cio da fila
    char* data = temp->data;      // Armazena o dado do n� a ser removido
    q->front = q->front->next;    // Atualiza o in�cio da fila para o pr�ximo n�
    if (q->front == NULL) {       // Se o novo in�cio da fila for NULL
        q->rear = NULL;           // A fila est� vazia, ent�o o final tamb�m deve ser NULL
    }
    free(temp);                   // Libera a mem�ria do n� removido
    return data;                  // Retorna o dado removido
}

// Fun��o para avaliar a express�o prefixa
int evaluateExpression(Queue* q) {
    if (!isEmpty(q)) {              // Enquanto a fila n�o estiver vazia
        char* token = dequeue(q);   // Remove o pr�ximo elemento da fila
        if (isdigit(token[0]) || (token[0] == '-' && isdigit(token[1]))) { // Se o token for um d�gito (operando)
            return atoi(token);     // Converte a string para inteiro e retorna
        } else {                    // Se o token for um operador
            int operand1 = evaluateExpression(q); // Avalia recursivamente o pr�ximo operando
            int operand2 = evaluateExpression(q); // Avalia recursivamente o segundo operando
            switch (token[0]) {      // Realiza a opera��o correspondente ao operador
                case '+':
                    return operand1 + operand2;
                case '-':
                    return operand1 - operand2;
                case '*':
                    return operand1 * operand2;
                case '/':
                    if (operand2 != 0) {    // Verifica divis�o por zero
                        return operand1 / operand2;
                    } else {
                        printf("Erro: Divis�o por zero.\n");
                        exit(EXIT_FAILURE); // Encerra o programa com falha
                    }
                default:
                    printf("Erro: Operador inv�lido.\n");  // Operador desconhecido
                    exit(EXIT_FAILURE);                    // Encerra o programa com falha
            }
        }
    }
    return 0; // Retorno padr�o (nunca deve chegar aqui)
}

// Fun��o principal do programa
int main() {
    Queue* q = createQueue(); // Cria e inicializa uma fila

    printf("Digite a express�o prefixa (n�meros separados por espa�o): ");
    char expression[MAX_SIZE]; // Declara um array para armazenar a express�o
    fgets(expression, MAX_SIZE, stdin); // L� a express�o digitada pelo usu�rio

    char* token = strtok(expression, " \n"); // Divide a express�o em tokens, considerando espa�os e nova linha
    while (token != NULL) {
        enqueue(q, token); // Insere cada token na fila
        token = strtok(NULL, " \n");
    }

    int result = evaluateExpression(q); // Avalia a express�o prefixa
    printf("Resultado da express�o: %d\n", result); // Imprime o resultado

    return 0; // Encerra o programa
}
