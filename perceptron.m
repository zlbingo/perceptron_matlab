x = [3, 3
     4, 3
     1, 1
     -1,1];
y = [1, -1, -1,1];
rate = 1;
iter = 50;
[h,l]=size(x);
w=zeros(1,l);
b = 0;
c=1;
while c
    k=unidrnd(h);
    %随机生成1-h的整数
    if y(k)*(w*x(k,:)'+b)<=0
        w =w+rate*y(k)*x(k,:);
        b=b+rate*y(k);
    else
        
        if y.*(w*x'+b)>0
            c=0;
        end
    end
    x1=0:0.1:3;
    if w(2) == 0
        x1=b/-w(1);
        y2=0:0.1:3;
    else
        y2=(w(1)*x1+b)./(-w(2));
    end
    figure(1)
    plot(x1,y2)
    hold on
    scatter(x(:,1),x(:,2));
    
end
x1=0:0.1:3;
    if w(2) == 0
        x1=b/-w(1);
        y2=0:0.1:3;
        figure(2)
        line([x1,x1],[0,100])
    else
        y2=(w(1)*x1+b)./(-w(2));
        figure(2)
        plot(x1,y2)
    end
     hold on
     scatter(x(:,1),x(:,2));

