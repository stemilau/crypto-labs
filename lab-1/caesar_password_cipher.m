clear
clc


%###########CIFRARE CAESAR PAROLA################
 
  
%alfabet
ALPH = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', ...
'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];


ALPH_P = ['V', 'W', 'X', 'Y', 'Z', 'P', 'A', 'R', 'O', 'L', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',...
          'M', 'N', 'Q', 'S', 'T', 'U'];
  

 
M = 'LABORATORULDECRIPTOGRAFIE' 

ind = [];
%indici
for i = 1:length(M)
        ind(i) = find(ALPH == M(i)); % assign an index to every character in phrase based on pt
end
  
  
%#substitutie
C = ALPH_P(ind) 
  
  
%###################DESCIFRARE CAESAR PAROLA################

nd2 = [];
%indici
for i = 1:length(C)
      ind2(i) = find(ALPH_P == C(i)); % assign an index to every character in phrase based on pt
end

%substitutie
D = ALPH(ind2) 