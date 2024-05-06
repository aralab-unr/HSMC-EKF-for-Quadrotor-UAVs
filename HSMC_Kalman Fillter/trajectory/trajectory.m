function trajec=trajectory(t)
%trajec=[12;12;12;0.5];
trajec=[sin(pi*t/5);-1+cos(pi*t/5);t/2;0.5];
%if t<10
%    trajec=[3;3;3;0.2];
%end
%if 10<= t && t <20
%    trajec=[1.5;3;3;0.2];
%end
%if 20<= t && t <30
%    trajec=[1.5;1.5;3;0.2];
%end
%if 30<= t && t <40
%    trajec=[3;1.5;3;0.4];
%end
%if 40<= t && t <50
%    trajec=[3;3;3;0.4];
%end
%if 50<= t 
%    trajec=[3;3;0.01;0.4];
%end
end