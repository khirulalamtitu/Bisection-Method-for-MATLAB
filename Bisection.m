%@Using  bisection Locate the root of a equation
%@author Md  Khairul  Alam Titu
%@23may2016.
f=@(x) x^10-1;%put your desire equation
xl=0;
xu=1.3;
fl=f(xl);
fu=f(xu);

if fl*fu >0
disp('Ans Not Convergence');
end
if fl*fu < 0
      fl=f(xl);
      fu=f(xu);
       disp(' Iteration    xl   xu     xr     Ea(%)   Et(%)'); %Percent relative error(Ea),true percent relative error(Et)
       xr=(xl+xu)/2;
       
    for k=1:5
       xr=(xl+xu)/2;
       fr=f(xr);
       xrnew=xr;
       xrold=xl;
       ea=abs((xrnew-xrold)/xrnew)*100;
       et=abs((1-xr)/1)*100;
       [k xl xu  xr ea et]   %itaration ,xl,xu,xr,ea et
       if fl*fr<0
           xu=xr;
       else
           xl=xr;
       end
  
    end
        end


