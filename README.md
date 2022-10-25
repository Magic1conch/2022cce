# 2022cce
# week06
## week06-1
用兩層迴圈畫星星:
```cpp
#include <stdio.h>
int main(){
    for(int i=5;i>0;i--){
        for(int j=0;j<i;j++){
            printf("*");
        }
        printf("i:%d星星\n",i);
    }
}
```
## week06-2
劃出等腰三角形1,3,5,7,9:
```cpp
#include <stdio.h>
int main(){
    for(int i=1;i<=5;i++){
        int space=5-i,star=2*i-1;
        for(int k=0;k<space;k++)printf(" ");
        for(int k=0;k<star;k++)printf("*");
        printf("\n");
    }
}
```
## week06-3
用暴力求最大公因數:
```cpp
#include <stdio.h>
int main(){
    printf("請輸入兩個,要約分: ");
    int a,b;
    scanf("%d %d",&a,&b);

    int ans;
    for(int i=1;i<=a;i++){
        if(a%i==0 && b%i==0){
            ans=i;
        }
    }
    printf("ans: %d 可以約分",ans);
}
```
## week06-4
用輾轉相除法求最大公因數:
```cpp
#include <bits/stdc++.h>
int main(){
    int a,b,c;
    scanf("%d %d", &a, &b);
    while(1){
        c= a%b;
        printf("老大:%d 老二:%d 老三:%d\n",a,b,c);
        if(c==0)break;
        a=b;
        b=c;
    }
    printf("答案b: %d",b);
}
```
# week07
## week07-1
int and long long int:
```cpp
#include <stdio.h>
int main()
{
    int n=23332411149921;
    printf("int 印出來 %d\n",n);

    long long int m =23332411149921;
    printf("long long int 印出來 %lld\n",m);
}
```
## week07-2
公因數:
```cpp
#include <stdio.h>
int main()
{
    long long int a,b;
    scanf("%lld %lld", &a,&b);

    long long int ans;
    for(long long int i=1;i<=a;i++){
        if(a%i==0 && b%i==0)ans=i;
    }
    printf("最大公因數是:%lld\n",ans);
}
```
## week07-3
用輾轉相除法求最大公因數:
```cpp
#include <stdio.h>
int main()
{
    long long int a,b,c;
    scanf("%lld %lld",&a,&b);
    while(1){
        c=a%b;
        printf("a:%lld b:%lld c:%lld\n",a,b,c);
        if(c==0)break;
        a=b;
        b=c;
    }
    printf("答案是: %lld\n",b);
}
```
## week07-4
算錢:
```cpp
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);

    printf("千元的:%d\n",n/1000);
    n=n%1000;

    printf("百元的:%d\n",n/100);
    n=n%100;

    printf("十元的:%d\n",n/10);
    n=n%10;

    printf("一元的:%d\n",n);
}
```
## week07-4b
算個位數:
```cpp
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;

    printf("現在的個位數:%d\n",n%10);
    n=n/10;
}
```

# week07
## week07-1
判斷一個數是不是質數
```cpp
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);
    int bad=0;
    for(int i=2;i<n;i++){
        if(n%i==0)bad=1;
    }
    if(bad==0)printf("%d 是質數",n);
    else printf("%d 不好,不是質數",n);
}
```
## week07-2
把輸入進去的數,裡的質數都列出來
```cpp
#include <stdio.h>>
int main()
{
    int a;
    scanf("%d",&a);
    for(int n=2;n<=a;n++)
    {
        int bad=0;
        for(int i=2;i<n;i++){
            if(n%i==0)bad=1;
        }
        if(bad==0)printf("%d ",n);
    }
}
```
## week07-3
輸入五個輸出結果相佳
```cpp
#include <stdio.h>
int main()
{
    printf("請輸入五個數字(要加起來):");

    int n;
    int sum=0;
    for(int i=0;i<5;i++){
        scanf("%d",&n);
        sum+=n;
    }
    printf("總和是:%d",sum);
}
```
## week07-4
用三個for迴圈畫直角三角形
```cpp
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);

    for(int i=1;i<=n;i++){
        for(int k=1;k<=n-i;k++)printf(" ");
        for(int k=1;k<=i;k++)printf("*");
        printf("\n");
    }
}
```
## week07-5
用兩個for迴圈畫直角三角形
```cpp
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);

    for(int i=1;i<=n;i++){
        for(int k=1;k<=n;k++){
            if(k<=n-i)printf(" ");
            else printf("*");
        }
        printf("\n");
    }
}
```
## week07-6
用兩個while迴圈畫直角三角形
```cpp
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
}
```
