dados = [
    2.44 28.11;
    2.43 28.35;
    2.42 28.70;
    2.41 28.85;
    2.40 29.18;
    2.39 29.33;
    2.39 29.41;
    2.38 29.75;
    2.37 29.98;
    2.36 30.13;
    2.35 30.29;
    2.35 30.56;
    2.34 30.73;
    2.33 30.88;
    2.32 31.05;
    2.32 31.39;
    2.31 31.57;
    2.30 31.74;
    2.30 31.91;
    2.29 32.08;
    2.28 32.25;
    2.27 32.42;
    2.27 32.59;
    2.26 32.76;
    2.25 32.93;
    2.25 33.10;
    2.24 33.27;
    2.23 33.44;
    2.22 33.61;
    2.22 33.78;
    2.21 33.95;
    2.20 34.12;
    2.19 34.29;
    2.19 34.46;
    2.18 34.63;
    2.17 34.80;
    2.17 34.88;
    2.16 34.91;
    2.15 34.95;
    2.14 35.03;
];
tensao = dados(:,1);    % coluna de tensão
temp_real = dados(:,2); % coluna de temperatura real

% -------- Regressão Linear por Mínimos Quadrados --------
% Ajusta: temp = a*tensão + b
X = [tensao ones(size(tensao))];
theta = (X' * X)\(X' * temp_real); % theta(1)=a, theta(2)=b 
temp_estimada = X * theta;

% -------- Cálculo do Coeficiente de Determinação (R²) --------
SStot = sum((temp_real - mean(temp_real)).^2);      % Soma dos Quadrados Total
SSres = sum((temp_real - temp_estimada).^2);        % Soma dos Quadrados dos Resíduos
R2 = 1 - SSres / SStot;                             % R²

% -------- Visualização dos dados e da reta ajustada --------
figure;
plot(tensao, temp_real, 'bo', 'MarkerSize', 8, 'DisplayName','Dados Originais');
hold on;
plot(tensao, temp_estimada, 'r-', 'LineWidth', 2, 'DisplayName','Ajuste Linear');
legend('show');
xlabel('Tensão (V)');
ylabel('Temperatura (ºC)');
title('Regressão Linear - Temperatura vs. Tensão');
text(min(tensao), max(temp_real), sprintf('y = %.4fx + %.4f\nR² = %.4f', theta(1), theta(2), R2),'FontSize',12);

% -------- Exibição dos coeficientes no console --------
fprintf('Equação da regressão: Temp = %.4f * Tensao + %.4f\n', theta(1), theta(2));
fprintf('R² do ajuste linear: %.4f\n', R2);
