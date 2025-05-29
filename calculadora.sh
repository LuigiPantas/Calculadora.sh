#!/bin/bash
# Dando as boas vindas ao usuário
echo 'Seja muito bem vindo a calculadora do Luigi'

#Perguntando o nome do usuário e declarando a variável nome
echo 'digite o seu nome:' 
read nome

echo "muito prazer em te conhecer, $nome!"

# Mostrando as operações possíveis
echo "Operações possiveis +, -, *, %"

# Perguntando ao usuário qual operação ele deseja usar
echo 'digite a operação que deseja usar:'
read operacao

# Declarando a variável num1
echo 'escolha um numero:'
read num1

# Declarando a variável num2
echo 'escolha outro numero:'
read num2

# Mostrando qual foram os numeros e operações escolhidos
echo "a escolha da operação é: $num1 $operacao $num2!!"

# Estrutura de decisão que executa operação com base no operador escolhido
if [ "$operacao" == "+" ]; then
    resultado=$((num1 + num2))
elif [ "$operacao" == "-" ]; then
    resultado=$((num1 - num2))
elif [ "$operacao" == "*" ]; then
    resultado=$((num1 * num2))
elif [ "$operacao" == "%" ]; then
    resultado=$((num1 % num2))
else
    echo "Operação inválida!"
    exit 1
fi

echo "Resultado: $resultado" # Mostrando o resultado ao usuário

# Perguntando ao usuário se deseja salvar esta operação
echo 'Deseja salvar esta operação ??'
echo "[y] yes  [n]no"
read decisao

# Salvando o nome do arquivo
if [ "$decisao" == "y" ]; then
    echo 'Digite o nome do arquivo para salvar (ex: joao, luigi, carlos, etc):'
    read nome_arquivo
# Criando a rota do arquivo, definindo a variável caminho
    mkdir -p /home/luigi/modulo1/linux/resultado_calc
    caminho="/home/luigi/modulo1/linux/resultado_calc/historico_${nome_arquivo}.txt"
# Mostrando todos os resultados até o exato momento, mostrando o rota para achar o arquivo
    echo "$num1 $operacao $num2 = $resultado" >> "$caminho"
    echo "Operação salva em: $caminho"
# Se a decisão for n, vai mostrar a decisão e sair
elif [ "$decisao" == "n" ]; then
     echo "sua escolha foi: $decisao!"
     exit 2
# se a decisão não for n ou y vai dar opção invalida
else
    echo "Opção inválida!"
    exit 3
fi
