/*

This is one of the many programs I wrote for mock robot competitions during Computer Math.

RoboPlay Challenges 2018 - Division 2

RoboSelector - 60 points

Bot automation on the manufacturing foor is based on a series of computations. To
decide which Bot needs to move, write code to solve a system of equations.

Setup

Start Bot 1 at BotSpot A
Start Bot 2 at BotSpot B
Start Bot 3 at BotSpot C
Start Bot 4 at BotSpot D

E and F will be supplied by the judge in the form “E F” (see scanf)

Solve the following system of equations (where E and F are integers)
3x + y = E
2x - 5y = F

Print the value of x. On the next line print the value of y. (see printf)
Move the Bots corresponding to the values of x and y to the Conveyor Belt
ex: If x = 1 and y = 3, move Bots 1 and 3 to the Conveyor Belt

SCORING:
Correct x and y values printed - 35 points
Correct bots move to the Conveyor Belt - 25 points

*/

#include<linkbot.h>

/*
note: the robot you list first on LinkbotLabs 
(once all four bots are listed it will be the one on the very bottom) 
will be assigned to Bot1, so be sure to look at the bot's four number code when placing then in the BotSpots
*/

//declarations
CLinkbotI Bot1;
CLinkbotI Bot2;
CLinkbotI Bot3;
CLinkbotI Bot4;
double E; //the number as supplied by the judge
double F; //the number as supplied by the judge
int x; //the result of plugging E & F into the equations
int y; //the result of plugging E & F into the equations

/*
BOT SETUP:
Put the bots so the ball on the purple stabilizer is in front of the 
blue line and in between the red and green dots 
*/

//Tell the computer what E & F are:
printf("What is the value of E? \n");
scanf("%lf", &E);

printf("What is the value of F? \n");
scanf("%lf", &F);

/*
Plug E & F into the equations to get x and y
3x + y = E
2x - 5y = F

TO FIND X:
3x + y = E -> y = E-3x
2x - 5y = F -> y = (F-2x)/-5

E-3x = (F-2x)/-5
(solved on WolframAlpha)

TO FIND Y:
3x + y = E -> x = (E-y)/3
2x - 5y = F -> x = (F+5y)/2

*/

//Solve for X | SEE SOLUTION FOR VARIABLE X @ https://www.wolframalpha.com/input/?i=E+-+3x+%3D+(F-2x)%2F-5
x = (((5*E)+(F))/17);

//Solve for Y | SEE SOLUTION FOR VARIABLE Y @ https://www.wolframalpha.com/input/?i=(E-y)%2F3+%3D+(F%2B5y)%2F2
y = (((2*E)-(3*F))/17);

printf("Bot %d should be advancing. \n", x);
printf("Bot %d should be advancing. \n", y);

//BotSpots (0, 36) -> Conveyor Belt (0, 18);
//If x equals...
if(x==1){
    Bot1.driveDistance(18, 2);
}

if(x==2){
    Bot2.driveDistance(18, 2);
}

if(x==3){
    Bot3.driveDistance(18, 2);
}

if(x==4){
    Bot4.driveDistance(18, 2);
}

//If y equals...
if(y==1){
    Bot1.driveDistance(18, 2);
}

if(y==2){
    Bot2.driveDistance(18, 2);
}

if(y==3){
    Bot3.driveDistance(18, 2);
}

if(y==4){
    Bot4.driveDistance(18, 2);
}


