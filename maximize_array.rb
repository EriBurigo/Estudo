# Define o metodo
def maximize_sum(arr, k)
# ordena o array
    arr.sort!

    # Inicializa o índice para iterar pelo array.
    i = 0
# Loop principal: k > 0 -> Continua enquanto as negações forem maior que 0
# i < arr.length -> Continua enquanto o indice for menor que o tamanho do array
# arr[i] < 0 -> Verifica se o elemento atual é negativo
    while k > 0 && i < arr.length && arr[i] < 0
    end

end

# Dados para uso
arr = [-2, 5, -8, 0, 3, 1, -1]
k = 5
result = maximize_sum(arr, k)
puts "Após as negações(k), este é o melhor resultado da soma do array => #{result}"