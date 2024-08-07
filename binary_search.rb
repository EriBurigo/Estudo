# A busca binária é um algoritmo de busca usado para encontrar a posição de um valor alvo dentro de uma matriz ordenada . 
# Ele funciona dividindo repetidamente o intervalo de busca pela metade até que o valor alvo seja encontrado ou o intervalo esteja vazio.


def busca_binaria(arr, valor) # Define a função busca_binaria que aceita 2 argumentos: 'arr' (a lista de números) e 'valor' (o número que estamos procurando)
    inicio = 0 # Define o inicio da lista como o indice 0
        fim = arr.length - 1 # Define o fim da lista como ultimo indice (o tamanho da lista -1)

        while inicio <= fim # continua a procurar enquanto o índice inicial for menor ou igual ao índice final.
            meio = (inicio + fim) / 2 # Calcula o índice do meio da lista
            if arr[meio] == valor # Se o valor do meio da lista for igual ao valor que estamos procurando
                return meio # retorna o índice do meio pois encontramos o número
            elsif arr[meio] < valor # se o valor do meio for menor que o número que estamos procurando
                inicio = meio + 1 # Move o inicio para depois do meio da lista, descartando a metade da esquerda
                else # Se o valor do meio for maior que o número que estamos procurando
                    fim = meio - 1 # Move o fim para antes do meio descartando a metade da direita da lista
            end
        end
        nil # Se o número não for encontrado retornamos 'nil' (nulo), indicando que o número não está na lista
end

# Valores para teste
arr = [10, 20, 30, 40, 50]
valor_a_procurar = 30
resultado = busca_binaria(arr, valor_a_procurar)

if resultado
    puts "Número encontrado no índice #{resultado}"
else
    puts "Número não encontrado"
end