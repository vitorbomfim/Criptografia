function Y = shift_row(A,i);

%define o sentido (1 pra direita e -1 para a esquerda);
%i = 1; parametro

%cria o vetor
%A = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16]; parametro

% transforma em matriz 4x4
B = reshape(A,[4,4]);

%faz o shift circular para cada linha
Y0 = B(1,:);
Y1 = circshift(B(2,:),[0 -1*i]);
Y2 = circshift(B(3,:),[0 -2*i]);
Y3 = circshift(B(4,:),[0 -3*i]);

%cocatena novamente para uma matriz
Y = [Y0;Y1;Y2;Y3]