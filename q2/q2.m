clc; clear all; close all;

%三點分別做koch
p=[50;150];
q=[450;150];
r=[250; 150+200*sqrt(3)];
koch(q,p,5)
koch(p,r,5)
koch(r,q,5)
hold off

axis square
axis off
