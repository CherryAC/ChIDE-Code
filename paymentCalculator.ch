/* 
the user works at a job that pays $25/hour
the user only gets 60% of their total pay, since 30% go toward taxes
the user wants to calculate their salary
have the user input the amount of hours he/she worked, 
and calculate his/her:
gross pay (pay without tax),
deducted tax (money that the user will not receive as pay),'
and net pay (total pay the user will receive after tax)
*/

//declarations and initializations
double hours;
double pay = 25;
double withheldpay = 0.3; //the percentage is 30%, but the decimal is 0.3
double grosspay;
double deductedtax;
double netpay;

//termination
printf("Welcome to the Payment Calculator! \n");
printf("Please enter the hours worked. \n");
scanf("%lf", &hours);

//processing
grosspay = (pay*hours);
deductedtax = (withheldpay*grosspay);
netpay = (grosspay - deductedtax);

//termination
printf("   Gross Pay: $%.2lf \n", grosspay);
printf("Deducted Tax: $%.2lf \n", deductedtax);
printf("     Net Pay: $%.2lf \n", netpay);
