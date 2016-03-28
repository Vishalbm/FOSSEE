//name:Vishal B M
//function:iirnotch
//inputs:w0,b,a;w0=frequency to be cutout,b =bandwidth at 'a' db.
//outputs:numerator and denominator array of coefficients.
function [N,D]=iirnotch(w0,b,a)
    [lhs,rhs]=argn(0);
    c=0;
    if(rhs~=3) then//checks for correct number of inputs
        error("unexpected number of inputs");
    end
    if(w0<=0 | w0>=1 | b<0 | b>1) then//checks for a valid input
        error("w0  and b should be between 0 and 1")
    end
    if ~isnum(a) & ~and(size(a))==1 then//check if the input is of correct type
        error("wrong type of input");
    c=abs(a); //take only positive numbers
      
    b = b*%pi;//convert b and w0 to their actual values
    w0 = w0*%pi;

    d   = 10^(-c/20);//applying standard method 
    e = (sqrt(1-d.^2)/d);
    e=e*tan(b/2);
    f = 1/(1+e);

    N  = f*[1 -2*cos(w0) 1];
    D  = [1 -2*f*cos(w0) (2*f-1)];   
                         
        
endfunction

