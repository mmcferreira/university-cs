
typedef struct agenda{
char nome[40];
char email[40];
int telefone;
}AGENDA;




void bubbleSort(AGENDA **pAgenda[], int iEntradas );
void ordena( AGENDA **pAgenda[], int iEntradas );



void aloca(AGENDA **pAgenda, int *piEntradas);
void verificacao_input(char *name);
void consulta( AGENDA *pAgenda, int iEntradas);
void pesquisar(AGENDA *pAgenda, int iEntradas);
void excluir(AGENDA **pAgenda, int *piEntradas);
void alterar(AGENDA *pAgenda, int iEntradas);
