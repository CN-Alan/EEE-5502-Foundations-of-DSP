% function y=running_avg(x,M)
%     %Ensure input is what it should be
%     if mod(M,1)~=0; error('M must be a integer.'); end
%     if M<=0; error('M must be a positive integer.'); end
%
%     y1 = zeros(1, length(x)+M);
%     for i = 1:M
%     b = [zeros(1, i), x, zeros(1, M-i)];
%     y1 = y1 + b;
%     end
%
%     y = (1/M) * y1(1:length(x));
% end




function y=running_avg(x,M)
%Ensure input is what it should be
if mod(M,1)~=0; error('M must be a integer.'); end
if M<=0; error('M must be a positive integer.'); end

y = zeros(size(x));

for i = 1:M
    y = y + delay(x, i-1);
end
y = y/M;

end
