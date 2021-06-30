#include<iostream>
using namespace std;

int main(){

    //string month;
    int date, month, year = 2015;

    cin>> date >> month;


    if(date>28 && month ==2)
        {
            if((year%400 == 0) || (year%4==0 && year%100 != 0))
                date = 29;
            else
                date = 28;
            }

    else if(date>30)
        {
             switch(month)
            {
                case 4:
                    date = 30;
                    break;
                case 6:
                    date = 30;
                    break;
                case 9:
                    date = 30;
                    break;
                case 11:
                    date = 30;
                    break;
            }

         }


    cout<< date;

    return 0;
}
