/*
have the robot complete a dance with the steps given by the teacher

the commands are structured as such:
turnLeft(degree turning left, wheelRadius, robot length from one wheel to the other)
turnRight(degree turning right, wheel Radius, robot length from one wheel to the other)
driveDistance(distance forward, wheel Radius)
*/
#include<linkbot.h>

//declarations
CLinkbotI robot1, robot2, robot3, robot4;

CLinkbotIGroup group; //this allows for all the robots to be controlled at once

//add the individual linkbots to the group
group.addRobot(robot1);
group.addRobot(robot2);
group.addRobot(robot3);
group.addRobot(robot4);

//step 1: Turn your robots left 180 degrees.
group.turnLeft(180, 2, 3.69);

//step 2: Move forward 6 inches.
group.driveDistance(6, 2);

//step 3: Change all robot colors to red.
group.setLEDColor("red");

//step 4: Turn 360 degrees left.
group.turnLeft(360, 2, 3.69);

//step 5: Go backward 6 inches.
group.driveDistance(-6, 2);

/*
step 6: Turn right: 
robot 1 - 90 degrees, 
robot 2 - 180 degrees, 
robot 3 - 270 degrees 
and if you have robot 4, turn 360 degrees.
*/
robot1.turnRight(90, 2, 3.69);
robot2.turnRight(180, 2, 3.69);
robot3.turnRight(270, 2, 3.69);
robot4.turnRight(360, 2, 3.69);

//step 7: Go backward 3 inches.
group.driveDistance(-3, 2);

//step 8: Change all robots to a custom color. 
robot1.setLEDColor("yellow");
robot2.setLEDColor("orange");
robot3.setLEDColor("cyan");
robot4.setLEDColor("magenta");

//step 9: Drive forward 3 inches.
group.driveDistance(3, 2);

//step 10: Turn right: robot 1 270 degrees.
robot1.turnRight(270, 2, 3.69);

//step 11: Wait 1 second.
sleep(1);

//step 12: Turn right: robot 2 180 degrees.
robot2.turnRight(180, 2, 3.69);

//step 13: Wait 1 second.
sleep(1);

//step 14: Turn right: robot 3: 90 degrees.
robot3.turnRight(90, 2, 3.69);

//step 15: Wait 1 second.
sleep(1);

//step 16: Turn right: if you have a robot 4, turn 360 degrees.
robot4.turnRight(360, 2, 3.69);
