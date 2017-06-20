# include <iostream>


using namespace std;
int x,i;
int main ()
{
    cout<<"impares:\n";
    for(i=1;i<=99;i++)
    {
                  x=i%2;
                  if (x==1)
                   {
                         cout <<i<<"\n";
                   }
    }
    system ("pause");
    return 0;
}
