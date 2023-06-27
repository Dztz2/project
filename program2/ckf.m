function [B] = ckf(k)
B=inv(ckb(k));
end