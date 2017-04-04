function Y = shift_row(A,i);

%define o sentido (1 pra direita e -1 para a esquerda);
%i  sentido
%A  vetor

%transforma em decimal
A_dec = zeros(16,1);
for j = 0:15
  A_dec(j+1) = hex2dec(strcat(A(2*j+1),A(2*j+2)))
end
% transforma em matriz 4x4 
B = reshape(A_dec,[4,4]);

%faz o shift circular para cada linha
Y0 = B(1,:);
Y1 = circshift(B(2,:),[0 -1*i]);
Y2 = circshift(B(3,:),[0 -2*i]);
Y3 = circshift(B(4,:),[0 -3*i]);

%cocatena novamente para uma matriz
Y = [Y0;Y1;Y2;Y3]

%saida em decimal