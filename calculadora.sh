#!/bin/bash
echo 'Seja muito bem vindo a calculadora da EBAC'

echo 'digite o seu nome:' 
read nome

echo "muito praze em te conhecer, $nome!"


echo "Operações possiveis +, -, *, %"

echo 'digite a operação que deseja usar:'
read operacao


echo 'escolha um numero:'
read num1


echo 'escolha outro numero:'
read num2

echo "a escolha da operação é: $num1 $operacao $num2!!"


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

echo "Resultado: $resultado"

echo 'Deseja salavar esta operação ??'
echo "[y] yes  [n]no"
read decisao

if [ "$decisao" == "y" ]; then
    echo 'Digite o nome do arquivo para salvar (ex: joao, luigi, carlos, etc):'
    read nome_arquivo

    mkdir -p /home/luigi/modulo1/linux/resultado_calc
    caminho="/home/luigi/modulo1/linux/resultado_calc/historico_${nome_arquivo}.txt"

    echo "$num1 $operacao $num2 = $resultado" >> "$caminho"
    echo "Operação salva em: $caminho"

elif [ "$decisao" == "n" ]; then
     echo "sua decisão foi: $decisao!"
     exit 2

else
    echo "Opção invalida!"
    exit 3
fi
