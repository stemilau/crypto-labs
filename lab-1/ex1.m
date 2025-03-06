clearvars
clc
close all

q = 26;
k = -6;

msg = 'LABCRIPTO';

offset =  double('A');
m = double(msg)-offset;

c = mod(m + k,q); 
cripto = char(c+offset);

c = double(cripto)-offset;
d = mod(c-k,q);
msg_decript = char(d+offset);

test = isequal(msg,msg_decript);