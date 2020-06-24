function T = D_H(q,a,alpha,d,begin,limit)

T = cell(1,limit);

T{1,1} = [cos(q(1)) -cos(alpha(1))*sin(q(1)) sin(alpha(1))*sin(q(1)) a(1)*cos(q(1));...
    sin(q(1)) cos(alpha(1))*cos(q(1)) -sin(alpha(1))*cos(q(1)) a(1)*sin(q(1));...
    0 sin(alpha(1)) cos(alpha(1)) d(1);...
    0 0 0 1];

begin = begin + 2;

for i = begin:limit
    T{1,i} = T{1,i-1}*[cos(q(i)) -cos(alpha(i))*sin(q(i)) sin(alpha(i))*sin(q(i)) a(i)*cos(q(i));...
    sin(q(i)) cos(alpha(i))*cos(q(i)) -sin(alpha(i))*cos(q(i)) a(i)*sin(q(i));...
    0 sin(alpha(i)) cos(alpha(i)) d(i);...
    0 0 0 1];
end

end