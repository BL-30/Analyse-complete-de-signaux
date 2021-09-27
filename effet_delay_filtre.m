
function [y]=effet_delay_filtre(x,delay,g,K,Fe)
    b=[1]
    a=[1 zeros(1,delay*Fe-1) (g/K).*ones(1,K)]
    y=filter(b,a,x)