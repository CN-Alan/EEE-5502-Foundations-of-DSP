function y=reverb(x,M,A)
    %Ensure input is what it should be
    if mod(M,1)~=0; error('M must be a integer.'); end
    if M<=0; error('M must be a positive integer.'); end
    
    i = 0;
    y = 0;
    while i <= fix(length(x)/M)
        y1 = (A.^i).*delay(x, i.*M);
        y = y + y1;
        i = i + 1;
    end
    

end