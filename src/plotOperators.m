function plotOperators(t,Tm,Ts)

figure(1010);
cla;

M1 = Gmodel('bi_opt_arm_r.stl');
M1.set('Shading','Face');
M1.Texture = colorshift(prusa,1.0);
M1.bake();
M1.render();
M2 = Gmodel('bi_opt_base_r.stl');
M2.set('Shading','Face');
M2.Texture = grey;
M2.bake();
M2.render();

M1 = Blender(M1,'Rotate',{'x',90});
M2 = Blender(M2,'Rotate',{'x',90});
M2 = Blender(M2,'Fix');
M1 = Blender(M1,'Fix');

S1 = Gmodel('bi_opt_arm_r.stl');
S1.set('Shading','Face');
S1.Texture = colorshift(prusa,0.15);
S1.bake();
S1.render();
S2 = Gmodel('bi_opt_base_r.stl');
S2.set('Shading','Face');
S2.Texture = grey;
S2.bake();
S2.render();

S1 = Blender(S1,'Rotate',{'x',90});
S2 = Blender(S2,'Rotate',{'x',90});
S1 = Blender(S1,'Translate',{'y',100});
S2 = Blender(S2,'Translate',{'y',100});
S2 = Blender(S2,'Fix');
S1 = Blender(S1,'Fix');

axis([-80 80 -20 140 -80 80]);
drawnow;
view(40,10);

S1.update();
S2.update();
M1.update();
M2.update();

if length(t) > 2, FPS = round((1/12)/(mean(diff(t))));
else, FPS = 1;
end

for ii = 1:FPS:length(Tm)
plotMaster(M1,Tm(ii)*(180/pi));
plotSlave(S1,Ts(ii)*(180/pi));
axis([-80 80 -20 140 -80 80]);
drawnow;
end

end


function plotMaster(obj1,X)

obj1 = Blender(obj1,'Restore');
obj1 = Blender(obj1,'Rotate',{'y',-X});
obj1.updateNode();

end

function plotSlave(obj1,X)

obj1 = Blender(obj1,'Restore');
obj1 = Blender(obj1,'Rotate',{'y',-X});
obj1.updateNode();

end