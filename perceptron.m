x = [1, 1
     2, 3
     3, 1
     3, 5
     4, 3
     5, 2];
y = [1, 1, 1,-1,-1,-1];
rate = 1;
iter = 50;
[h,l]=size(x);
w=zeros(1,l);
b = 0;
c=1;
zz=0;
while c
    zz=zz+1;
    k=unidrnd(h);
    if y(k)*(w*x(k,:)'+b)<=0
        w =w+rate*y(k)*x(k,:);
        b=b+rate*y(k);
    else
        
        if y .* (w*x'+b)>0
            c=0;
        end
    end
    x1=0:0.1:10;
    if w(2) == 0
        x1=b/-w(1);
        y2=0:0.1:3;
    else
        y2=(w(1)*x1+b)./(-w(2));
    end
    figure(1)
    scatter(x(1:3,1),x(1:3,2),'filled');
    scatter(x(4:6,1),x(4:6,2),'filled','d');
    hold on
    plot(x1,y2);
    
    
end
x1=0:0.1:10;
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
     scatter(x(1:3,1),x(1:3,2),'filled','red');
    scatter(x(4:6,1),x(4:6,2),'filled','d','blue');



