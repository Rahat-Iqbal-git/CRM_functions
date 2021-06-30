import 'dart:math';

class DateCalcs
{
  DateCalcs(this.date, this.month, this.year, this.paid, this.due);   //constructor contains all the variables, send all at once
  int date, month, year, paid, due;
  var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  String _nextdate(){

    if(date <= 28 )
        return date.toString();

    else if (date > 28 && month==2)
      {
        if((year%400 == 0) || (year%4==0 && year%100 != 0))
                    date = 29;
                else
                    date = 28;
      }
      else if(date > 30)
        {switch(month)
            {   case 4:
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
    return date.toString();
  }

  String _nextmonth()
  {
    month++;
    //x++;
    //months = months[x];
    return months[month].toString();
  }

  int _nextdue()
  {
    due = due-paid;
    return due;
  }

}

//int DateCalcs._nextdate