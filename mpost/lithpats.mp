
beginpattern(pattern_limestone_UIS)
    scale := 10;
    path l[];
    l1 := (0,0)--(0,1);
    l2 := (1,1)--(1,2);
    l6 := (0,1)--(2,1);
    l7 := (0,2)--(2,2);
    draw l1 scaled scale;
    draw l2 scaled scale;
    draw l6 scaled scale; 
    draw l7 scaled scale;
    patternbbox(0,0,2*scale,2*scale);
endpattern;

beginpattern(pattern_dolomite_UIS)
    scale := 10;
    path l[];
    l1 := (0,0)--(.5,1);
    l2 := (2.5,1)--(3,2);
    l3 := (1.25,2)--(1.75,3);       
    l6 := (0,1)--(3,1);
    l7 := (0,2)--(3,2);
    l8 := (0,3)--(3,3);      
    draw l1 scaled scale;
    draw l2 scaled scale;
    draw l3 scaled scale;      
    draw l6 scaled scale; 
    draw l7 scaled scale;
    draw l8 scaled scale;
    patternbbox(0,0,3*scale,3*scale);
endpattern;


beginpattern(pattern_sandstone_UIS)
    scale := 1;
    drawdot (2,1);
    drawdot (5,2);
    drawdot (8,2);
    drawdot (5,4);
    drawdot (5,0);
    drawdot (3,6);
    drawdot (1,8);
    drawdot (6,8);
    drawdot (3,9);
    drawdot (6,0);
    patternbbox(0,0,9*scale,9*scale);
endpattern;

