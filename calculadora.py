print("Bem vindo a calculadora do luigi!!!!")

print("Selecione a operação desejada: ")
print("1 - Soma")
print("2 - Subtração")
print("3 - Multiplicação")
print("4 - Divisão")

operador = input("Digite o operador desejado: ")


num1 =float(input("Digite o primeiro número: "))
num2 =float(input("Digite o segundo número: "))

if  operador == "1":
    print(num1 + num2)
elif operador == "2":
    print(num1 - num2)
elif operador == "3":
    print(num1 * num2)
elif operador == "4":
    print(num1 / num2)
elif operador != "1" or "2" or "3" or "4":
    print("Operador inválido")