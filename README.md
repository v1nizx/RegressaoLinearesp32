#Regressão Linear: Análise da Relação entre Tensão e Temperatura
Este repositório contém um script em MATLAB / Octave que realiza uma análise de regressão linear para modelar a relação entre os valores de tensão (V) e temperatura (°C) a partir de um conjunto de dados.

O objetivo principal é encontrar a melhor reta de ajuste que descreve como a temperatura varia em função da tensão, utilizando o Método dos Mínimos Quadrados.

📜 Descrição do Código
O script regressao_linear.m (ou o nome que você preferir) executa os seguintes passos:

Carregamento de Dados: Define uma matriz dados com duas colunas, onde a primeira representa a tensão e a segunda, a temperatura.

Regressão Linear: Calcula os coeficientes a (inclinação) e b (intercepto) da reta de regressão, que segue a equação:

Temperatura=a⋅Tens 
a
˜
 o+b
$$$$

Cálculo de R²: Determina o Coeficiente de Determinação (R²), uma medida estatística que indica o quão bem a reta de regressão se ajusta aos dados. Um valor próximo de 1 significa um ajuste quase perfeito.

Visualização Gráfica: Gera um gráfico de dispersão com os dados originais e plota a reta de regressão sobre eles, facilitando a visualização do ajuste.

Exibição dos Resultados: Imprime no console a equação da reta e o valor de R², e também os exibe no gráfico gerado.

🚀 Como Usar
Pré-requisitos: Tenha o MATLAB ou GNU Octave instalado em seu computador.

Execute o Script:

Salve o código em um arquivo com a extensão .m (por exemplo, analise_temperatura.m).

Abra o MATLAB ou Octave.

Navegue até o diretório onde você salvou o arquivo.

Digite o nome do arquivo no console e pressione Enter para executá-lo.

📊 Saídas Esperadas
Ao executar o script, você obterá duas saídas principais:

1. Saída no Console
O console exibirá a equação da reta ajustada e o coeficiente de determinação (R²). Para os dados fornecidos, a saída será:

Equação da regressão: Temp = -20.0805 * Tensao + 77.2183
R² do ajuste linear: 0.9984
2. Gráfico de Regressão
Uma janela de figura será aberta, mostrando o gráfico com os pontos de dados originais em azul e a linha de regressão em vermelho. A equação e o R² também estarão anotados no gráfico.

🛠️ Modificando os Dados
Para usar seus próprios dados, simplesmente edite a matriz dados no início do script, mantendo o formato de duas colunas: a primeira para a variável independente (eixo X, neste caso, a tensão) e a segunda para a variável dependente (eixo Y, a temperatura).

Matlab

% Substitua com seus próprios dados
dados = [
    valor_x1 valor_y1;
    valor_x2 valor_y2;
    valor_x3 valor_y3;
    % ... e assim por diante
];
