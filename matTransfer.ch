/* 
    matTransfer:
    Bot must go to a randomly assigned location in the Warehouse to drop off supplies.
    
    One Bot starts in a randomly assigned BotSpot from {A, C, E, F}.
    Hacky Sack may be placed anywhere touching the Bot.
    Receive an (X,Y) coordinate in the range 51 < X < 81 and 3 < Y < 39.
    Input will be in the form “P X Y” where P is the BotSpot and X and Y are integers.
    Navigate to the location given by (X,Y) from the BotSpot given with the Hacky.
    
    1. Bot and Hacky enter the Warehouse                              20 points
    2. Bot ends at the correct location and is touching the Hacky     40 points
                                                                    = 60 points total
*/

//declarations & initializations
#include<linkbot.h>
CLinkbotI bot;
int X; // x-coordinate input given
int Y; // y-coordinate input given
double radius = 2;
double trackwidth = 3.69;
string_t location; // starting position of the linkbot {A, C, E, F}

printf("Where is the robot? \n");
scanf("%s",&location);
printf("What is the X-coordinate? \n");
scanf("%d", &X);
printf("What is the Y-coordinate? \n");
scanf("%d", &Y);

/* PLACEMENT: The ball of the purple stabilizer is in front of the blue line, in between the green and red dots

/* locationA(): linkbot's starting position is (4, 39)
                linkbot drives to a y-value of 12
                turns left 90 degrees (b/c needs to enter warehouse
                drives 46 inches to x-value of 50
    STATUS: WORKS (66, 22), (70, 10), (58, 6)
*/
void locationA(){
    bot.driveDistance(27, radius);
    bot.turnLeft(90, radius, trackwidth);
    bot.driveDistance(46, radius);
}

/* locationC(): linkbot's starting position is (18, 39)
                linkbot drives to a y-value of 12
                turns left 90 degrees (b/c needs to enter warehouse)
                drives 32 inches to x-value of 50
    STATUS: WORKS (66, 22), (70,10) (58,6)
*/
void locationC(){
    bot.driveDistance(25, radius);
    bot.turnLeft(90, radius, trackwidth);
    bot.driveDistance(32, radius);
}

/* locationE(): linkbot's starting position is (32, 39)
                linkbot drives to a y-value of 12
                turns left 95 degrees (b/c needs to enter warehouse)
                drives 18 inches to a x-value of 50
    STATUS: WORKS for (58, 6), (66, 22), (70, 10)
*/
void locationE(){
    bot.driveDistance(26, radius);
    bot.turnLeft(90, radius, trackwidth);
    bot.driveDistance(18, radius);
}

/* locationF(): linkbot starts at (3,3)
                drives forward 10 inches
                turns right 90 degrees
                drives 47 inches towards x-value of 50
    STATUS: WORKS for (70,10) & (58,6), WORKS for (66,22)
*/
void locationF(){
    bot.driveDistance(10, radius);
    bot.turnRight(90, radius, trackwidth);
    bot.driveDistance(47, radius);
}

/* point(): starts at ~(50,12)
            drives forward remaining distance
            if y-coord is greater than 12, will move up mat
            if y-coord is less than 12, will move down mat
    STATUS: X-value WORKS, Y-value WORKS
*/
void point(){
    bot.driveDistance(X-50, radius);
    if(Y>12){
        bot.turnLeft(90, radius, trackwidth);
        bot.driveDistance(Y-12, radius);
        bot.turnRight(90, radius, trackwidth);
    }else{
        bot.turnRight(90, radius, trackwidth);
        bot.driveDistance(12-Y, radius);
        bot.turnLeft(90, radius, trackwidth);
    }
}    

/* Main function: verifies the starting position and runs the correct function
                  runs the function "point()" which handles the (X, Y) input
*/
int main(){
    if(location=="A" || location=="a"){
        locationA();
    }
    if(location=="C" || location=="c"){
        locationC();
    }
    if(location=="E" || location=="e"){
        locationE();
    }
    if(location=="F" || location=="f"){
        locationF();
    }
    point();
}
