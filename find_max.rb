# O problema de encontrar a soma máxima possível igual a três pilhas envolve três pilhas de diferentes alturas. 
# Cada pilha é representada por uma lista de números positivos, onde cada número é a altura de um cilindro.

# O objetivo é encontrar a altura máxima possível de todas as três pilhas iguais, removendo zero ou mais cilindros do topo de cada pilha

def max_equal_sum(stack1, stack2, stack3)
    # Calcular a altura total das pilhas
    sum1 = stack1.sum # Soma a primeira pilha
    sum2 = stack2.sum 
    sum3 = stack3.sum

    # Indices para percorrer a pilha
    index1 = 0
end