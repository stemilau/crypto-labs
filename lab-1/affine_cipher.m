clear
clc

%###################CIFRARE AFINA################
%cheia
a = 3;
b =5;
inv_a = 9;

%E = (am +b ) mod 26
%D =  inv_a(c - b) mod 26


M = 'LABORATORULDECRIPTOGRAFIE' 

%text clar numeric
M_NR = M-'A';

%criptograma numerica
C_NR = mod(a* M_NR  + b, 26 ); 

%#criptograma
C = char(C_NR + 'A')


%###################Descifrare AFINA################

C_NR = C - 'A';
D_NR = mod(inv_a*(C_NR - b + 26), 26) ;
D = char(D_NR + 'A')

D_NR2 = mod(inv_a*C_NR + 7, 26) ;
D2 = char(D_NR2 + 'A')
