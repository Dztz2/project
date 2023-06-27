function [B] = upward(D,E)
delta=1-E(2)*D(3);
B(1)=(1-E(1))*(D(1)-D(3)*E(2))/delta+E(1);
B(2)=E(2)*(1-D(4))*(1-D(1))/delta+D(2);
B(3)=D(3)*(1-E(4))*(1-E(1))/delta+E(3);
B(4)=(1-D(4))*(E(4)-D(3)*E(2))/delta+D(4);
B(5)=(1-E(1))*D(5)/delta+E(5)+(E(1)-1)*D(3)*E(6)/delta;
B(6)=(1-D(4))*E(6)/delta+D(6)+(D(4)-1)*E(2)*D(5)/delta;
end