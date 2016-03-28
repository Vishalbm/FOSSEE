//name:Vishal B M
//function:ismaxphase;
//input:numerator coefficients in the standard form of the transfer function to be examined if it is a maxphase transfer function.
//output:tells whether it is a maxphase transfer function.
function y=ismaxphase(b)//taking numerator coefficients as input
    if argn(2)==0 then//checking if the input is zero
        error("invalid input");
    end
    rts=roots(b);//storing all the roots into a list
    z=0;y=0;
    //loop will store 1 for a zero outside unit circle,0 if it is inside unit circle 
    for i=1:length(rts)
        if (abs(rts(i))>1) then
            z(i)=1;
        else
            z(i)=0;
        end
        
    end
    y=and(z);//if any of the zeros are inside the unit circle,it the transfer function with numerator as 'b' wont be maxphase.
endfunction
