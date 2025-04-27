function robot_plotting(path,robot,S,S1)

x =-path(1,:);
y =path(2,:);

for i = 1:length(x)
    U = [0 -1 0 x(i);1 0 0 y(i);0 0 1 0;0 0 0 1];
    Q = deg2rad([52.93 102.8]); % Initial guess
    jointangles = robot.ikine(U, 'mask', [1 1 0 0 0 0],'q0',Q);
    % Forward kinematics to plot the robot
    hold on
    plot(x(i), y(i),'k.', 'MarkerSize', 8);
    robot.plot([jointangles(1) jointangles(2)]);  % Plot the robot
    y1=0.005555555555556*rad2deg(jointangles(1))+0;
    y2=0.005555555555556*rad2deg(jointangles(2))+0;
    if y1 > 1
        y1 = 1;
    elseif y1 < 0
        y1 = 0;
    else

    end

    if y2 > 1
        y2 = 1;
    elseif y2 < 0
        y2 = 0;
    else

    end
    r1 =1-y1;
    r2= 1-y2;
    % S.writePosition(r1)
    % S1.writePosition(r2)
end
end


