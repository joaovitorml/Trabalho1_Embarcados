#include <stdio.h>

int main(int argc, char* argv[]){

    int opcao;
    printf("1- Temperatura pelo potenciometro\n");
    printf("2- Escolher manualmente\n");
    printf("Escolha uma das opções: ");
    scanf("%d",&opcao);

    int temperatura;

    switch(opcao){
        case 1:
            printf("1\n");
            break;
        case 2:
            printf("Escolha a temperatura: ");
            scanf("%d", &temperatura);
    }
    return 0;
}