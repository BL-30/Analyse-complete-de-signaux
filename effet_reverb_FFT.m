
%manip 4.7

function [y] = effet_reverb_FFT(x,h)
l1=length(x);
l2=length(h);
X=[];
H=[];
m=max(l1,l2);
if m==length(l1)
    for i= m
        if i<=length(l1)
            H=[H,h(i)]
        else
            H=[H,0]
        end
    end
end
if m==length(l2)
    for i=m
        if i<=length(l2)
            X=[X,x(i)]
        else
            X=[X,0]
        end
    end
end

y=ifft(fft(H).*fft(X));
end
