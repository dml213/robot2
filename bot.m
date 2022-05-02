%机械臂  theta d a alpha
L1 = Link([0 112 0 pi/2]);L1.qlim = [-2*pi, 2*pi];
L2 = Link([0 0 243 0]);L2.qlim = [-2*pi, 2*pi];
L3 = Link([0 0 243 0]);L3.qlim = [-2*pi, 2*pi];
L4 = Link([0 112 0 pi/2]);L4.qlim = [-2*pi, 2*pi];
L5 = Link([0 83.4 0 pi/2]);L5.qlim = [-2*pi, 2*pi];
L6 = Link([0 83.4 0 0]);L6.qlim = [-2*pi, 2*pi];
UR3 = SerialLink([L1 L2 L3 L4 L5 L6],'name','UR3');
UR3.display();
view(3);
hold on;


%正运动学
syms t1 t2 t3 t4 t5 t6;
q = [t1 t2 t3 t4 t5 t6];
T06 = UR3.fkine(q)
%逆运动学
syms nx ox ax px ny oy ay py nz oz az pz;
T = [nx ox ax px ; ny oy ay py ; nz oz az pz ; 0 0 0 1];
%left = inv(L1.A(t1)) .* T
%right = L1.A(t1) .* T_06


%绘制
q0 = [0,0,0,0,0,0];
UR3.plot(q0,'tilesize',10);
hold on;
[x, y, z] = sphere();
xx = 850; yy = 0; zz = 0; rr=400;
surf(rr*x+xx,rr*y+yy,rr*z+zz);
hold on;


%第一画?
theta1 = tpoly(80,100,50)';
phi1 = 170*ones(1,50);
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on

%第二画?
theta1 = tpoly(90,100,20)';
phi1 = 160*ones(1,20);
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on

%第三画?
theta3 = 100*ones(1,20);
phi3 = tpoly(160,180,20)';
x3 = rr * sin(theta3*pi/180).*cos(phi3*pi/180) + xx;
y3 = rr * sin(theta3*pi/180).*sin(phi3*pi/180) + yy;
z3 = rr * cos(theta3*pi/180) + zz;
plot3(x3,y3,z3)
hold on
I1 = UR3.ikine(transl([x3;y3;z3]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on

%第四画
theta1 = tpoly(100,90,20)';
phi1 = 180*ones(1,20);
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on

%第一画?
theta1 = 90*ones(1,50);
phi1 = tpoly(190,210,50)';
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on

%第二画?
theta1 = tpoly(80,100,50)';
phi1 = tpoly(200,190,50)';
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on
%第三画?
theta1 = tpoly(90,100,50)';
phi1 = tpoly(200,210,50)';
x1 = rr * sin(theta1*pi/180).*cos(phi1*pi/180) + xx;
y1 = rr * sin(theta1*pi/180).*sin(phi1*pi/180) + yy;
z1 = rr * cos(theta1*pi/180) + zz;
plot3(x1,y1,z1)
hold on
I1 = UR3.ikine(transl([x1;y1;z1]'),'mask',[1 1 1 0 0 0]);
UR3.plot(I1);
hold on