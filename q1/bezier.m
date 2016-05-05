function [X,Y]=bezier( p0x, p0y, p1x,p1y,p2x,p2y,p3x,p3y)
x=[p0x;p1x;p2x;p3x];
y=[p0y;p1y;p2y;p3y];
n=length(x);
t=linspace(0,1);
xx=0;yy=0;
for k=0:n-1
    tmp=nchoosek(n-1,k)*t.^k.*(1-t).^(n-1-k);
    xx=xx+tmp*x(k+1);
    yy=yy+tmp*y(k+1);
end
if nargout==2
    X=xx;
    Y=yy;
end
%h=plot(xx,yy);
%hold on
if nargout==1
    h=g;
end
