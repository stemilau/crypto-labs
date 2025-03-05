clear
clc


%###################CIFRARE CAESAR################
%cheia
k = 21;

%alfabet

%1
ALPH = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', ...
'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];


%2
ALPH_5 = ['V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', ...
'O', 'P', 'Q', 'R', 'S', 'T', 'U'];




%text clar
M = 'LABORATORULDECRIPTOGRAFIE' 

%indici
ind = [];
for i = 1:length(M)
    ind(i) = find(ALPH == M(i)); % assign an index to every character in phrase based on pt
end


%substitutie 
C = ALPH_5(ind) 
  
  
  
 %##################DESCIFRARE CAESAR################
 
ind2 = [];
%indici
for i = 1:length(C)
      ind2(i) = find(ALPH_5 == C(i)); % assign an index to every character in phrase based on pt
end


%substitutie 
D = ALPH(ind2) 

disp('-----------') 
