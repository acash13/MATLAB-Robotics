map =zeros(20,20);  
map(6, 4:16) = 1; 
map(10, 4:16) = 1;
map(2:14,8)=1;
map(2:14,12)=1;

xlim([-5, 20]);
ylim([-5, 20]);

start = [10; 12];
goal1 = [15; 12];
goal2 = [15; 8];  
goal3 = [15; 4];  
goal4 = [10; 4];
goal5 = [5; 4];
goal6 = [5; 8];
goal7 = [5; 12];
goal8 = [10; 12];
 
prm = PRM(map);       
prm.plan() 
prm.plot()
path1=prm.query(start,goal1)';
path2=prm.query(goal1,goal2)';
path3=prm.query(goal2,goal3)';
path4=prm.query(goal3,goal4)';
path5=prm.query(goal4,goal5)';
path6=prm.query(goal5,goal6)';
path7=prm.query(goal6,goal7)';
path8=prm.query(goal7,goal8)';

hold on
plot(path1(1,:),path1(2,:),'Color', 'b', 'LineWidth', 2)
plot(path2(1,:),path2(2,:),'Color', 'b', 'LineWidth', 2)
plot(path3(1,:),path3(2,:),'Color', 'b', 'LineWidth', 2)
plot(path4(1,:),path4(2,:),'Color', 'b', 'LineWidth', 2)
plot(path5(1,:),path5(2,:),'Color', 'b', 'LineWidth', 2)
plot(path6(1,:),path6(2,:),'Color', 'b', 'LineWidth', 2)
plot(path7(1,:),path7(2,:),'Color', 'b', 'LineWidth', 2)
plot(path8(1,:),path8(2,:),'Color', 'b', 'LineWidth', 2)

L(1) = Link ('d',2, 'a', 10, 'alpha', 0,'offset',0);%deg2rad(18.435));
L(2) = Link ('d', 0.6, 'a',11, 'alpha', 0,'offset',0);%deg2rad(19));
L(1).qlim = [0 pi];           % Joint 1: 0 to pi
L(2).qlim = [pi/2 3*pi/2];     % Joint 2: pi/2 to 3*pi/2
robot = SerialLink(L, 'name', '2-Link Robot');
clear S S1 S3
S=1;
S1=1;
% % S = device.servo( 'D3', 'MinPulseDuration', 660e-6, 'MaxPulseDuration', 2425e-6);
% % S1 = device.servo( 'D5', 'MinPulseDuration', 660e-6, 'MaxPulseDuration', 2425e-6);
% % S3 = device.servo('D6', 'MinPulseDuration', 1500e-6, 'MaxPulseDuration', 1900e-6);
% % S3.writePosition(.2)
set(gcf, 'HandleVisibility', 'off');
figure Name robot_plotting
hold on
path =path1;
robot_plotting(path,robot,S,S1)
path =path2;
robot_plotting(path,robot,S,S1)
path =path3;
robot_plotting(path,robot,S,S1)
path =path4;
robot_plotting(path,robot,S,S1)
path =path5;
robot_plotting(path,robot,S,S1)
path =path6;
robot_plotting(path,robot,S,S1)
path =path7;
robot_plotting(path,robot,S,S1)
path =path8;
robot_plotting(path,robot,S,S1)