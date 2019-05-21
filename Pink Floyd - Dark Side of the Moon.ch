//This program was written in ChiDE on December 3, 2018

//This program creates the album art for Pink Floyd's album Dark Side of the Moon via creating different shapes and lines on a graph

//In this code, what is coded first appears at the very back, and then the code after it appears in front of it

//This is what needs to be coded first in order for a graph to be generated
#include <chplot.h>
CPlot plot;

//Graph 
//this outlines the parameters of the graph that the picture is going to be graphed onto

//the title that appears below the graph
plot.title("Pink Floyd - Dark Side of the Moon");
//the label for the x-axis
plot.label(PLOT_AXIS_X, "x");
//the range of x-axis values
plot.axisRange(PLOT_AXIS_X, 0, 1000);
//the intervals of tick marks that will appear on the x-axis 
plot.ticsRange(PLOT_AXIS_X, 50);
//the label for the y-axis
plot.label(PLOT_AXIS_Y, "y");
//the range of y-axis values
plot.axisRange(PLOT_AXIS_Y, 0, 1000);
//the intervals of tick marks that will appear on the y-axis
plot.ticsRange(PLOT_AXIS_Y, 50);

//Black Background
//the set value for the line thickness - this will apply to the rectanglee lines and all other lines below it unless the value is changed
plot.strokeWidth(2);
//the set value for the line color - this will apply to the rectangle lines and all other lines below it unless the value is changed
plot.strokeColor("black");
//the set value for the fill color - this will apply to the rectangle and all other shapes and lines below it unless the value is changed
plot.fillColor("black");
//the shape that will be plotted using points (x1, y1, x2, y2); the preceding values for color and width will apply to this shape
plot.rectangle(0, 0, 1000, 1000);

//White Line on the left side of the triangle
//the new set value for the line thickness
plot.strokeWidth(2);
//the new set value for the line color 
plot.strokeColor("white");
//the shape that will be plotted using points (x1, y1, x2, y2)
plot.line(0, 400, 410, 624);

//Light Blue Triangle 
//the new set value for the line thickness 
plot.strokeWidth(4);
//the new set value for the line color 
plot.strokeColor("#B3E5FC");
//the set value for the fill opacity - the full opacity will apply to the triangle lines and all other lines below it unless the value is changed
plot.fillOpacity(1);
//the shape that will be plotted using points (x1, y1, x2, y2, x3, y3); the preceding values for width, color, and opacity will apply to this shape
plot.triangle(300, 250, 500, 900, 700, 250);

//Rainbow
//Red
plot.strokeWidth(8);
plot.strokeColor("#FF4433");
plot.line(567.422, 705.677, 996, 560);
plot.line(567.422, 705, 995, 535);

//Orange
plot.strokeWidth(8);
plot.strokeColor("#FFAA44");
plot.line(575.184, 679.933, 996, 515);
plot.line(575.5, 679, 995, 490);

//Yellow
plot.strokeWidth(8);
plot.strokeColor("yellow");
plot.line(584, 652.5, 996, 475);
plot.line(584, 652.5, 995, 449);

//Green
plot.strokeWidth(8);
plot.strokeColor("#33BB44");
plot.line(591, 625, 995, 430);
plot.line(591, 625, 995, 404);

//Blue
plot.strokeWidth(8);
plot.strokeColor("#33AADD");
plot.line(601, 598, 996, 380);
plot.line(601, 598, 995, 353);

//Purple
plot.strokeWidth(8);
plot.strokeColor("#665588");
plot.line(607, 571, 996, 335);
plot.line(607, 571, 995, 308);

//Line to cover the rainbow lines overlapping with the triangle
plot.strokeWidth(4);
plot.strokeColor("#B3E5FC");
plot.line(500, 900, 700, 250);

plot.strokeWidth(4);
plot.strokeColor("#B3E5FC");
plot.line(300, 250, 700, 250);

//Small dark blue triangle within the bigger light blue one
plot.strokeWidth(3);
plot.strokeColor("#5DADE2");
plot.fillOpacity(0.01);
plot.triangle(310, 260, 500, 875, 690, 260);

//This is what needs to be coded last in order for the graph to generate
plot.plotting();

