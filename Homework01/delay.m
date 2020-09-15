% function y=delay(x,M)
%     %Ensure input is what it should be
%     if mod(M,1)~=0; error('M must be a integer.'); end
%     
%     
%     if M < 0
%         y1 = [x, zeros(1, -M)]; 
%         y = y1(end - length(x) + 1: end);
%     end
%     
%     if M > 0
%         y1 = [zeros(1, M), x]; 
%         y = y1(1:length(x));
%     end
%     
%     
% end



function y=delay(x,M)
    %Ensure input is what it should be
 l = length(x);
 yy = zeros(size(x));
 for i = 1:l
     if i - M <= 0
         yy(i) = 0;
     end
     if i - M > 0 && i - M <= l
        yy(i) = x(i-M);
     end
 end
 
 if M >= 0
     y =yy(1:l);
 else
     y = [yy, zeros(1, l-length(yy))];
 end
    
end

