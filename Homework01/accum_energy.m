function y=accum_energy(x)
    y = zeros(1, length(x));
    for i = 1:length(x)
        y(i) = sum(abs(x(1:i)).^2);
    end
end