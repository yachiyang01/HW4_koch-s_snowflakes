function koch(p,q,n)
if (n==0)
    plot([p(1);q(1)], [p(2);q(2)], 'LineWidth',4,'Color','black');
    hold on;
else
    c = q-p;
    c = [-c(2); c(1)];
    c = (p+q)/2 + c/sqrt(12);   % ����1/3
    a = (2*p+q)/3;              %  p �� q �� 1/3�V�q a
    b = (p+2*q)/3;              % p �� q �� 2/3 �V�q b
    koch(p, a, n-1);            % pa �u�q���U�@�^�X
    koch(a, c, n-1);            % ac �u�q���U�@�^�X
    koch(c, b, n-1);            % cb �u�q���U�@�^�X
    koch(b, q, n-1);            % bq �u�q���U�@�^�X
end
    
    
end