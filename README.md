# FOSSEE
DSP codes for iirnotch,euclidfactors and ismaxphase
1.executing iirnotch.sce:Copy to the scinotes->execute->save and execute->go to the console.
let w0=0.4,b=0.01,a=-3
answer in scilab:
D  =
 
    1.  - 0.6084976    0.9691396  
 N  =
 
    0.9845698  - 0.6084976    0.9845698 

2.executing euclidfactors:Follow above steps for bringing program into console.
let a=4,b=3;
answer in scilab:
 m  =
 
    3.  
 l  =
 
    2.

3.executing ismaxphase:Follow above steps for bringing program into console.Gives true or false.
let b=[1,-5,6];
answer in scilab:
-->y=ismaxphase([1,-5,6])
 y  =
 
  T

*euclidfactors is different from matlab program since structure for such an input is not yet present in scilab.It takes 2 numbers as inputs instead of a structure.
