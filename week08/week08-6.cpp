#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    scanf("%d",&n);
    int i=1;
    int j=1;
    while(i<=n)
    {
        j=1;
    	while(j<=n)
    	{
            if(j<=(n-i))printf(" ");
            else printf("*");
            j++;
        }
        printf("\n");
        i++;
    }
}
