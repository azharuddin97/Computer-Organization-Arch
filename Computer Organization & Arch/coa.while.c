#include<stdio.h>
int main(){
    char x;
    scanf("%c",&x);
    while(x!=' '){
        printf("%c",x);
        scanf("%c",&x);
    }
    
    return 0;
    
}
