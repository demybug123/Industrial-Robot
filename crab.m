x1=20;
x2=60;
bodyY = 10;
bodyZ = 20;
bodyX = 50;
width = 40;
Length = 100;

while(bodyX<100)
    for t=0:1:40
        z1=3/320*x1^2-3/8*x1+3.75-20;
        draw_leg(x1,10,z1,bodyX);
        draw_leg(x1,30,z1,bodyX);
        draw_leg(x2,20,-20,bodyX);
        draw_leg(x2,40,-20,bodyX);
        draw_left_leg(x1,20,z1,bodyX);
        draw_left_leg(x1,40,z1,bodyX);
        draw_left_leg(x2,10,-20,bodyX);
        draw_left_leg(x2,30,-20,bodyX);
        plot3([bodyX bodyX+Length bodyX+Length bodyX bodyX],[bodyY bodyY bodyY+width bodyY+width bodyY],[bodyZ bodyZ bodyZ bodyZ bodyZ],'Color','green');
        axis([bodyX-50 bodyX+200 0 100 -10 100]);
        pause(0.01);
        hold off
        bodyX=bodyX+0.5;
        x1=x1+1;
        x2=x2-1;
    end
    z=-5;
    for t=0:1:15
        draw_leg(x1,10,z,bodyX);
        draw_leg(x1,30,z,bodyX);
        draw_leg(x2,20,-20,bodyX);
        draw_leg(x2,40,-20,bodyX);
        draw_left_leg(x1,20,z,bodyX);
        draw_left_leg(x1,40,z,bodyX);
        draw_left_leg(x2,10,-20,bodyX);
        draw_left_leg(x2,30,-20,bodyX);
        z=z-1;
        plot3([bodyX bodyX+Length bodyX+Length bodyX bodyX],[bodyY bodyY bodyY+width bodyY+width bodyY],[bodyZ bodyZ bodyZ bodyZ bodyZ],'Color','green');
        axis([bodyX-50 bodyX+200 0 100 -10 100]);
        pause(0.01);
        hold off
    end
    x1=20;
    x2=60;
    for t=0:1:40
        z1=3/320*x1^2-3/8*x1+3.75-20;
        draw_leg(x1,20,z1,bodyX);
        draw_leg(x1,40,z1,bodyX);
        draw_leg(x2,10,-20,bodyX);
        draw_leg(x2,30,-20,bodyX);
        draw_left_leg(x1,10,z1,bodyX);
        draw_left_leg(x1,30,z1,bodyX);
        draw_left_leg(x2,20,-20,bodyX);
        draw_left_leg(x2,40,-20,bodyX);
        plot3([bodyX bodyX+Length bodyX+Length bodyX bodyX],[bodyY bodyY bodyY+width bodyY+width bodyY],[bodyZ bodyZ bodyZ bodyZ bodyZ],'Color','green');
        axis([bodyX-50 bodyX+200 0 100 -10 100]);
        pause(0.01);
        hold off
        bodyX=bodyX+0.5;
        x1=x1+1;
        x2=x2-1;
    end
    z=-5;
    for t=0:1:15
        draw_leg(x1,20,z,bodyX);
        draw_leg(x1,40,z,bodyX);
        draw_leg(x2,10,-20,bodyX);
        draw_leg(x2,30,-20,bodyX);
        draw_left_leg(x1,10,z,bodyX);
        draw_left_leg(x1,30,z,bodyX);
        draw_left_leg(x2,20,-20,bodyX);
        draw_left_leg(x2,40,-20,bodyX);
        z=z-1;
        plot3([bodyX bodyX+Length bodyX+Length bodyX bodyX],[bodyY bodyY bodyY+width bodyY+width bodyY],[bodyZ bodyZ bodyZ bodyZ bodyZ],'Color','green');
        axis([bodyX-50 bodyX+200 0 100 -10 100]);
        pause(0.01);
        hold off
    end
    x1=20;
    x2=60;
end

%step 1
% for x=20:60
%     z=3/320*x^2-3/8*x+3.75-20;
%     draw_leg(x,10,z);
% end
% 
% for z=-5:-1:-20
%     x=60;
%         draw_leg(x,10,z);
% end
% 
% for x=60:-1:20
%     z=-20;
%     draw_leg(x,10,z);
% end

function rad = deg_to_rad(x)
    rad = x*pi/180;
end

function draw_leg(x,y,z,bodyX)
    l1 = 30;
    l2 = 40;
    bodyZ = 20;
    Length = 100;
    C2 = ((x)^2+z^2-l1^2-l2^2)/(2*l1*l2);
    S2 = sqrt(abs(1-C2^2));
    a2 = -atan2(S2,C2);

    a1 = atan2(z,x)+atan2(l2*S2,l1+l2*C2);

    J0x = bodyX+Length;
    J1x = J0x+l1*cos(a1);
    J2x = J1x+l2*cos(a1+a2);

    J0z = bodyZ;
    J1z = J0z + l1*sin(a1);
    J2z = J1z + l2*sin(a1+a2);

    plot3([J0x J1x J2x],[y y y],[J0z J1z J2z],'Color','red');
    hold on
end 

function draw_left_leg(x,y,z,bodyX)
    l1 = 30;
    l2 = 40;
    bodyZ = 20;
    Length = 100;
    C2 = ((x)^2+z^2-l1^2-l2^2)/(2*l1*l2);
    S2 = sqrt(abs(1-C2^2));
    a2 = -atan2(S2,C2);

    a1 = atan2(z,x)+atan2(l2*S2,l1+l2*C2);

    J0x = bodyX;
    J1x = J0x-l1*cos(a1);
    J2x = J1x-l2*cos(a1+a2);

    J0z = bodyZ;
    J1z = J0z + l1*sin(a1);
    J2z = J1z + l2*sin(a1+a2);

    plot3([J0x J1x J2x],[y y y],[J0z J1z J2z],'Color','blue');
    hold on
end 
