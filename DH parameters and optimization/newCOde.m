

fid = fopen('dataRad.txt', 'r');
d1=2;
d2=0.6;
a1=10;
a2=11;
para =[d1,d2,a1,a2];
%rev=0;
%pris=1;

L(1) = Link ('d',d1, 'a', a1, 'alpha', 0,'offset',0);%deg2rad(18.435));
L(1).qlim = [0,pi];
L(2) = Link ('d', d2, 'a',a2, 'alpha', 0,'offset',0);%deg2rad(19));
L(2).qlim = [0,pi];


robot1 = SerialLink(L);
 q =[0 0]
    plot(robot1,q)
% robot1.base = [0 ,-11.5, 0];
% count =0;
% R = rand(5,2);
% q =[0 0];
% 
% for i = 1:5
% 
%     l=L(1).qlim;q(1)=l(1)+diff(L(1).qlim)*R(i,1);
%     l=L(2).qlim;q(2)=l(1)+diff(L(2).qlim)*R(i,2);
%     T = fkine(robot1,q);
%     q;
%     pos=T.t';
%     xlim([-30 30])
%     ylim([-30 30])
%     
%     plot(robot1,q)
%     fprintf(fid,'%f %f\n',q(1),q(2));
% end
% 
% fclose(fid);
% 
% %{
% para =[d1,d2,a1,a2];
% 
% disp('original parameters')
% para
% 
% 
% para(1)=1.5;
% para(2)=.3;
% para(3)=10.2;
% para(4)=9.5;

disp('disturbed parameters')
para

para(1)=1.5;
para(2)=.3;
para(3)=10.2;
para(4)=9.5;

para =[d1,d2,a1,a2];
%NEwfunction(para)

%fminsearch(@(para) NEwfunction,para)
%fminsearch('NEwfunction',para)

%}








%{
%fid = fopen('data.dat','w');

X_Y_Z =T.t

[thea1,thea2,x,y,z] =textread('data.txt');


X1 =x(1)
Y1=y(1)
Z1=z(1)
x_y_z = [x1 y1 z1]
%X = X_Y_Z(1);
%Y= X_Y_Z(2);
%Z= X_Y_Z(3);


error_function = x_y_z-X_Y_Z;

s = sqrt((x-X).^2 + (y-Y).^2);

%}



%{
for i=1:20

    %s= fgets(fid);
    s = data;
    %test= sscanf(s, '%f %f %f %f %f %f %f %f %f %f');

    q = data([3,3]);
    pos =data(8:10);
    T= fkine(robot1,q);
    newpos = T(1:3,4);
    
    each_err = sqrt(sum((pos-newpos).^2));
    err=err + each_err;
end
plot(robot1 , [0 0 0 ]);
fclose(fid);
%}
%{
para(4)=11;
para(3)=36;
para(5)=40;
para(6)=3; 
fminsearch('exapme2',para)


R = rand(20,3);
for i =1:20

    l=L(1).qlim;q(1)=l(1)+diff(L(1).qlim)*R(i,1);
    l=L(2).qlim;q(2)=l(1)+diff(L(2).qlim)*R(i,2);
    l=L(3).qlim;q(3)=l(1)+diff(L(3).qlim)*R(i,3);
    
    T = fkine(robot1,q);
    q
    pos=[T(1,4),T(2,4),T(3,4)];
 fprintf(fid,'%f %f %f \n',q(1),q(2),q(3))
end
%}
%{

L(1) = Link ('d',2, 'a', 11, 'alpha', deg2rad(180),'offset',deg2rad(18.435));
L1.qlim = [0,pi];
L(2) = Link ('d', 0.5, 'a',10, 'alpha', deg2rad(0),'offset',deg2rad(19));
L2.qlim = [0,pi];
L(3) = Link ('d', 10, 'a', 0, 'alpha', 0,'offset',0);
L3.qlim = [0,pi];
R = rand(20,7);


robot1 = SerialLink(L);
robot1.base = [0 12 6];
q =[0 0 0];
T=robot1.fkine(q);
robot1.plot(q)

% base offset x =12 and z= 6 cm
%}