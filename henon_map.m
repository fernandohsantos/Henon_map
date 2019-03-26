function [coordenadas] = henon_map(parametros,sinal)

%x(1) - eixo 1
%x(2) - eixo 2

coordenadas(1) = parametros(1) - sinal(1)^2 + parametros(2)*sinal(2);
coordenadas(2) = sinal(1);


