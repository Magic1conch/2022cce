#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);

    printf("�d����:%d\n",n/1000);
    n=n%1000;

    printf("�ʤ���:%d\n",n/100);
    n=n%100;

    printf("�Q����:%d\n",n/10);
    n=n%10;

    printf("�@����:%d\n",n);
}
