figure(101);
subplot(2,1,1);
show(t,xd,'k--');
show(t,xm);
show(t,xs,'-','', 'Displacement (m)');
subplot(2,1,2);
show(t,abs(xm - xs),'-','Time (s)', 'Error signal (m)');

figure(102);
subplot(2,1,1);
show(t,Fh);
show(t,Fe,'-','', 'Force (N)');
subplot(2,1,2);
show(t,abs(Fh - Fe),'-','Time (s)', 'Percept. error(N)');