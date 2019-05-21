/*

Division 3: Earth Moon Orbit - 60 points
file:///C:/C-STEM/LearnLinkbot/RoboPlayChallengeTasks/2016/RoboPlay2016Division3.pdf

The robot starts at X (62, 38), 
and ends at Y (68, 6)

CRITERIA:

The Asteroid Bot orbits around the Earth 
for about a quarter of the period, straddling the line.
(WORTH 15 POINTS)
The Asteroid Bot moves from Earth Orbit to Lunar Orbit, 
straddling the line. 
(WORTH 15 POINTS)
The Asteroid Bot orbit around the Moon for a quarter of the period, 
straddling the line.
(WORTH 15 POINTS)
The Asteroid Bot stops at point Y.
(WORTH 15 POINTS)

*/

#include<linkbot.h>

//declarations
CLinkbotI robot;

//Robot is at point X (62, 38), and is orbiting around Earth

//POSITIONING OF ROBOT: straddle the X asteroid, caster touching box edge

//robot drives around first curve
robot.setJointSpeeds(175, NaN, -135);
robot.moveTime(3.75);

//robot straightens itself
robot.setJointSpeeds(100, NaN, 0);
robot.moveTime(0.75);

//robot drives on the straight stretch
robot.setJointSpeeds(200, NaN, -200);
robot.moveTime(3);

//robot drives around the second curve
robot.setJointSpeeds(120, NaN, -60);
robot.moveTime(3);

//robot drives to point Y
robot.setJointSpeeds(200, NaN, -200);
robot.moveTime(1.4);










