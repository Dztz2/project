function [result] = chebint(y, a, b, k)
    % Compute weights
    T = cos((pi / k) * (0:k-1)' * (1:k));
    T(1,:) = T(1,:) / 2;
    w = (b - a) / (k * T');

    % Compute integral
    result = (b - a) / (2 * k) * sum(y .* w);
end