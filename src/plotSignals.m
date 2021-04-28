figure(101);
subplot(2,1,1);
show(t,xd*100,'k--');
show(t,xm*100);
show(t,xs*100,'-','', '$x_m$, $x_s$ (mm)');
legend('$x_m$','$x_s$','interpreter','latex')
subplot(2,1,2);
show(t,abs(xm - xs)*100,'-','Time (s)', '$x_m - x_s$ (mm)');

figure(102);
subplot(2,1,1);
show(t,xd*100,'k--');
show(t,Fh);
show(t,Fe,'-','', '$F_h$, $F_e$ (N)');
legend('ref','$F_h$','$F_e$','interpreter','latex')
subplot(2,1,2);
show(t,abs(Fh - Fe),'-','Time (s)', '$F_h - F_e$ (N)');