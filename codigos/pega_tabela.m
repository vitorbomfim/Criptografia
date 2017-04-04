function Y = pega_tabela(S,a)
%saida em decimal

%y = valores de s trocados na tabela a
%s tabela original
%a tabela fixa

Y = [];
for t = 0:(length(S)/2 - 1)

    i = [S(2*t+1);S(2*t+2)];
    i = hex2dec(i);
    j(1) = i(1) + 1;
    j(2) = 2.*i(2) + 1;
    A = hex2dec(a(j(1),j(2):j(2) + 1));
    Y = [Y A];
    
  
  end