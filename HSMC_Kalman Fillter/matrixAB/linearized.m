syms x y z phi theta psi xd yd zd phid thetad psid phi theta psi U1 U2 U3 U4
cphi=cos(phi);
sphi=sin(phi);
ctheta=cos(theta);
stheta=sin(theta);
cpsi=cos(psi);
spsi=sin(psi);
syms m g Kdx Kdy Kdz Ixx Iyy Izz
fx=-Kdx*xd/m;
fy=-Kdy*yd/m;
fz=(-Kdz*zd-m*g)/m;
bx=1/m*(sin(psi)*sin(phi)+cos(psi)*sin(theta)*cos(phi))*U1;
by=1/m*(sin(psi)*sin(theta)*cos(phi)-cos(psi)*sin(phi))*U1;
bz=1/m*(cos(theta)*cos(phi))*U1;
fphi=1/Ixx*(psid*thetad*(Iyy-Izz));
ftheta=1/Iyy*(psid*phid*(Izz-Ixx));
fpsi=1/Izz*(phid*thetad*(Ixx-Iyy));
bphi=U2/Ixx;
btheta=U3/Iyy;
bpsi=U4/Izz;

f(1)=xd;
f(2)=yd;
f(3)=zd;
f(4)=phid;
f(5)=thetad;
f(6)=psid;
f(7)=fx;
f(8)=fy;
f(9)=fz;
f(10)=fphi;
f(11)=ftheta;
f(12)=fpsi;

b1=0;
b2=0;
b3=0;
b4=0;
b5=0;
b6=0;
b7=bx;
b8=by;
b9=bz;
b10=bphi;
b11=btheta;
b12=bpsi;

for i=1:1:12
A(i,:)=[diff(f(i),x),diff(f(i),y),diff(f(i),z),diff(f(i),phi),diff(f(i),theta),diff(f(i),psi),diff(f(i),xd),diff(f(i),yd),diff(f(i),zd),diff(f(i),phid),diff(f(i),thetad),diff(f(i),psid)];
end

B(:,:)=[diff(b1,U1),diff(b1,U2),diff(b1,U3),diff(b1,U4);
diff(b2,U1),diff(b2,U2),diff(b2,U3),diff(b2,U4);
diff(b3,U1),diff(b3,U2),diff(b3,U3),diff(b3,U4);
diff(b4,U1),diff(b4,U2),diff(b4,U3),diff(b4,U4);
diff(b5,U1),diff(b5,U2),diff(b5,U3),diff(b5,U4);
diff(b6,U1),diff(b6,U2),diff(b6,U3),diff(b6,U4);
diff(b7,U1),diff(b7,U2),diff(b7,U3),diff(b7,U4);
diff(b8,U1),diff(b8,U2),diff(b8,U3),diff(b8,U4);
diff(b9,U1),diff(b9,U2),diff(b9,U3),diff(b9,U4);
diff(b10,U1),diff(b10,U2),diff(b10,U3),diff(b10,U4);
diff(b11,U1),diff(b11,U2),diff(b11,U3),diff(b11,U4);
diff(b12,U1),diff(b12,U2),diff(b12,U3),diff(b12,U4)];