function state = mix_column(A)
%entrada A em decimal 4x4
%saida state em decimal 4x4

%matriz multiplicativa
M = [2 3 1 1;
     1 2 3 1;
     1 1 2 3;
     3 1 1 2];
        
%matriz de entrada em decimal
A = [212 212 212 212;
     191 191 191 191;
     93 93 93 93;
     48 48 48 48];    

     

%multiplica
aux = [];
state = [];

%3 fors para preencher uma matriz novamente após fazer a multiplicação e xor de cada linha por cada coluna
for k = 1:length(M)
  for j = 1:length(M)
    for i = 1:length(M)
    A(i,j)
    M(j,i)
    aux(i) = mul_t(A(i,j),M(j,i)); %utiliza da função que multiplica pela tabela
    end
    aux2 = bitxor(aux(1),aux(2));
    aux2 = bitxor(aux2,aux(3));
    state(j,k) = bitxor(aux2,aux(4))  %faz o xor bit a bit de todos os aux e armazena em uma posição da nova matriz
  end
end
