def busca_binaria(arr, valor) # Define a função busca_binaria que aceita 2 argumentos: 'arr' (a lista de números) e 'valor' (o número que estamos procurando)
    início = 0 # Define o inicio da lista como o indice 0
        fim = arr.length -1 # Define o fim da lista como ultimo indice (o tamanho da lista -1)

        while inicio <= fim # continua a procurar enquanto o índice inicial for menor ou igual ao índice final.
            meio = (inicio + fim) / 2 # Calcula o índice do meio da lista
            if arr[meio] == valor # Se o valor do meio da lista for igual ao valor que estamos procurando
                return meio # retorna o índice do meio pois encontramos o número
            elsif arr[meio] < valor # se o valor do meio for menor que o número que estamos procurando
                início = meio + 1 # Move o inicio para depois do meio da lista, descartando a metade da esquerda
            end
        end
end