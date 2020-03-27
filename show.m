function show(x,y,style,varargin)
if nargin < 3
 style = '-';
end
plot(x,y,style,'linewidth',1);
hold on;
grid on;
%axis equal;
if nargin > 3
xlabel(varargin{1},'fontsize',12,'interpreter','latex');
end
if nargin > 4
ylabel(varargin{2},'fontsize',12,'interpreter','latex');
end
end

