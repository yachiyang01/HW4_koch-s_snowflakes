clc; clear all; close all;

input=load('Points.txt');
% (a)
for i=1:49
    if(i==0)
        pt(1,:)=input(i,:);
        pt(2,:)=input(i+1,:);
        pt(3,:)=input(i+2,:);
        pt(4,:)=input(i+3,:);
        [X,Y]=bezier(pt(1,1),pt(1,2),pt(2,1),pt(2,2),pt(3,1),pt(3,2),pt(4,1),pt(4,2));

        plot(X,Y);
        hold on;
        axis square
    axis off
    elseif((mod((i-1),3)==0) && i<=46)
        pt(1,:)=input(i,:);
        pt(2,:)=input(i+1,:);
        pt(3,:)=input(i+2,:);
        pt(4,:)=input(i+3,:);
        [X,Y]=bezier(pt(1,1),pt(1,2),pt(2,1),pt(2,2),pt(3,1),pt(3,2),pt(4,1),pt(4,2));

        plot(X,Y);
        hold on;
        axis square
        axis off
    end
end
hold off
saveas(gcf,'original.jpg')

