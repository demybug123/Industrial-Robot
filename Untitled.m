Ax = 30;
l0 = 40;
Ay =30;

l1 = 30;
l2 = 50;
l3 = 40;

% for t1 = deg_to_rad(10):0.01:deg_to_rad(80)
%     Bx = Ax-l1*cos(t1);
%     By = Ay+l1*sin(t1);
%     temp = l1*cos(t1);
%     t2 = atan2(sqrt(l2^2-temp^2),temp);
%     Cx = Bx+l2*cos(t2);
%     Cy = By+l2*sin(t2);
%     A1x = Ax + l0;
%     Bx1 = A1x-l1*cos(pi-t1);
%     Cx1 = Bx1+l2*cos(pi-t2);
% %     Bx1 = Bx + l0;
%     clf;
%     line([Ax Bx],[Ay By]);
%     line([A1x Bx1],[Ay By]);
%     line([Bx Cx],[By Cy]);
%     line([Bx1 Cx1],[By Cy]);
%     line([Cx Cx1],[Cy Cy]);
%     axis([-30 130 0 130]);
%     pause(0.01);
% end    
% 
% for t1 = deg_to_rad(80):-0.01:deg_to_rad(10)
%     Bx = Ax-l1*cos(t1);
%     By = Ay+l1*sin(t1);
%     temp = l1*cos(t1);
%     t2 = atan2(sqrt(l2^2-temp^2),temp);
%     Cx = Bx+l2*cos(t2);
%     Cy = By+l2*sin(t2);
%     A1x = Ax + l0;
%     Bx1 = A1x-l1*cos(pi-t1);
%     Cx1 = Bx1+l2*cos(pi-t2);
% %     Bx1 = Bx + l0;
%     clf;
%     line([Ax Bx],[Ay By]);
%     line([A1x Bx1],[Ay By]);
%     line([Bx Cx],[By Cy]);
%     line([Bx1 Cx1],[By Cy]);
%     line([Cx Cx1],[Cy Cy]);
%     axis([-30 130 0 130]);
%     pause(0.01);
% end

for t1 = deg_to_rad(80):-0.01:deg_to_rad(10)
    Bx = Ax-l1*cos(t1);
    By = Ay+l1*sin(t1);
    temp = 50 - l1*sin(t1);
    t2 = atan2(temp,sqrt(l2^2-temp^2));
    Cx = Bx+l2*cos(t2);
    Cy = By+l2*sin(t2);
    A1x = Ax + l0;
    Bx1 = A1x-l1*cos(t1);
    Cx1 = Bx1+l2*cos(t2);
%     Bx1 = Bx + l0;
    clf;
    line([Ax Bx],[Ay By]);
    line([A1x Bx1],[Ay By]);
    line([Bx Cx],[By Cy]);
    line([Bx1 Cx1],[By Cy]);
    line([Cx Cx1],[Cy Cy]);
    axis([-30 130 0 130]);
    pause(0.01);
end

function rad = deg_to_rad(x)
    rad = x*pi/180;
end