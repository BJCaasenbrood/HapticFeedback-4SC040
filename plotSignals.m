figure(101);
subplot(2,1,1);
show(t,xd,'k--');
show(t,xm);
show(t,xs);
subplot(2,1,2);
show(t,abs(xm - xs));

figure(102);
subplot(2,1,1);
show(t,Fh);
show(t,Fe);
subplot(2,1,2);
show(t,abs(Fh - Fe));