//name:Vishal B M
//function:euclidfactors
//input:a,b.The interpolation and decimation factors
//output:l,m.The euclid factors computed.
function [l,m]=euclidfactors(a,b)
    [lhs,rhs]=argn(0);
    if rhs~=2 then
        disp("invalid number of inputs");
    end//check if the number of inputs are 2
    if (a==0 | b==0)  then
        disp("invalid inputs");
    end//check if the inputs are nonzero
    if gcd([a,b])~=1 then
        disp("a and b should be relatively prime")
    end//check if the factors are relatively prime
    
    l=0;

    m=0;
    //the following loop will calculate the integers numbers required to solve the equation lo * L - mo * m=-1.
    for l=1:(a*b)
        if (pmodulo(a*l+1,b)==0) then
            m=(a*l+1)/b;
            break;
        end,
    end
endfunction
