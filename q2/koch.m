function koch(p,q,n)
if (n==0)
    plot([p(1);q(1)], [p(2);q(2)], 'LineWidth',4,'Color','black');
    hold on;
else
    c = q-p;
    c = [-c(2); c(1)];
    c = (p+q)/2 + c/sqrt(12);   % 左邊1/3
    a = (2*p+q)/3;              %  p 到 q 的 1/3向量 a
    b = (p+2*q)/3;              % p 到 q 的 2/3 向量 b
    koch(p, a, n-1);            % pa 線段做下一回合
    koch(a, c, n-1);            % ac 線段做下一回合
    koch(c, b, n-1);            % cb 線段做下一回合
    koch(b, q, n-1);            % bq 線段做下一回合
end
    
    
end