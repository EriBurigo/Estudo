# Este problema envolve maximizar a soma de um array após fazer até 𝐾 negações em seus elementos. 
# Uma negação significa mudar um número positivo para negativo ou vice-versa.


def maximize_sum(arr, k)
    arr.sort! # ordena o array
    i = 0 # Inicializa o índice para iterar pelo array.

        # Loop principal: k > 0 -> Continua enquanto as negações forem maior que 0 // i < arr.length -> Continua enquanto o indice for menor que o tamanho do array
        while k > 0 && i < arr.length && arr[i] < 0 # arr[i] < 0 -> Verifica se o elemento atual é negativo
            arr[i] = -arr[i] # negar o elemento
            k -= 1 # Diminui 'k' em 1
            i += 1 # Avança para o proximo elemento
        end

    # Se ainda tivermos um número de negações ímpar, invertemos o menor valor do array para maximizar a soma
    if k % 2 != 0
        arr.sort! # Reordenar o array para garantir que o menor valor esteja na primeira posição
        arr[0] = -arr[0] # Nega o menor valor
    end

    # Calcular e retornar a soma do array
    sum = arr.sum
end

# Dados para uso
arr = [-2, 5, -8, 0, 3, 1, -1]
k = 5
result = maximize_sum(arr, k)
puts "Após as negações(k) que são #{k}, este é o melhor resultado da soma do array => #{result}"