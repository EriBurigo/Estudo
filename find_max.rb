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
    index2 = 0
    index3 = 0

    # Se qualquer pilha estiver vazia, a altura máxima igual é zero
    if index1 == stack1.length || index2 == stack2.length || index3 == stack3.length
        return 0
      end

      # Se as alturas das três pilhas forem iguais, retorne essa altura
    if sum1 == sum2 && sum1 == sum3
      return sum1
    end

    if sum1 >= sum2 && sum1 >= sum3
      sum1 -= stack1[index1]  # Subtrai a altura do cilindro do topo da soma total da pilha 1
      index1 += 1  # Move o índice para o próximo cilindro da pilha 1

    elsif sum2 >= sum1 && sum2 >= sum3 # Se a segunda pilha for a mais alta ou empatada com as outras, remove o cilindro do topo
      
    end
end