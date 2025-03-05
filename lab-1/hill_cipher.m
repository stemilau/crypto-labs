clear
clc


K = [7 20 ; 3 5];
inv_K = [5 6 ; 23 7];

I2 = mod(K*inv_K, 26);

M = 'LABORATORULDECRIPTOGRAFIEQ' 
l = length(M);

%text clar numeric
M_NR = M-'A';


C_NR_2d = zeros(floor(l/2),2);

%cifrare HILL
for i=1:l/2
  C_NR_2d(i,:) = mod(M_NR(2*i-1: 2*i) * K, 26);
end

C_NR = reshape(C_NR_2d', [1, l]);
C = char(C_NR + 'A')


%descifrare HILL

D_NR_2d =  zeros(floor(l/2),2);

for i=1:l/2
  D_NR_2d(i,:) = mod(C_NR(2*i-1: 2*i) * inv_K, 26);
end


D_NR = reshape(D_NR_2d', [1, l]);
D = char(D_NR + 'A');
