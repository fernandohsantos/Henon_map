clear all; clc;
%Parâmetros das equações
a = 1.4;
b = 0.3;

%vetor com os parâmetros, para "despoluir" a entrada da função
parametros = [a;b];

%Condições iniciais
condicoesiniciais = [0.2 0.3];
sinal = condicoesiniciais';

%Número de pontos no mapa
npontos = 1000000;

%t = 1:1:npontos;
        
%Pré-aloca o vetor resultado
resultado = zeros(npontos,2);

%Cálculo - Mapa Henon
for i = 2:npontos
    resultado(i,:) = henon_map(parametros,sinal);    
    sinal = resultado(i,:);
end

%figuraa = resultado;
%figurab = resultado;
%figurac = resultado;
%figurad = resultado;

% Para indice i = 1 o resultado inicial é "pulado", após o looping
% substitui-se as condições iniciais
resultado(1,:) = condicoesiniciais;

% Plotagem das figuras

%figure(1)
%title('Mapa de Henon')
%plot(resultado(3:npontos,1),resultado(3:npontos,2),'.')
%xlabel('x')
%ylabel('y')
%grid on

figure(2)
%title('Mapa de Henon')
subplot(221)
plot(resultado(3:end,1),resultado(3:end,2),'.')
xlabel('x')
ylabel('y')
grid on

subplot(222)
plot(resultado(3:end,1),resultado(3:end,2),'.')
xlabel('x')
ylabel('y')
xlim([0.78 0.94])
ylim([0.78 0.94])
grid on

subplot(223)
plot(resultado(3:end,1),resultado(3:end,2),'.')
xlabel('x')
ylabel('y')
xlim([0.865 0.895])
ylim([0.865 0.895])
grid on

subplot(224)
plot(resultado(3:end,1),resultado(3:end,2),'.')
xlabel('x')
ylabel('y')
xlim([0.881 0.886])
ylim([0.881 0.886])
grid on
